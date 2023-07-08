import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:login_page_tutorial/components/toolbar.dart';
import 'package:login_page_tutorial/config/app_icons.dart';
import 'package:login_page_tutorial/config/app_strings.dart';
import 'package:login_page_tutorial/constants/app_colors.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ToolBar(title: AppStrings.nearby),
      body: FlutterMap(
        options: MapOptions(
          center: const LatLng(42.882004, 74.582748),
          zoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 100,
                height: 50,
                point: const LatLng(42.882004, 74.582748),
                builder: (context) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: const Text(
                          'Username',
                          style: TextStyle(
                            color: AppColors.black,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        AppIcons.icLocation,
                        colorFilter: const ColorFilter.mode(
                            AppColors.black, BlendMode.srcIn),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
