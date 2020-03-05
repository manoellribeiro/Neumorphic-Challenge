import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.withOpacity(.5), width: 2),),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search, color: Colors.grey,),
                          contentPadding: EdgeInsets.only(left: 10),
                          border: InputBorder.none,
                          labelText: "Find your symptons",
                          ),
                      ),
                    ),
                  ),
                );
  }
}