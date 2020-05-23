import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bubble/bubble.dart';
import 'package:cached_network_image/cached_network_image.dart';


class SimpleMessage extends StatelessWidget {
  SimpleMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: new CircleAvatar(
          child: new Image.asset("images/s.png"),
          backgroundColor: Colors.white,
        ),
      ),
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(this.name,
                style: new TextStyle(fontWeight: FontWeight.bold)),
            new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  shadowColor: Colors.blue,
                  elevation: 2,
                  alignment: Alignment.topLeft,
                  nip: BubbleNip.leftTop,
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                )),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(this.name, style: Theme.of(context).textTheme.subhead),
            new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  shadowColor: Colors.green,
                  elevation: 2,
                  alignment: Alignment.topRight,
                  nip: BubbleNip.rightTop,
                  color: Color.fromARGB(255, 225, 255, 199),
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                )),
          ],
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: new CircleAvatar(
          radius: 30,
        //  backgroundImage: CachedNetworkImageProvider(),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
