import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/category_chip.dart';
import '../../data/models/restaurant_detail_model.dart';

class RestaurantInfoTab extends StatelessWidget {
  const RestaurantInfoTab({super.key, required this.detail});

  final RestaurantDetailModel detail;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (detail.description != null && detail.description!.isNotEmpty) ...[
          const Text(
            'Tentang Restoran',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.ink),
          ),
          const SizedBox(height: 8),
          Text(
            detail.description!,
            style: const TextStyle(fontSize: 14, color: AppColors.inkSoft, height: 1.5),
          ),
          const SizedBox(height: 20),
        ],

        // Categories
        if (detail.categories.isNotEmpty) ...[
          const Text(
            'Kategori',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.ink),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: detail.categories
                .map((c) => CategoryChip(label: c.name, iconUrl: c.iconUrl))
                .toList(),
          ),
          const SizedBox(height: 20),
        ],

        // Address
        const Text(
          'Alamat & Lokasi',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.ink),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.location_on_rounded, size: 20, color: AppColors.lilac500),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                detail.address,
                style: const TextStyle(fontSize: 14, color: AppColors.inkSoft),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Mini Map
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            height: 160,
            child: FlutterMap(
              options: MapOptions(
                initialCenter: LatLng(detail.lat, detail.lng),
                initialZoom: 15,
                interactionOptions: const InteractionOptions(
                  flags: InteractiveFlag.none,
                ),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.mamamia.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: LatLng(detail.lat, detail.lng),
                      width: 36,
                      height: 36,
                      child: const Icon(
                        Icons.location_on,
                        size: 36,
                        color: AppColors.lilac700,
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
        const Text(
          'Jam Operasional',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.ink),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.lilac200),
          ),
          child: Column(
            children: detail.openingHours.map((h) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      h.day,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.ink,
                      ),
                    ),
                    Text(
                      h.isClosed
                          ? 'Tutup'
                          : '${h.open ?? '-'} - ${h.close ?? '-'}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: h.isClosed ? AppColors.error : AppColors.inkSoft,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
