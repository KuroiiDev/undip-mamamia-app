import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/confirm_dialog.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/rating_stars.dart';
import '../../../core/widgets/section_header.dart';
import '../../../core/widgets/skeleton_box.dart';
import '../../auth/providers/session_provider.dart';
import '../data/models/profile_response.dart';
import '../providers/profile_provider.dart';
import 'widgets/edit_profile_sheet.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  void _showEditSheet(BuildContext context, ProfileResponse profile) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => EditProfileSheet(
        initialName: profile.user.name,
        initialAvatarUrl: profile.user.avatarUrl,
      ),
    );
  }

  Future<void> _logout(BuildContext context, WidgetRef ref) async {
    final confirmed = await ConfirmDialog.show(
      context,
      title: 'Keluar Akun',
      message: 'Apakah kamu yakin ingin keluar dari aplikasi Mamamia?',
      confirmLabel: 'Keluar',
      isDestructive: true,
    );

    if (confirmed != null) {
      await ref.read(sessionProvider.notifier).logout();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(profileProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: const Text(
          'Profil Saya',
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.ink),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded, color: AppColors.error),
            onPressed: () => _logout(context, ref),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(profileProvider);
          await ref.read(profileProvider.future);
        },
        color: AppColors.lilac500,
        child: profileAsync.when(
          loading: () => _buildSkeleton(),
          error: (err, _) => ErrorView(
            message: err.toString(),
            onRetry: () => ref.invalidate(profileProvider),
          ),
          data: (profile) => _buildContent(context, ref, profile),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    ProfileResponse profile,
  ) {
    final user = profile.user;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.lilac100,
                  child: user.avatarUrl != null
                      ? ClipOval(
                          child: AppNetworkImage(
                            imageUrl: user.avatarUrl,
                            width: 80,
                            height: 80,
                          ),
                        )
                      : const Icon(
                          Icons.person_rounded,
                          size: 44,
                          color: AppColors.lilac700,
                        ),
                ),
                const SizedBox(height: 12),
                Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.ink,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  user.email,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.inkSoft,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.lilac100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.rate_review_rounded,
                            size: 18,
                            color: AppColors.lilac700,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${profile.reviewCount} Ulasan Diberikan',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.lilac700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () => _showEditSheet(context, profile),
                    icon: const Icon(Icons.edit_rounded, size: 16),
                    label: const Text('Ubah Profil'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.lilac700,
                      side: const BorderSide(color: AppColors.lilac300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        const SectionHeader(title: 'Ulasan Saya'),
        const SizedBox(height: 8),
        if (profile.myReviews.isEmpty)
          const EmptyView(
            title: 'Belum ada ulasan',
            description: 'Kamu belum memberikan ulasan ke restoran mana pun.',
            icon: Icons.rate_review_outlined,
          )
        else
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: profile.myReviews.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final review = profile.myReviews[index];
              return Card(
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () =>
                      context.push('/restaurant/${review.restaurant.id}'),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: review.restaurant.coverUrl != null
                                  ? AppNetworkImage(
                                      imageUrl: review.restaurant.coverUrl,
                                      width: 44,
                                      height: 44,
                                    )
                                  : Container(
                                      width: 44,
                                      height: 44,
                                      color: AppColors.lilac100,
                                      child: const Icon(
                                        Icons.restaurant,
                                        color: AppColors.lilac700,
                                        size: 20,
                                      ),
                                    ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    review.restaurant.name,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.ink,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  if (review.createdLabel != null)
                                    Text(
                                      review.createdLabel!,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: AppColors.inkMuted,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            RatingStars(
                              rating: review.rating.toDouble(),
                              size: 14,
                            ),
                          ],
                        ),
                        if (review.comment != null &&
                            review.comment!.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Text(
                            review.comment!,
                            style: const TextStyle(
                              fontSize: 13,
                              color: AppColors.inkSoft,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
      ],
    );
  }

  Widget _buildSkeleton() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SkeletonBox(width: double.infinity, height: 200, borderRadius: BorderRadius.circular(20)),
        const SizedBox(height: 24),
        SkeletonBox(width: 120, height: 20, borderRadius: BorderRadius.circular(4)),
        const SizedBox(height: 12),
        SkeletonBox(width: double.infinity, height: 80, borderRadius: BorderRadius.circular(16)),
        const SizedBox(height: 12),
        SkeletonBox(width: double.infinity, height: 80, borderRadius: BorderRadius.circular(16)),
      ],
    );
  }
}
