import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../auth/providers/session_provider.dart';
import '../data/models/profile_response.dart';
import '../data/profile_repository.dart';

part 'profile_provider.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  FutureOr<ProfileResponse> build() {
    return ref.watch(profileRepositoryProvider).getProfile();
  }

  Future<void> updateProfile({String? name, XFile? avatar}) async {
    final repo = ref.read(profileRepositoryProvider);
    final updatedUser = await repo.updateProfile(name: name, avatar: avatar);

    // Update global session provider
    ref.read(sessionProvider.notifier).updateUser(updatedUser);

    // Refresh profile screen
    ref.invalidateSelf();
    await future;
  }
}
