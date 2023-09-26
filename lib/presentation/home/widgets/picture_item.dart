part of '../home_screen.dart';

class _PictureItem extends StatelessWidget {
  const _PictureItem();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Card(
      child: Row(
        children: [
          FlutterLogo(size: screenWidth / 4),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Esto será el título',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'Esto será el detalle',
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Fecha: Fecha',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Esto será el lugar',
                    style: TextStyle(
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
