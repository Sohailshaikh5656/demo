import 'package:flutter/material.dart';
class DropScreen extends StatefulWidget{
  @override
  State<DropScreen> createState() => _DropDownMenu();
}
class _DropDownMenu extends State<DropScreen>{
  String dropdownvalue = 'Item 1';
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Example'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text('Select an Item : ',style:TextStyle(fontSize:18),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              onChanged: (String?newValue){
                setState(() {
                  dropdownvalue = newValue!;
                });
            },
              items: <String>['Item 1','Item 2','Item 3','Item 4','Item 5']
                  .map<DropdownMenuItem<String>> ((String value){
                    return DropdownMenuItem<String>(value: value,child: Text(value),);
              }
            ).toList(),
            ),

          ],
        ),
      ),
    );
  }
}