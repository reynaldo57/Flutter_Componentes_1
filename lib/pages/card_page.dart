import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cards")),
      body: ListView(
        children: [
          buildCard1(),
          buildCard2(),
          buildCard2(),
        ],
      ),
    );
  }

  Card buildCard2() {
    return Card(
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.all(12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            children: [
              Image.network(
                "https://m.media-amazon.com/images/M/MV5BZTNjOWI0ZTAtOGY1OS00ZGU0LWEyOWYtMjhkYjdlYmVjMDk2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("Naruto"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Icon(Icons.favorite),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Icon(Icons.share),
                      ),
                    ],
                  )
                ],
              )

            ],
          ),
        );
  }

  Card buildCard1() {
    return Card(
          margin: EdgeInsets.all(12.0),
          elevation: 4.0,
          shadowColor: Colors.black,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text("The Sirmarillion"),
                subtitle: Text("JRR Tolkien"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(onPressed: () {}, child: Text("OutLine")),
                  TextButton(onPressed: () {}, child: Text("Aceptar")),
                  ElevatedButton.icon(
                    icon: Icon(Icons.close),
                    onPressed: (){},
                    label: Text("Cancelar"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.5),
                      )
                    ),
                  ),
                  ElevatedButton(onPressed: () {},
                      child: Text(
                          "Elevated",
                      ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.white, width: 1.4),
                      ),
                      backgroundColor: Colors.blue,
                      elevation: 4,
                    )
                  ),
                ],
              ),
            ],
          ),
        );
  }
}
