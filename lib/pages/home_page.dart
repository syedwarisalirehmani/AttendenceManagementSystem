// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class HomePage extends StatelessWidget {
//   @override
//   @override
//   Widget build(BuildContext context) {
//     String currentDate = DateFormat('d MMMM, yyyy').format(DateTime.now());

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Home',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF6A1B9A),
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         automaticallyImplyLeading: false,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage(
//                       'lib/images/profile_picture.png'), // Add profile picture here
//                 ),
//                 const SizedBox(width: 8),
//                 const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Jacob Jones',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       'Python Developer',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 GestureDetector(
//                   onTap: () {
//                     // Add logout functionality
//                   },
//                   child: Image.asset(
//                     'lib/images/logout.png',
//                     height: 100,
//                     width: 100,
//                     color: Color(0xFF6A1B9A),
//                     // fit: BoxFit.cover,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 32),
//             Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     "Today's Attendance",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   currentDate,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 32),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                   borderSide: BorderSide(color: Color(0xFF6A1B9A)),
//                 ),
//                 labelText: 'Check In',
//               ),
//               keyboardType: TextInputType.datetime,
//             ),
//             SizedBox(height: 16),
//             Center(
//               child: SizedBox(
//                 width: MediaQuery.of(context).size.width *
//                     0.5, // Half of the screen width
//                 height: 50, // Increased height
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Check In functionality
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF6A1B9A),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     padding: EdgeInsets.symmetric(vertical: 16.0),
//                   ),
//                   child: Text(
//                     'Check In',
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 32),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                   borderSide: BorderSide(color: Color(0xFF6A1B9A)),
//                 ),
//                 labelText: 'Check Out',
//               ),
//               keyboardType: TextInputType.datetime,
//             ),
//             SizedBox(height: 16),
//             Center(
//               child: SizedBox(
//                 width: MediaQuery.of(context).size.width *
//                     0.5, // Half of the screen width
//                 height: 50, // Increased height
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/history');
//                     // Check Out functionality
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF6A1B9A),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     padding: EdgeInsets.symmetric(vertical: 16.0),
//                   ),
//                   child: Text(
//                     'Check Out',
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: ClipPath(
//         clipper: ShapeBorderClipper(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//           ),
//         ),
//         child: Container(
//           color: Color(0xFF6A1B9A),
//           child: Padding(
//             padding:
//                 const EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     print('home button tapped');
//                     // Add functionality for home button tap
//                   },
//                   child: Image.asset(
//                     'lib/images/home_outlined.png',
//                     height: 40, // Increased height
//                     width: 40, // Increased width
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Add functionality for carry button tap
//                   },
//                   child: Image.asset(
//                     'lib/images/carry_outlined.png',
//                     height: 40, // Increased height
//                     width: 40, // Increased width
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Add functionality for interaction button tap
//                   },
//                   child: Image.asset(
//                     'lib/images/interaction_outlined.png',
//                     height: 40, // Increased height
//                     width: 40, // Increased width
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('d MMMM, yyyy').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF6A1B9A),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        // Added SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'lib/images/profile_picture.png'), // Add profile picture here
                  ),
                  const SizedBox(width: 8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jacob Jones',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Python Developer',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Add logout functionality
                    },
                    child: Image.asset(
                      'lib/images/logout.png',
                      height: 100,
                      width: 100,
                      color: Color(0xFF6A1B9A),
                      // fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Today's Attendance",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    currentDate,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xFF6A1B9A)),
                  ),
                  labelText: 'Check In',
                ),
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.5, // Half of the screen width
                  height: 50, // Increased height
                  child: ElevatedButton(
                    onPressed: () {
                      // Check In functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6A1B9A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'Check In',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Color(0xFF6A1B9A)),
                  ),
                  labelText: 'Check Out',
                ),
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 16),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.5, // Half of the screen width
                  height: 50, // Increased height
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/history');
                      // Check Out functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6A1B9A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text(
                      'Check Out',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
        ),
        child: Container(
          color: Color(0xFF6A1B9A),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    print('home button tapped');
                    // Add functionality for home button tap
                  },
                  child: Image.asset(
                    'lib/images/home_outlined.png',
                    height: 40, // Increased height
                    width: 40, // Increased width
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Add functionality for carry button tap
                  },
                  child: Image.asset(
                    'lib/images/carry_outlined.png',
                    height: 40, // Increased height
                    width: 40, // Increased width
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Add functionality for interaction button tap
                  },
                  child: Image.asset(
                    'lib/images/interaction_outlined.png',
                    height: 40, // Increased height
                    width: 40, // Increased width
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
