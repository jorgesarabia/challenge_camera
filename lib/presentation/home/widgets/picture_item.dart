part of '../home_screen.dart';

class _PictureItem extends StatelessWidget {
  const _PictureItem({required this.savedPicture});

  final SavedPicture savedPicture;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Card(
      child: Row(
        children: [
          SizedBox(
            width: screenWidth / 4,
            child: CachedNetworkImage(
              imageUrl: savedPicture.imgUrl ?? 'No Url',
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(value: downloadProgress.progress),
                  ),
                );
              },
              errorWidget: (context, url, error) => const FlutterLogo(),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                savedPicture.title ?? 'No title',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                savedPicture.description ?? 'No description',
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    savedPicture.takedOn ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 10),
                  if (savedPicture.place != null)
                    Text(
                      'at ${savedPicture.place!}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
