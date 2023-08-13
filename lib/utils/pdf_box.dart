import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notex/utils/constants.dart';

class PdfBox extends StatefulWidget {
  final snap;
  const PdfBox({
    super.key,
    required this.snap,
  });

  @override
  State<PdfBox> createState() => _PdfBoxState();
}

class _PdfBoxState extends State<PdfBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 223, 223, 223),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: Colors.black,
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.snap['subject'],
                style: GoogleFonts.manrope(
                    fontSize: 25, fontWeight: FontWeight.w600),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.snap['author'],
                style: GoogleFonts.manrope(
                    fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1.7)),
                    child: Center(
                      child: Text(
                        widget.snap['tags'],
                        style: GoogleFonts.manrope(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () => {},
                      child: Text(
                        "Open PDF",
                        style: GoogleFonts.manrope(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ))
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Semester ${widget.snap['sem']}',
                      style: GoogleFonts.manrope(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        style: const ButtonStyle(
                            iconSize: MaterialStatePropertyAll(20),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        child: SizedBox(width: 20.0,child: const FaIcon(FontAwesomeIcons.shareNodes)),
                        onPressed: () {},
                      ),
                      TextButton(
                        style: const ButtonStyle(
                            iconSize: MaterialStatePropertyAll(20),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        child: const FaIcon(FontAwesomeIcons.comment),
                        onPressed: () {},
                      ),
                      TextButton(
                        style: const ButtonStyle(
                            iconSize: MaterialStatePropertyAll(20),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        child: const FaIcon(FontAwesomeIcons.download),
                        onPressed: () {},
                      ),
                      TextButton(
                        child: Icon(Icons.thumb_up),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
