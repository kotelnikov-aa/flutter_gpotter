import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';


class ShareScreen extends StatefulWidget {
   String text;
   String subject;
    ShareScreen({Key? key, required this.text, required this.subject}) : super(key: key);


  @override
  _ShareScreenState createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Share Plus Plugin Demo',
      home: Scaffold(

          body: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Text:',
                      hintText: 'Enter some text and/or link to share'
                    ),
                    maxLines: 2,
                    controller: TextEditingController()..text = widget.text,

                    onChanged: (String value) => setState(() {
                      widget.text = value;
                    }),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Subject:',
                      hintText: 'Enter subject to share (optional)',
                    ),
                    maxLines: 2,
                    controller: TextEditingController()..text = widget.subject,
                    onChanged: (String value) => setState(() {
                      widget.subject = value;
                    }),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 12.0)),

                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: widget.text.isEmpty
                            ? null
                            : () => _onShare(context),
                        child: const Text('Share'),
                      );
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }


  void _onShare(BuildContext context) async {
    // A builder is used to retrieve the context immediately
    // surrounding the ElevatedButton.
    //
    // The context's `findRenderObject` returns the first
    // RenderObject in its descendent tree when it's not
    // a RenderObjectWidget. The ElevatedButton's RenderObject
    // has its position and size after it's built.
    final box = context.findRenderObject() as RenderBox?;
      await Share.share(widget.text,
          subject: widget.subject,
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);

  }
/*
  void _onShareWithResult(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;
    ShareResult result;

      result = await Share.shareWithResult(widget.text,
          subject: widget.subject,
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Share result: ${result.status}"),
    ));
  }*/
}