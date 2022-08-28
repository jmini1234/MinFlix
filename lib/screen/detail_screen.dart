import 'package:flutter/material.dart';
import 'package:myapp/model/model_movie.dart';
import 'dart:ui';

class DeatailScreen extends StatefulWidget {
  //const DeatailScreen({super.key});

  final Movie movie;
  // 이거안하면 ... carousel dart에서 오류남 왜 ?!?!
  const DeatailScreen({Key? key, required this.movie}) : super(key: key);
  @override
  State<DeatailScreen> createState() => _DeatailScreenState();
}

class _DeatailScreenState extends State<DeatailScreen> {
  bool like = false;
  @override
  void initState() {
    super.initState();
    // widget이 뭐지 !?
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/' + widget.movie.poster),
                        fit: BoxFit.cover)),
                child: ClipRect(
                    child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(0.1),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                            child: Image.asset('images/' + widget.movie.poster),
                            height: 300,
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              '99% 일치 2019 15+ 시즌 1개',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              widget.movie.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(3),
                            child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red)),
                              onPressed: () {},
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.play_arrow, color: Colors.white),
                                    Text(
                                      '재생',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ]),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(widget.movie.toString()),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Text('출연 : 현빈, 손예진, 서지혜 \n제작자: 이정호, 박지은',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ),
              Positioned(
                  //닫기 버튼이 생김
                  child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ))
            ]),
            Container(
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            like ? Icon(Icons.check) : Icon(Icons.add),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              '내가 찜한 콘텐츠',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            )
                          ],
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Container(
                        child: Column(
                      children: [
                        Icon(Icons.thumb_up),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          '평가',
                          style: TextStyle(fontSize: 11, color: Colors.white60),
                        )
                      ],
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Container(
                        child: Column(
                      children: [
                        Icon(Icons.share),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          '공유',
                          style: TextStyle(fontSize: 11, color: Colors.white60),
                        )
                      ],
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget makeMenuButton() {
  return Container();
}
