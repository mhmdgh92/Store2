import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';


class CarouselWithIndicatorDemo extends StatefulWidget {
  final List<String> imgList;

  const CarouselWithIndicatorDemo({Key? key, required this.imgList})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState(imgList);
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> imageSliders(List<String> imgList) {
    return (widget.imgList
        .map((item) => Image.network(item, fit: BoxFit.fill))
        .toList());
  }

  _CarouselWithIndicatorState(List<String> imgList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: imageSliders(widget.imgList),
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: appWidth * 0.02,
                height: appHeight * 0.0175,
                margin: EdgeInsets.symmetric(
                    vertical: appHeight * 0.005, horizontal: appWidth * 0.0125),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
