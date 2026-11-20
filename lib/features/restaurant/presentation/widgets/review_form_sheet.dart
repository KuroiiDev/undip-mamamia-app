import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/confirm_dialog.dart';
import '../../../../core/widgets/rating_stars.dart';
import '../../data/models/review_model.dart';
import '../../data/restaurant_repository.dart';
import '../../providers/restaurant_detail_provider.dart';

class ReviewFormSheet extends ConsumerStatefulWidget {
  const ReviewFormSheet({
    super.key,
    required this.restaurantId,
    this.existingReview,
  });

  final String restaurantId;
  final ReviewModel? existingReview;

  @override
  ConsumerState<ReviewFormSheet> createState() => _ReviewFormSheetState();
}

class _ReviewFormSheetState extends ConsumerState<ReviewFormSheet> {
  late int _rating;
  late TextEditingController _commentController;
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _rating = widget.existingReview?.rating ?? 5;
    _commentController =
        TextEditingController(text: widget.existingReview?.comment ?? '');
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final repo = ref.read(restaurantRepositoryProvider);
      final comment = _commentController.text.trim();
      await repo.upsertReview(
        widget.restaurantId,
        rating: _rating,
        comment: comment.isNotEmpty ? comment : null,
      );

      ref.invalidate(restaurantDetailProvider(widget.restaurantId));
      ref.invalidate(restaurantReviewsProvider(widget.restaurantId));

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
      title: 'Hapus Ulasan',
      message: 'Apakah kamu yakin ingin menghapus ulasanmu?',
      confirmLabel: 'Hapus',
      isDestructive: true,
    );

    if (confirmed == null) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final repo = ref.read(restaurantRepositoryProvider);
      await repo.deleteReview(widget.restaurantId);

      ref.invalidate(restaurantDetailProvider(widget.restaurantId));
      ref.invalidate(restaurantReviewsProvider(widget.restaurantId));

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
    final isEditing = widget.existingReview != null;

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
                Text(
                  isEditing ? 'Ubah Ulasan' : 'Tulis Ulasan',
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
            const Text(
              'Bagaimana pengalamanmu?',
              style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.ink),
            ),
            const SizedBox(height: 12),
            Center(
              child: RatingStars(
                rating: _rating.toDouble(),
                size: 36,
                onChanged: (val) => setState(() => _rating = val),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _commentController,
              maxLines: 4,
              maxLength: 1000,
              decoration: InputDecoration(
                hintText: 'Tulis komentar atau rekomendasi menu favoritmu di sini...',
                hintStyle: const TextStyle(color: AppColors.inkMuted, fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: AppColors.lilac200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: AppColors.lilac500, width: 1.5),
                ),
              ),
            ),
            if (_errorMessage != null) ...[
              const SizedBox(height: 8),
              Text(
                _errorMessage!,
                style: const TextStyle(color: AppColors.error, fontSize: 13),
              ),
            ],
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: FilledButton(
                onPressed: _isLoading ? null : _submit,
                child: _isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                      )
                    : Text(isEditing ? 'Perbarui Ulasan' : 'Kirim Ulasan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
