import 'package:flutter/material.dart';

void main() =>  runApp(MaterialApp(
  home: Home(),
));



class Home extends StatelessWidget {
  String _userEmail = '';
  String _password = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome back",
          style: TextStyle(
            fontSize: 30.0,
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
      body: ListView(
        children: <Widget>[

          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(12),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.orangeAccent),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.facebook),
                label: Text(
                  "CONTINUE WITH FACEBOOK",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.5,
                  ),
                ),
              ),

            ),
          ),

          Container(
            alignment: Alignment.topCenter,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.orangeAccent),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                    Icons.g_mobiledata_outlined, size: 32, color: Colors.red),
                label: Text(
                  "CONTINUE WITH GOOGLE",
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ),

          Divider(
            color: Colors.grey[300],
            height: 50,
            indent: 30,
            endIndent: 30,
            thickness: 2.50,
          ),

          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.all(15),child: TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your email address';
              }
              // Check if the entered email has the right format
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              // Return null if the entered email is valid
              return null;
            },
            onChanged: (value) => _userEmail = value,
          ),
          ),


          SizedBox(height: 20),
         Padding(
             padding: EdgeInsets.all(15),child: TextFormField(
           decoration:
           const InputDecoration(labelText: 'Password'),
           obscureText: true,
           validator: (value) {
             if (value == null || value.trim().isEmpty) {
               return 'This field is required';
             }
             if (value.trim().length < 8) {
               return 'Password must be at least 8 characters in length';
             }
             // Return null if the entered password is valid
             return null;
           },
           onChanged: (value) => _password = value,
         ),
         ),



        Row(
          children: [
SizedBox(width: 300,height: 100),
            Text('Forgot password',style: TextStyle(
              fontWeight: FontWeight.bold,
                color: Colors.blue[900]),)
          ],
        ),

          Container(
            child: ElevatedButton(
              onPressed:() {
                Navigator.push( context, MaterialPageRoute(builder: (context) => gnews(),)
                );
              },
              style: ElevatedButton.styleFrom(

                minimumSize: Size(327,50),
                primary: Colors.blue[900],
                elevation: 0,
              ),
              child: Text("LOGIN"),

            )
          ),
          Row(
            children: [
              SizedBox(width: 20,height: 50),
              Text('Need an account? sign up',style: TextStyle(
                decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500]),),

            ],
          ),
        ],

      ),
    );
  }

}

