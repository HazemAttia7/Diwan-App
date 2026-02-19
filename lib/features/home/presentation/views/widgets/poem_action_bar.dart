import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/reader/reader_controller.dart';
import 'package:poem_app/features/favorites/data/managers/favorites_refresh_notifier.dart';
import 'package:poem_app/features/home/data/models/poem_model.dart';
import 'package:poem_app/features/home/data/repos/home_repo_impl.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_save_button.dart';
import 'package:poem_app/features/home/presentation/views/widgets/play_button.dart';
import 'package:provider/provider.dart';

class PoemActionBar extends StatefulWidget {
  final Poem poem;
  const PoemActionBar({super.key, required this.poem});

  @override
  State<PoemActionBar> createState() => _PoemActionBarState();
}

class _PoemActionBarState extends State<PoemActionBar> {
  bool _isSaved = false;
  final _repo = HomeRepoImpl();

  @override
  void initState() {
    super.initState();
    _loadSavedState();
  }

  Future<void> _loadSavedState() async {
    final saved = await _repo.isPoemSaved(widget.poem.id);
    setState(() => _isSaved = saved);
  }

  Future<void> _toggleSave() async {
    if (_isSaved) {
      await _repo.removePoem(widget.poem);
    } else {
      await _repo.savePoem(widget.poem);
    }
    favoritesRefreshNotifier.value++;
    setState(() => _isSaved = !_isSaved);
  }

  @override
  Widget build(BuildContext context) {
    final readerController = context.watch<ReaderController>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.sp),
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 18.sp),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Theme.of(
                context,
              ).colorScheme.shadow.withValues(alpha: 0.07),
              blurRadius: 2.sp,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomSaveButton(
              size: 26.sp,
              isSaved: _isSaved,
              iconColor: _isSaved
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).textTheme.bodyLarge!.color,
              onTap: _toggleSave,
            ),
            // TODO : Implement TTS for a mp3 file in the assets/audio folder (Search for the implementation)
            PlayButton(verses: widget.poem.verses),
            // TODO : Share the poem
            CustomIconButton(
              icon: readerController.isPlaying
                  ? Icons.stop
                  : Icons.share_outlined,
              size: 26.sp,
              onTap: () {
                if (context.read<ReaderController>().isPlaying) {
                  context.read<ReaderController>().stop();
                  return;
                }
              },
              iconColor: readerController.isPlaying
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).textTheme.bodyLarge!.color,
            ),
          ],
        ),
      ),
    );
  }
}
