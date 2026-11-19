import 'package:material_ui/material_ui.dart';

import '../theme/app_colors.dart';

class ConfirmDialog extends StatefulWidget {
  const ConfirmDialog({
    super.key,
    required this.title,
    required this.message,
    this.confirmLabel = 'Konfirmasi',
    this.cancelLabel = 'Batal',
    this.isDestructive = false,
    this.requireReason = false,
    this.reasonHint = 'Masukkan alasan...',
  });

  final String title;
  final String message;
  final String confirmLabel;
  final String cancelLabel;
  final bool isDestructive;
  final bool requireReason;
  final String reasonHint;

  static Future<String?> show(
    BuildContext context, {
    required String title,
    required String message,
    String confirmLabel = 'Konfirmasi',
    String cancelLabel = 'Batal',
    bool isDestructive = false,
    bool requireReason = false,
    String reasonHint = 'Masukkan alasan...',
  }) {
    return showDialog<String>(
      context: context,
      builder: (context) => ConfirmDialog(
        title: title,
        message: message,
        confirmLabel: confirmLabel,
        cancelLabel: cancelLabel,
        isDestructive: isDestructive,
        requireReason: requireReason,
        reasonHint: reasonHint,
      ),
    );
  }

  @override
  State<ConfirmDialog> createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<ConfirmDialog> {
  late final TextEditingController _controller;
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onConfirm() {
    final reason = _controller.text.trim();
    if (widget.requireReason && reason.isEmpty) {
      setState(() {
        _errorText = 'Alasan wajib diisi';
      });
      return;
    }
    Navigator.of(context).pop(reason);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: AppColors.surface,
      title: Text(
        widget.title,
        style: const TextStyle(
          color: AppColors.ink,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.message,
              style: const TextStyle(color: AppColors.inkSoft),
            ),
            if (widget.requireReason) ...[
              const SizedBox(height: 16),
              TextField(
                controller: _controller,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: widget.reasonHint,
                  errorText: _errorText,
                ),
                onChanged: (_) {
                  if (_errorText != null) {
                    setState(() {
                      _errorText = null;
                    });
                  }
                },
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(null),
          child: Text(
            widget.cancelLabel,
            style: const TextStyle(color: AppColors.inkSoft),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                widget.isDestructive ? AppColors.error : AppColors.lilac500,
            minimumSize: const Size(88, 44),
          ),
          onPressed: _onConfirm,
          child: Text(widget.confirmLabel),
        ),
      ],
    );
  }
}