class gnews extends StatelessWidget {
  const gnews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/gnewslogo.png"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.grain),
            color: Colors.grey,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(90,0),),
            onPressed: () {},
            child: Text("Sign In", style: TextStyle(fontSize: 20),),
          ),

        ],

        leading: IconButton(
          onPressed: () {},
          icon: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {  },),
        ),
      ),

      body: ListView(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://th.bing.com/th/id/R.389bb2efed116e13536cb1b854d0eca2?rik=JDU1VlOxWSOIkA&riu=http%3a%2f%2fthewowstyle.com%2fwp-content%2fuploads%2f2015%2f01%2fFree-Wallpaper-Nature-Scenes.jpg&ehk=Xcw64uT9IspURIdu%2bOLlFZdLsoXQb0ePcTKFm%2bTRvpQ%3d&risl=&pid=ImgRaw&r=0",),
                fit: BoxFit.fill,
              ),
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            height: 250,
            width: 370,
          ),

          Container(
            alignment: Alignment.topLeft,

            margin: EdgeInsets.symmetric(horizontal: 40),
            decoration:
            BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 32,
            //width: 150,
            child: Text("Hai,",
              style: TextStyle(
                fontSize: 23.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          Container(
            alignment: Alignment.topLeft,

            margin: EdgeInsets.symmetric(horizontal: 40),
            decoration:
            BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20),
            ),
            //height: 110,
            //width: 150,
            child: Text("The environment refers to all living and non-living things on Earth and the interactions between them......................",
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.grey[600],
              ),
            ),
          ),


          Container(
            height: 180,
            width: 370,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      child: Column(
                        children: <Widget> [
                          Row(
                            children: [

                              Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),),
                              Icon(Icons.play_circle, size: 25,color: Colors.redAccent,),
                              Text(
                                " YouTube",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                              Text(
                                " \nYouTube is a social media platform that allows users\n"
                                    "to upload, share, and watch videos. It has become a\n"
                                    "major source of entertainment, education, and........ \n",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),


                        ],
                      ),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(10),
                      decoration:
                      BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 180,
                      width: 370,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      child: Column(
                        children: <Widget> [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),),
                              Icon(Icons.tv_outlined, size: 25,color: Colors.green,),
                              Text(
                                " Entertainment",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.green,
                                ),
                              ),


                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                              Text(
                                " \nIt includes various forms such as movies, television\n"
                                    "shows, music,sports, games, and live performances. \n"
                                    "Entertainment is an important aspect of human life..",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),


                        ],
                      ),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(10),
                      decoration:
                      BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 180,
                      width: 370,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      child: Column(
                        children: <Widget> [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),),
                              Icon(Icons.stars, size: 25,color: Colors.red,),
                              Text(
                                " Star Sports",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                              Text(
                                " \nStar Sports is a sports broadcasting network owned\n"
                                    "by Star India, a subsidiary of The Walt Disney.\n"
                                    "Broadcasts various sports events such as cricket.....",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),


                        ],
                      ),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(10),
                      decoration:
                      BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 180,
                      width: 370,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      child: Column(
                        children: <Widget> [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),),
                              Icon(Icons.coronavirus_sharp, size: 25,color: Colors.greenAccent,),
                              Text(
                                " Covid - 19",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                              Text(
                                " \nCOVID-19 is a highly contagious respiratory illness \n"
                                    "caused by the SARS-CoV-2 virus. As of April 30, 2023,\n"
                                    "it has resulted in over 6 million deaths and continous..\n",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),


                        ],
                      ),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(10),
                      decoration:
                      BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 180,
                      width: 370,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      child: Column(
                        children: <Widget> [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),),
                              Icon(Icons.playlist_add, size: 25,color: Colors.blueAccent,),
                              Text(
                                " About Play List",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                              Text(
                                " \nA playlist is a collection of songs or videos\n"
                                    "grouped together based on a specific theme, mood,\n"
                                    "or personal preference for listening or sharing.....",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              ),


                            ],
                          ),


                        ],
                      ),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(10),
                      decoration:
                      BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 180,
                      width: 370,
                    ),
                  ),
                ),


              ],

            ),

          ),


          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(10),
                decoration:
                BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: <Widget> [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),),
                        Icon(Icons.playlist_add_check, size: 25,color: Colors.red,),
                        Text(
                          " Full Coverage of the story",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                height: 40,
                width: 370,
              ),
            ),
          ),

          Divider(
            color: Colors.grey[300],
            indent: 30,
            endIndent: 30,
            thickness: 1.5,
          ),

          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://th.bing.com/th/id/R.a3a5ac9862e59592fc035db85964761c?rik=dqblyuyISlEcow&riu=http%3a%2f%2fimg.talkandroid.com%2fuploads%2f2017%2f08%2fyoutube_logo-white-background-centered-900x379.png&ehk=UjSuaHRKfAZTJFstyIG81er%2bqZwAKmHsh7%2bDzSrUoME%3d&risl=&pid=ImgRaw&r=0",),
                fit: BoxFit.fill,
              ),
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            height: 180,
            width: 370,
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                child: Column(
                  children: <Widget> [
                    Row(
                      children: [

                        Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),),
                        Icon(Icons.play_circle, size: 25,color: Colors.redAccent,),
                        Text(
                          " YouTube",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),


                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                        Text(
                          " \nYouTube is a video sharing platform where users\n"
                              "can upload, view, and share videos on various\n"
                              "topics.It has become a primary source of enter-,\n"
                              "tainment education, and information for people.\n"
                              "worldwide YouTube's algorithm recommends videos\n"
                              "based on user preferences, making it a powerful\n"
                              "tool for content discovery and promotion.\n",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(15),
                decoration:
                BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 202,
                width: 370,
              ),
            ),
          ),

          Divider(
            color: Colors.grey[300],
            indent: 30,
            endIndent: 30,
            thickness: 1.5,
          ),

          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://learn.g2.com/hubfs/iStock-1078740886.jpg",),
                fit: BoxFit.fill,
              ),
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            height: 180,
            width: 370,
          ),


          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              child: Container(
                child: Column(
                  children: <Widget> [
                    Row(
                      children: [

                        Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),),
                        Icon(Icons.live_tv_outlined, size: 27,color: Colors.green,),
                        Text(
                          " Over-The-Top (OTT)",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.green,
                          ),
                        ),


                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5),),
                        Text(
                          " \nOTT (Over-The-Top) refers to streaming services\n"
                              "that deliver content directly to viewers via th internet,\n"
                              "bypassing traditional broadcast or cable networks.\n"
                              "Examples include Netflix, Amazon Prime Video.\n"
                              " OTT has revolutionized the entertainment industry and\n"
                              "and allowed for greater flexibility in accessing \n"
                              "and consuming content on various devices.......\n",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(10),
                decoration:
                BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 220,
                width: 370,
              ),
            ),
          ),
        ],
      ),




      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.grey[200],
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.playlist_add_check),
              label: 'For You'
          ),
          NavigationDestination(
              icon: Icon(Icons.language),
              label: 'Top Stories'
          ),
          NavigationDestination(
              icon: Icon(Icons.location_on_outlined),
              label: 'Local'
          ),
          NavigationDestination(
              icon: Icon(Icons.star_border),
              label: 'Following'
          ),

        ],
      ),
    );
  }
}


