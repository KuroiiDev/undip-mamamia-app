import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/category_chip.dart';
import '../../data/models/search_filter.dart';
import '../../providers/search_provider.dart';

class SearchFilterSheet extends ConsumerStatefulWidget {
  const SearchFilterSheet({
    super.key,
    required this.initialFilter,
    required this.onApply,
  });

  final SearchFilter initialFilter;
  final ValueChanged<SearchFilter> onApply;

  @override
  ConsumerState<SearchFilterSheet> createState() => _SearchFilterSheetState();
}

class _SearchFilterSheetState extends ConsumerState<SearchFilterSheet> {
  late List<String> _categoryIds;
  late int? _priceLevel;
  late double? _minRating;
  late bool _openNow;
  late String _sort;

  @override
  void initState() {
    super.initState();
    _categoryIds = List.from(widget.initialFilter.categoryIds);
    _priceLevel = widget.initialFilter.priceLevel;
    _minRating = widget.initialFilter.minRating;
    _openNow = widget.initialFilter.openNow;
    _sort = widget.initialFilter.sort;
  }

  void _reset() {
    setState(() {
      _categoryIds = [];
      _priceLevel = null;
      _minRating = null;
      _openNow = false;
      _sort = 'rating';
    });
  }

  @override
  Widget build(BuildContext context) {
    final categoriesAsync = ref.watch(searchCategoriesProvider);

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
                const Text(
                  'Filter Restoran',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.ink,
                  ),
                ),
                TextButton(
                  onPressed: _reset,
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: AppColors.lilac700),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Urutkan berdasarkan',
              style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.ink),
            ),
            const SizedBox(height: 8),
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(value: 'rating', label: Text('Rating Tertinggi')),
                ButtonSegment(value: 'nearest', label: Text('Terdekat')),
              ],
              selected: {_sort},
              onSelectionChanged: (set) => setState(() => _sort = set.first),
            ),
            const SizedBox(height: 20),
            const Text(
              'Kategori',
              style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.ink),
            ),
            const SizedBox(height: 8),
            categoriesAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (_, _) => const Text('Gagal memuat kategori'),
              data: (categories) => Wrap(
                spacing: 8,
                runSpacing: 8,
                children: categories.map((cat) {
                  final isSelected = _categoryIds.contains(cat.id);
                  return CategoryChip(
                    label: cat.name,
                    iconUrl: cat.iconUrl,
                    isSelected: isSelected,
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          _categoryIds.remove(cat.id);
                        } else {
                          _categoryIds.add(cat.id);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Kisaran Harga',
              style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.ink),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                for (final p in [1, 2, 3])
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(p == 1 ? 'Rp' : (p == 2 ? 'RpRp' : 'RpRpRp')),
                      selected: _priceLevel == p,
                      onSelected: (val) {
                        setState(() => _priceLevel = val ? p : null);
                      },
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Rating Minimal',
              style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.ink),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                for (final r in [3.0, 4.0, 4.5])
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text('★ $r+'),
                      selected: _minRating == r,
                      onSelected: (val) {
                        setState(() => _minRating = val ? r : null);
                      },
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Buka Sekarang',
                style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.ink),
              ),
              value: _openNow,
              onChanged: (val) => setState(() => _openNow = val),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: FilledButton(
                onPressed: () {
                  final newFilter = widget.initialFilter.copyWith(
                    categoryIds: _categoryIds,
                    priceLevel: _priceLevel,
                    minRating: _minRating,
                    openNow: _openNow,
                    sort: _sort,
                  );
                  widget.onApply(newFilter);
                  Navigator.of(context).pop();
                },
                child: const Text('Terapkan Filter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
