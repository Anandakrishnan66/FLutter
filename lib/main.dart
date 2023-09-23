import 'package:flutter/material.dart';
int count=0;
void main() {
  runApp(const MaterialApp(
    title: "Tutorial" ,
    home: TutorialHome(),
  ));
}


class TutorialHome extends StatelessWidget{
  const TutorialHome({super.key});
  // List<PopupMenuButton>list = ["Hello","no"];

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
            onPressed: null, icon: Icon(Icons.menu),
        tooltip: 'Navigation Menu',
          ),
        title:const  Text('Titl_app'),
        actions:  [
          IconButton(
              onPressed: null, icon: Icon(Icons.search),
          tooltip: 'Search',),
            PopupMenuButton(itemBuilder:
            (BuildContext context)=><PopupMenuEntry<String>>[
              const PopupMenuItem(child: Text('Item1'),),
              const PopupMenuItem(child: Text('Item2'),),


            ]

            )

          ] ),



      body: const Center(
        child: Counter(),

      ),

      // floatingActionButton: const FloatingActionButton(onPressed:null,
      // tooltip: 'Add',
      // child: MyButton(onPressed: onPressed, count: count),),

     );
  }

}

class MyButton extends StatelessWidget{
  const MyButton({required this.onPressed,required this.count,super.key});
  final VoidCallback onPressed;
  final int count;

  @override



  @override

   Widget build(BuildContext context){
  //   return GestureDetector(
  //     onTap: (){
  //        print('MyButon trapped');
  //       onPressed;
  //       // print(CounterDisplay(count: count));
  //
  //     },
  //
  //     child: Container(
  //       height: 50,
  //       padding: const EdgeInsets.all(8),
  //       margin: const EdgeInsets.symmetric(horizontal: 8),
  //
  //
  //       child: const Center(
  //         child: Icon(Icons.add),
  //       ),
  //     ),
  //
  //
  //   );
    return Container(
      height: 50,
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(top: 500,left: 110),
      // alignment: ,
      child: (FloatingActionButton(
        onPressed: onPressed,
        tooltip: 'add',
        child:const Icon(Icons.add),

      )),
    );
  }
}

class Counter extends StatefulWidget{
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter=0;

  void _increment(){
    setState(() {
      ++_counter;
    });
  }
  @override
  Widget build (BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncrementer(onPressed:_increment),
        const SizedBox(width: 16,),
        MyButton(onPressed: _increment,count:_counter),
        CounterDisplay(count:_counter),


      ],

    );
  }
}

class CounterIncrementer extends StatelessWidget{
  const CounterIncrementer({required this.onPressed,super.key});
  final VoidCallback onPressed;
  @override

  Widget build(BuildContext context){
    return ElevatedButton(onPressed:
    onPressed, child: const Text('Increment'),);
  }
}

class CounterDisplay extends StatelessWidget{
  const CounterDisplay({required this.count,super.key});
  final int count;

  @override
  Widget build(BuildContext context){
    return Text('Count: $count');
  }
}