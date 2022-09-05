import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter/material.dart';

class searchHeregjilt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/bodlogo');
                    },
                    child: Text('- Бодлогын баримт бичиг'),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/zg');
                    },
                    child: Text('- Засгийн газрын тогтоол'),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ih');
                    },
                    child: Text('- УИХ-н тогтоолын хэрэгжилт'),
                  ),
                  FlatButton(
//                      onPressed: () => _onButtonDeDtses(),
                    onPressed: () {
                      Navigator.pushNamed(context, '/ajiliinHeseg');
                    },
                    child: Text('- Ажлын хэсэг'),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/HOTH');
                    },
                    child: Text('- Хөрөнгө оруулалтын төсөл, хөтөлбөр'),
                  ),
                ],
              ),
            ],
          ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Expanded(
//                 flex: 6,
//                 child: Container(
//                     height: 34.0,
//                     child: TextFormField(
//                       scrollPadding: EdgeInsets.all(0.0),
//                       style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(68, 68, 68, 1), fontWeight: FontWeight.w400),
//                       decoration: InputDecoration(
//                           contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Color.fromRGBO(223, 223, 223, 1)),
//                             borderRadius: BorderRadius.circular(5.0),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Color.fromRGBO(223, 223, 223, 1)),
//                             borderRadius: BorderRadius.circular(5.0),
//                           ),
//                           focusedErrorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5.0),
//                               borderSide: BorderSide(
//                                   width: 1, color: Colors.red)),
//                           fillColor: Colors.red,
//                           hintText: 'Хайх',
//                           hintStyle: TextStyle(
//                               color:
//                               Color.fromRGBO(68, 68, 68, 1),
//                               fontSize: 13,
//                               fontWeight: FontWeight.w400)
//                       ),
//                     )
//                 ),
//               ),
//               SizedBox(width: 4),
//               Expanded(
//                   flex: 2,
//                   child: MaterialButton(
//                     height: 34.0,
//                     padding: EdgeInsets.all(0.0),
//                     color: mainColor,
//                     textColor: Colors.white,
//                     child: new Text(
//                       "Хайх",
//                       style: TextStyle(fontSize: 15),
//                     ),
//                     onPressed: () {
// //                      setStateOfBottomSheet(() {
// //                        this.saveData(true);
// //                      });
//                     },
//                   )
//               )
//             ],
//           ),
        ],
      ),

    );
  }
}
