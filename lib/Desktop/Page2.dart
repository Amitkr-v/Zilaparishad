import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        // alignment: Alignment.center,
        width: MediaQuery.of(context).size.width *
            0.95, // Adjust based on your preference
        height: MediaQuery.of(context).size.height * 0.95,
        // color: Colors.pink, // Adjust based on your preference
        child: GridView.builder(
          padding: EdgeInsets.all(4),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8, // Number of columns
            mainAxisSpacing: 100, // Vertical spacing between items
            crossAxisSpacing: 0, // Horizontal spacing between items
            childAspectRatio: 1, // Aspect ratio of each item
          ),
          itemCount: lay.length * 2 - 1, // Total number of items (including text)
          itemBuilder: (context, index) {
            if (index.isOdd) {
              // If index is odd, return the text "right arrow"
              return Container(
                alignment: Alignment.center,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      // color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(

                    child : ClipRRect(
                    child: Image.asset('assets/images/rstep.png',
                    fit : BoxFit.cover),))
                  ),
                ),
              );
            } else if(index.isEven){
              // If index is even, return the actual item from lay list
              int layIndex = index ~/ 2;
              return Container(
                decoration: BoxDecoration(
              // color: lay[layIndex]['color'],
              // color: const Color.fromARGB(255, 206, 127, 220),
              color :   lay[layIndex]['color'] ?? 0xFFFFFFFF,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 67,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 125, 126, 125),
                        border: Border.all(width: 2, color: Colors.pink),
                        borderRadius:BorderRadius.circular(90),
                        image: DecorationImage(
                          image: AssetImage(lay[layIndex]['image']!),
                          fit: BoxFit.cover,
                        ),
                        
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      color: Color.fromARGB(255, 134, 164, 224),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: double.infinity, // Take full width available
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                          
                          children: [
                            Text(
                            lay[layIndex]['title'] ?? '',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          
                            Text(
                            lay[layIndex]['title'] ?? '',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              color:Color.fromARGB(255, 231, 5, 69)
                            ),
                            textAlign: TextAlign.center,
                          ),
                          
                          ],)
                        
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.pink),
                      ),
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: double.infinity, // Take full width available
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            lay[layIndex]['description'] ?? '',
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}



final List<Map<String, dynamic>> lay = [
  {
    'image': 'assets/images/one.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.purple[100], // Light pink color
  },
  {
    'image': 'assets/images/two.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.lightBlue[100], // Lavender blush color
  },
  {
    'image': 'assets/images/three.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.green[100], // Misty rose color
  },
  {
    'image': 'assets/images/four.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.amber[100], // Moccasin color
  },
  {
    'image': 'assets/images/five.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.pink[50], // Cornsilk color
  },
  {
    'image': 'assets/images/six.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.deepPurple[100], // Honeydew color
  },
  {
    'image': 'assets/images/seven.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.deepOrange[100], // Mint cream color
  },
  {
    'image': 'assets/images/eight.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.blueGrey[100], // Alice blue color
  },
  {
    'image': 'assets/images/nine.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.cyan[100], // Khaki color
  },
  {
    'image': 'assets/images/ten.png',
    'title': 'Progress',
    'description':
        'Revolutionizing travel planning: Our app simplifies booking.',
    'color': Colors.lime[200], // Wheat color
  },
];