import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_network_image.dart';
import '../../../../core/widgets/confirm_dialog.dart';
import '../../data/models/merchant_menu_item_model.dart';
import '../../providers/merchant_menus_provider.dart';

class MenuFormSheet extends ConsumerStatefulWidget {
  const MenuFormSheet({super.key, this.existingItem});

  final MerchantMenuItemModel? existingItem;

  @override
  ConsumerState<MenuFormSheet> createState() => _MenuFormSheetState();
}

class _MenuFormSheetState extends ConsumerState<MenuFormSheet> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _priceController;
  late TextEditingController _groupController;
  late TextEditingController _descController;
  late bool _isAvailable;

  XFile? _photo;
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.existingItem?.name ?? '');
    _priceController =
        TextEditingController(text: widget.existingItem?.price.toString() ?? '');
    _groupController =
        TextEditingController(text: widget.existingItem?.groupName ?? 'Makanan');
    _descController =
        TextEditingController(text: widget.existingItem?.description ?? '');
    _isAvailable = widget.existingItem?.isAvailable ?? true;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _groupController.dispose();
    _descController.dispose();
    super.dispose();
  }

  Future<void> _pickPhoto() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 800,
      maxHeight: 800,
      imageQuality: 85,
    );
    if (picked != null) {
      setState(() => _photo = picked);
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final price = int.parse(_priceController.text.trim());

      if (widget.existingItem == null) {
        await ref.read(merchantMenusProvider.notifier).createMenu(
              groupName: _groupController.text.trim(),
              name: _nameController.text.trim(),
              description: _descController.text.trim().isNotEmpty
                  ? _descController.text.trim()
                  : null,
              price: price,
              isAvailable: _isAvailable,
              photo: _photo,
            );
      } else {
        await ref.read(merchantMenusProvider.notifier).updateMenu(
              id: widget.existingItem!.id,
              groupName: _groupController.text.trim(),
              name: _nameController.text.trim(),
              description: _descController.text.trim().isNotEmpty
                  ? _descController.text.trim()
                  : null,
              price: price,
              isAvailable: _isAvailable,
              photo: _photo,
            );
      }

      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = e.toString();
      });
    }
  }

  Future<void> _delete() async {
    final confirmed = await ConfirmDialog.show(
      context,
      title: 'Hapus Menu',
      message: 'Apakah kamu yakin ingin menghapus menu ini?',
      confirmLabel: 'Hapus',
      isDestructive: true,
    );

    if (confirmed == null) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      await ref.read(merchantMenusProvider.notifier).deleteMenu(widget.existingItem!.id);
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.existingItem != null;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.only(
        top: 16,
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppColors.lilac200,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isEditing ? 'Ubah Menu' : 'Tambah Menu Baru',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.ink,
                    ),
                  ),
                  if (isEditing)
                    IconButton(
                      icon: const Icon(Icons.delete_outline_rounded, color: AppColors.error),
                      onPressed: _isLoading ? null : _delete,
                    ),
                ],
              ),
              const SizedBox(height: 16),

              // Photo Picker
              Center(
                child: GestureDetector(
                  onTap: _pickPhoto,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColors.lilac100,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.lilac300),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: _photo != null
                        ? Image.file(
                            File(_photo!.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : (widget.existingItem?.photoUrl != null
                            ? AppNetworkImage(
                                imageUrl: widget.existingItem!.photoUrl,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add_a_photo_rounded, color: AppColors.lilac700),
                                  SizedBox(height: 4),
                                  Text('Foto Menu', style: TextStyle(fontSize: 11, color: AppColors.lilac700)),
                                ],
                              )),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Name
              const Text('Nama Menu', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              TextFormField(
                controller: _nameController,
                validator: (v) => v == null || v.trim().isEmpty ? 'Nama menu wajib diisi' : null,
                decoration: const InputDecoration(hintText: 'Contoh: Es Teh Manis'),
              ),
              const SizedBox(height: 12),

              // Group
              const Text('Kategori Menu (Kelompok)', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              TextFormField(
                controller: _groupController,
                validator: (v) => v == null || v.trim().isEmpty ? 'Kelompok wajib diisi' : null,
                decoration: const InputDecoration(hintText: 'Contoh: Makanan / Minuman / Camilan'),
              ),
              const SizedBox(height: 12),

              // Price
              const Text('Harga (Rp)', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              TextFormField(
                controller: _priceController,
                keyboardType: TextInputType.number,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Harga wajib diisi';
                  if (int.tryParse(v.trim()) == null) return 'Harga harus berupa angka';
                  return null;
                },
                decoration: const InputDecoration(hintText: 'Contoh: 15000'),
              ),
              const SizedBox(height: 12),

              // Description
              const Text('Deskripsi', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              TextFormField(
                controller: _descController,
                maxLines: 2,
                decoration: const InputDecoration(hintText: 'Deskripsi singkat hidangan ini...'),
              ),
              const SizedBox(height: 12),

              // Available switch
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Menu Tersedia', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('Nonaktifkan jika porsi hari ini habis', style: TextStyle(fontSize: 12)),
                value: _isAvailable,
                onChanged: (val) => setState(() => _isAvailable = val),
              ),
              const SizedBox(height: 16),

              if (_errorMessage != null) ...[
                Text(
                  _errorMessage!,
                  style: const TextStyle(color: AppColors.error, fontSize: 13),
                ),
                const SizedBox(height: 12),
              ],

              SizedBox(
                width: double.infinity,
                height: 48,
                child: FilledButton(
                  onPressed: _isLoading ? null : _save,
                  child: _isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                        )
                      : Text(isEditing ? 'Simpan Perubahan' : 'Tambah Menu'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
