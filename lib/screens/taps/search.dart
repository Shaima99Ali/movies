import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/app_design/app_colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(
              top:MediaQuery.of(context).size.height  *0.06),
            child: TextField(
              style: TextStyle(
                color:Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white12,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(
                    color: Colors.white12,
                    width: 3,
                  )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.white12,
                      width: 3,
                    )
                ),
                enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.white12,
                      width: 3,
                    )
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white24,
                 // fontWeight: FontWeight.bold

                ),
                prefixIcon: Icon(Icons.search,color: Colors.white,)

              ),
            ),
          ),
        ],
      ),
    );
  }
}
