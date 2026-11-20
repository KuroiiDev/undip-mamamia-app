import 'dart:io';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/providers/user_location_provider.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/category_chip.dart';
import '../../../core/widgets/error_view.dart';
import '../../search/providers/search_provider.dart';
import '../data/models/merchant_store_model.dart';
import '../providers/merchant_store_provider.dart';

class MerchantStoreScreen extends ConsumerStatefulWidget {
  const MerchantStoreScreen({super.key});

  @override
  ConsumerState<MerchantStoreScreen> createState() =>
      _MerchantStoreScreenState();
}

class _MerchantStoreScreenState extends ConsumerState<MerchantStoreScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _descController;
  late TextEditingController _addressController;
  late TextEditingController _phoneController;

  int _priceLevel = 1;
  List<String> _selectedCategoryIds = [];
  XFile? _coverImage;
  LatLng _selectedLocation = const LatLng(-6.9932, 110.4203);
  final MapController _mapController = MapController();

  // 7 days opening hours
  late List<MerchantOpeningHourInput> _openingHours;

  bool _isSaving = false;
  String? _errorMessage;
  bool _initialized = false;

  final _dayNames = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _descController = TextEditingController();
    _addressController = TextEditingController();
    _phoneController = TextEditingController();

    _openingHours = List.generate(7, (i) {
      return MerchantOpeningHourInput(
        dayOfWeek: i,
        day: _dayNames[i],
        openTime: '08:00',
        closeTime: '21:00',
        isClosed: i == 0, // default Sunday closed
      );
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _populateExistingStore(MerchantStoreModel store) {
    if (_initialized) return;
    _initialized = true;

    _nameController.text = store.name;
    _descController.text = store.description ?? '';
    _addressController.text = store.address;
    _phoneController.text = store.phone ?? '';
    _priceLevel = store.priceLevel;
    _selectedLocation = LatLng(store.lat, store.lng);
    _selectedCategoryIds = store.categories.map((c) => c.id).toList();

    if (store.openingHours.isNotEmpty) {
      _openingHours = List.generate(7, (i) {
        final existing = store.openingHours.where((h) => h.dayOfWeek == i).firstOrNull;
        if (existing != null) {
          return existing.copyWith(day: _dayNames[i]);
        }
        return MerchantOpeningHourInput(
          dayOfWeek: i,
          day: _dayNames[i],
          openTime: '08:00',
          closeTime: '21:00',
          isClosed: false,
        );
      });
    }
  }

  Future<void> _pickCoverImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1200,
      maxHeight: 800,
      imageQuality: 85,
    );
    if (picked != null) {
      setState(() => _coverImage = picked);
    }
  }

  Future<void> _useCurrentLocation() async {
    final location = await ref.read(userLocationProvider.future);
    if (location != null) {
      final newPos = LatLng(location.lat, location.lng);
      setState(() => _selectedLocation = newPos);
      _mapController.move(newPos, 15);
    }
  }

  Future<void> _save(MerchantStoreModel? existingStore) async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedCategoryIds.isEmpty) {
      setState(() => _errorMessage = 'Pilih minimal satu kategori toko');
      return;
    }

    setState(() {
      _isSaving = true;
      _errorMessage = null;
    });

    try {
      if (existingStore == null) {
        await ref.read(merchantStoreProvider.notifier).createStore(
              name: _nameController.text.trim(),
              description: _descController.text.trim().isNotEmpty
                  ? _descController.text.trim()
                  : null,
              address: _addressController.text.trim(),
              phone: _phoneController.text.trim().isNotEmpty
                  ? _phoneController.text.trim()
                  : null,
              lat: _selectedLocation.latitude,
              lng: _selectedLocation.longitude,
              priceLevel: _priceLevel,
              categoryIds: _selectedCategoryIds,
              openingHours: _openingHours,
              cover: _coverImage,
            );
      } else {
        await ref.read(merchantStoreProvider.notifier).updateStore(
              name: _nameController.text.trim(),
              description: _descController.text.trim().isNotEmpty
                  ? _descController.text.trim()
                  : null,
              address: _addressController.text.trim(),
              phone: _phoneController.text.trim().isNotEmpty
                  ? _phoneController.text.trim()
                  : null,
              lat: _selectedLocation.latitude,
              lng: _selectedLocation.longitude,
              priceLevel: _priceLevel,
              categoryIds: _selectedCategoryIds,
              openingHours: _openingHours,
              cover: _coverImage,
            );
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Data toko berhasil disimpan!')),
        );
      }
    } catch (e) {
      setState(() => _errorMessage = e.toString());
    } finally {
      if (mounted) {
        setState(() => _isSaving = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final storeAsync = ref.watch(merchantStoreProvider);
    final categoriesAsync = ref.watch(searchCategoriesProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: const Text(
          'Kelola Toko',
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.ink),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: storeAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: err.toString(),
          onRetry: () => ref.invalidate(merchantStoreProvider),
        ),
        data: (store) {
          if (store != null) {
            _populateExistingStore(store);
          }

          return Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Cover photo picker
                GestureDetector(
                  onTap: _pickCoverImage,
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: AppColors.lilac100,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.lilac300),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: _coverImage != null
                        ? Image.file(
                            File(_coverImage!.path),
                            fit: BoxFit.cover,
                            width: double.infinity,
                          )
                        : (store?.coverUrl != null
                            ? AppNetworkImage(
                                imageUrl: store!.coverUrl,
                                fit: BoxFit.cover,
                              )
                            : Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.add_a_photo_rounded,
                                      size: 36,
                                      color: AppColors.lilac700,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Upload Foto Sampul Toko',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.lilac700,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                  ),
                ),
                const SizedBox(height: 20),

                // Name
                const Text('Nama Toko', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _nameController,
                  validator: (v) =>
                      v == null || v.trim().isEmpty ? 'Nama toko wajib diisi' : null,
                  decoration: const InputDecoration(hintText: 'Contoh: Warung Bu Tini'),
                ),
                const SizedBox(height: 16),

                // Description
                const Text('Deskripsi Singkat', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _descController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    hintText: 'Jelaskan hidangan spesial dan suasana tokomu...',
                  ),
                ),
                const SizedBox(height: 16),

                // Address
                const Text('Alamat Lengkap', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _addressController,
                  validator: (v) =>
                      v == null || v.trim().isEmpty ? 'Alamat wajib diisi' : null,
                  decoration: const InputDecoration(
                    hintText: 'Jl. Prof. Soedarto No. 1, Tembalang',
                  ),
                ),
                const SizedBox(height: 16),

                // Phone
                const Text('Nomor Telepon / WhatsApp', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(hintText: '08123456789'),
                ),
                const SizedBox(height: 20),

                // Price Level
                const Text('Kisaran Harga', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    for (final p in [1, 2, 3])
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(p == 1 ? 'Rp (Murah)' : (p == 2 ? 'RpRp (Sedang)' : 'RpRpRp (Premium)')),
                          selected: _priceLevel == p,
                          onSelected: (_) => setState(() => _priceLevel = p),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 20),

                // Categories
                const Text('Kategori Toko', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                categoriesAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, _) => const Text('Gagal memuat kategori'),
                  data: (categories) => Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: categories.map((cat) {
                      final isSelected = _selectedCategoryIds.contains(cat.id);
                      return CategoryChip(
                        label: cat.name,
                        iconUrl: cat.iconUrl,
                        isSelected: isSelected,
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              _selectedCategoryIds.remove(cat.id);
                            } else {
                              _selectedCategoryIds.add(cat.id);
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 24),

                // Map Pin
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Pin Lokasi Toko', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextButton.icon(
                      onPressed: _useCurrentLocation,
                      icon: const Icon(Icons.my_location_rounded, size: 16),
                      label: const Text('Lokasi Saya', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: SizedBox(
                    height: 200,
                    child: FlutterMap(
                      mapController: _mapController,
                      options: MapOptions(
                        initialCenter: _selectedLocation,
                        initialZoom: 15,
                        onTap: (_, latLng) {
                          setState(() => _selectedLocation = latLng);
                        },
                      ),
                      children: [
                        TileLayer(
                          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.mamamia.app',
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: _selectedLocation,
                              width: 36,
                              height: 36,
                              child: const Icon(
                                Icons.location_on,
                                size: 36,
                                color: AppColors.error,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Opening Hours
                const Text('Jam Operasional', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: List.generate(_openingHours.length, (idx) {
                        final h = _openingHours[idx];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 70,
                                child: Text(
                                  _dayNames[h.dayOfWeek],
                                  style: const TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Switch(
                                value: !h.isClosed,
                                onChanged: (isOpen) {
                                  setState(() {
                                    _openingHours[idx] = h.copyWith(isClosed: !isOpen);
                                  });
                                },
                              ),
                              const SizedBox(width: 8),
                              if (!h.isClosed) ...[
                                Expanded(
                                  child: TextFormField(
                                    initialValue: h.openTime ?? '08:00',
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      hintText: '08:00',
                                    ),
                                    onChanged: (val) {
                                      _openingHours[idx] = h.copyWith(openTime: val);
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text('-'),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    initialValue: h.closeTime ?? '21:00',
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      hintText: '21:00',
                                    ),
                                    onChanged: (val) {
                                      _openingHours[idx] = h.copyWith(closeTime: val);
                                    },
                                  ),
                                ),
                              ] else ...[
                                const Expanded(
                                  child: Text('Tutup', style: TextStyle(color: AppColors.error)),
                                ),
                              ],
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                if (_errorMessage != null) ...[
                  Text(
                    _errorMessage!,
                    style: const TextStyle(color: AppColors.error, fontSize: 13),
                  ),
                  const SizedBox(height: 12),
                ],

                // Save button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FilledButton(
                    onPressed: _isSaving ? null : () => _save(store),
                    child: _isSaving
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                          )
                        : Text(store == null ? 'Daftarkan Toko' : 'Simpan Perubahan Toko'),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          );
        },
      ),
    );
  }
}
