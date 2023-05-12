import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  Project projectData;
  ProjectWidget({Key? key, required this.projectData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Card(
        color: Color.fromRGBO(255, 255, 255, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                children: [
                  Icon(
                    Icons.build,
                    color: kPrimaryColor,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    projectData.name,
                    style: kSectionTitleText,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                projectData.description,
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
            const Spacer(),
            const Divider(),
            Align(
              alignment: Alignment.bottomRight,
              child: Flexible(
                child: ElevatedButton(
                  onPressed: () async {
                    //Launch project on GitHub
                    final Uri url = Uri.parse(projectData.link);
                    await launchUrl(url);
                  },
                  child: Text(
                    "View Project",
                    style: kSubTitleText.copyWith(
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
