import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[700],
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            'LEADERBOARD',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Text(
                            'DINE PRÆSTATIONER',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 53.0,
                        backgroundColor: Colors.orange,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                            'https://www.healthykids.org/_img2017/kid07.jpg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14.0,
                    ),
                    Text(
                      '\u{1F3C6} 3/6 Præstationsevne',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: <Widget>[],
                    ),
                  ],
                ),
              ),
              PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: '\u{1F451}',
                    ),
                    Tab(
                      text: '\u{1F3C6}',
                    ),
                  ], // list of tabs
                ),
              ),
              //TabBarView(children: [ImageList(),])
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.orange[300],
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0,
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.yellow,
                                                        child: Text(
                                                          '1',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ),
                                                      SizedBox(width: 8.0),
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.orange,
                                                        child: CircleAvatar(
                                                          backgroundImage:
                                                              NetworkImage(
                                                            'https://www.healthykids.org/_img2017/kid07.jpg',
                                                          ),
                                                          radius: 20,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Noobmaster69',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          Text(
                                                            '19.231',
                                                            style: TextStyle(
                                                                color: Colors
                                                                        .yellow[
                                                                    700],
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0,
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.grey,
                                                        child: Text(
                                                          '2',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ),
                                                      SizedBox(width: 8.0),
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.orange,
                                                        child: CircleAvatar(
                                                          backgroundImage:
                                                              NetworkImage(
                                                            'https://cdn.discordapp.com/attachments/724625186111881236/724999291072020551/unknown.png',
                                                          ),
                                                          radius: 20,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Gamevial',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          Text(
                                                            '18.628',
                                                            style: TextStyle(
                                                                color: Colors
                                                                        .yellow[
                                                                    700],
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0,
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.brown[300],
                                                        child: Text(
                                                          '3',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ),
                                                      SizedBox(width: 8.0),
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.orange,
                                                        child: CircleAvatar(
                                                          backgroundImage:
                                                              NetworkImage(
                                                            'https://scontent-cph2-1.xx.fbcdn.net/v/t1.0-9/69136412_2491839134242790_7630161056639221760_n.jpg?_nc_cat=106&_nc_sid=09cbfe&_nc_ohc=3wJ-v9nCIYYAX8RUf5Y&_nc_ht=scontent-cph2-1.xx&oh=8a75f969a6b96aa5aef2391fe1ba1f29&oe=5F1621A6',
                                                          ),
                                                          radius: 20,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'RazzDencker',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          Text(
                                                            '17.931',
                                                            style: TextStyle(
                                                                color: Colors
                                                                        .yellow[
                                                                    700],
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0,
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        child: Text(
                                                          '4',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey[700],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ),
                                                      SizedBox(width: 8.0),
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.orange,
                                                        child: CircleAvatar(
                                                          backgroundImage:
                                                              NetworkImage(
                                                            'https://penntoday.upenn.edu/sites/default/files/2020-05/teens-social-distance-teaser.jpg',
                                                          ),
                                                          radius: 20,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'HytroN',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Colors
                                                                  .grey[700],
                                                            ),
                                                          ),
                                                          Text(
                                                            '14.171',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .yellow[700],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 5.0,
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 15.0,
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        child: Text(
                                                          '5',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .grey[700],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ),
                                                      SizedBox(width: 8.0),
                                                      CircleAvatar(
                                                        radius: 22.0,
                                                        backgroundColor:
                                                            Colors.orange,
                                                        child: CircleAvatar(
                                                          backgroundImage:
                                                              NetworkImage(
                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTkkNRUrDuS8BYKmUXX-ML6cK5BYs5gepatqwITDEqDmrCBD2yW&usqp=CAU',
                                                          ),
                                                          radius: 20,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Pernille9',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          Text(
                                                            '12.127',
                                                            style: TextStyle(
                                                                color: Colors
                                                                        .yellow[
                                                                    700],
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.orange[300],
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              'images/trophy.png',
                                                            ),
                                                          ),
                                                        ),
                                                        width: 80.0,
                                                        height: 80.0,
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Udfør 100 øvelser',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          SizedBox(
                                                            height: 6.0,
                                                          ),
                                                          LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                160,
                                                            animation: true,
                                                            lineHeight: 15.0,
                                                            animationDuration:
                                                                2500,
                                                            percent: 0.2,
                                                            center: Text(
                                                              "20.0%",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                Colors.orange,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              'images/yoga.png',
                                                            ),
                                                          ),
                                                        ),
                                                        width: 80.0,
                                                        height: 80.0,
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Udfør 10 armbøjninger',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          SizedBox(
                                                            height: 6.0,
                                                          ),
                                                          LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                160,
                                                            animation: true,
                                                            lineHeight: 15.0,
                                                            animationDuration:
                                                                1500,
                                                            percent: 1.0,
                                                            center: Text(
                                                              "100.0%",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                Colors.orange,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              'images/fist-bump.png',
                                                            ),
                                                          ),
                                                        ),
                                                        width: 80.0,
                                                        height: 80.0,
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Føj en person til din venneliste',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          SizedBox(
                                                            height: 6.0,
                                                          ),
                                                          LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                160,
                                                            animation: true,
                                                            lineHeight: 15.0,
                                                            animationDuration:
                                                                2500,
                                                            percent: 1.0,
                                                            center: Text(
                                                              "100.0%",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                Colors.orange,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              'images/shoes.png',
                                                            ),
                                                          ),
                                                        ),
                                                        width: 80.0,
                                                        height: 80.0,
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Løb 10 kilometer',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          SizedBox(
                                                            height: 6.0,
                                                          ),
                                                          LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                160,
                                                            animation: true,
                                                            lineHeight: 15.0,
                                                            animationDuration:
                                                                2500,
                                                            percent: 0.7,
                                                            center: Text(
                                                              "70.0%",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                Colors.orange,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              'images/workout.png',
                                                            ),
                                                          ),
                                                        ),
                                                        width: 80.0,
                                                        height: 80.0,
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Udfør 25 mavebøjninger',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          SizedBox(
                                                            height: 6.0,
                                                          ),
                                                          LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                160,
                                                            animation: true,
                                                            lineHeight: 15.0,
                                                            animationDuration:
                                                                2500,
                                                            percent: 1.0,
                                                            center: Text(
                                                              "100.0%",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                Colors.orange,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 10),
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0.0),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 25),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              'images/trophy.png',
                                                            ),
                                                          ),
                                                        ),
                                                        width: 80.0,
                                                        height: 80.0,
                                                      ),
                                                      SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            'Udfør 250 øvelser',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .grey[700]),
                                                          ),
                                                          SizedBox(
                                                            height: 6.0,
                                                          ),
                                                          LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                160,
                                                            animation: true,
                                                            lineHeight: 15.0,
                                                            animationDuration:
                                                                2500,
                                                            percent: 0.08,
                                                            center: Text(
                                                              "8.0%",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                Colors.orange,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
