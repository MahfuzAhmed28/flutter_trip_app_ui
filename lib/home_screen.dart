import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late PageController _pageController;

  void _onScroll(){
  }

  @override
  void initState() {
    _pageController=PageController(
      initialPage: 0
    )..addListener(_onScroll);
    super.initState();
  }

  int _totalPage=4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
            page: 1,
            image: 'one.jpg',
            title: 'Yosemite National Park',
              description: 'Yosemite National Park is in California’s Sierra Nevada mountains.'
          ),
          makePage(
            page: 2,
            image: 'two.jpg',
            title: 'Golden Gate Bridge',
            description: 'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait.'
          ),
          makePage(
            page: 3,
            image: 'three.jpg',
            title: 'Sedona',
            description: "Sedona is regularly described as one of America's most beautiful places."
          ),
          makePage(
            page: 4,
            image: 'four.jpg',
            title: 'Savannah',
            description: "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina."
          ),
        ]
      ),
    );
  }

  Widget makePage({page,image,title,description}){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/$image'),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(page.toString(),style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('/'+_totalPage.toString(),style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    //fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInUp(
                      child: Text('$title',style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    SizedBox(height: 20,),
                    FadeInUp(
                      child: Row(
                        children: [
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star_rate,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star_rate,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star_rate,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star_rate,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star_rate,color: Colors.grey,size: 15,),
                          ),
                          Text('4.0',style: TextStyle(color: Colors.white70),),
                          Text('(2300)',style: TextStyle(color: Colors.white38,fontSize: 12),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    FadeInUp(
                      child: Text(description,style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        height: 1.9,
                        fontSize: 15
                      ),),
                    ),
                    SizedBox(height: 20,),
                    FadeInUp(
                      child: Text('READ MORE',style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                    SizedBox(height: 50,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
