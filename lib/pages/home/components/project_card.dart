import 'package:flutter/material.dart';
import 'package:my_portfilio/models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.projects, required this.press})
      : super(key: key);

  final Projects projects;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 350,
        width: MediaQuery.of(context).size.width / 1.3 > 350
            ? 350
            : MediaQuery.of(context).size.width / 1.3,
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.only(
            left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                offset: const Offset(5, 15),
                blurRadius: 15,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  projects.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w300),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 6.0,
                  ),
                  child: Text(
                    projects.year,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  projects.img,
                  height: 210,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              projects.info == null ? "" : "${projects.info}",
              maxLines: 2,
              style: const TextStyle(
                fontSize: 14,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
