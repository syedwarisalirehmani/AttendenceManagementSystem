// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class HistoryPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Dummy attendance data
//     final List<Map<String, String>> attendanceData = [
//       {'date': '01 June, 2024', 'checkIn': '09:59 AM', 'checkOut': '06:09 PM'},
//       {'date': '02 June, 2024', 'checkIn': '10:01 AM', 'checkOut': '06:15 PM'},
//       {'date': '03 June, 2024', 'checkIn': '09:45 AM', 'checkOut': '06:00 PM'},
//       {'date': '04 June, 2024', 'checkIn': '10:00 AM', 'checkOut': '06:00 PM'},
//       {'date': '05 June, 2024', 'checkIn': '09:59 AM', 'checkOut': '06:09 PM'},
//       {'date': '06 June, 2024', 'checkIn': '11:59 AM', 'checkOut': '06:40 PM'},
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'History',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF6A1B9A),
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0,
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
//                 IconButton(
//                   icon: Icon(Icons.search, color: Color(0xFF6A1B9A)),
//                   onPressed: () {
//                     // Add search functionality
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 32),
//             const Text(
//               'June',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: attendanceData.length,
//                 itemBuilder: (context, index) {
//                   final attendance = attendanceData[index];
//                   return Card(
//                     child: ListTile(
//                       leading: Icon(Icons.login, color: Color(0xFF6A1B9A)),
//                       title: Text(
//                         attendance['date']!,
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       subtitle: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(Icons.arrow_downward, color: Colors.grey),
//                               SizedBox(width: 4),
//                               Text(
//                                 attendance['checkIn']!,
//                                 style: TextStyle(fontSize: 14),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Icon(Icons.arrow_upward, color: Colors.grey),
//                               SizedBox(width: 4),
//                               Text(
//                                 attendance['checkOut']!,
//                                 style: TextStyle(fontSize: 14),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       trailing: Icon(Icons.logout, color: Color(0xFF6A1B9A)),
//                     ),
//                   );
//                 },
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
//                     Navigator.pushNamed(context, '/home');
//                   },
//                   child: Image.asset(
//                     'lib/images/home_outlined.png',
//                     height: 40,
//                     width: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Add functionality for carry button tap
//                   },
//                   child: Image.asset(
//                     'lib/images/carry_outlined.png',
//                     height: 40,
//                     width: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/history');
//                   },
//                   child: Image.asset(
//                     'lib/images/interaction_outlined.png',
//                     height: 40,
//                     width: 40,
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

// -------------------------------------

import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('lib/images/profile_picture.png'),
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
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF6A1B9A)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/images/search.png',
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Search',
                        style: TextStyle(color: Color(0xFF6A1B9A)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/images/vector.png',
                  height: 24,
                  width: 24,
                ),
                const SizedBox(width: 8),
                const Text(
                  'June',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ScrollbarTheme(
                data: ScrollbarThemeData(
                  thumbColor: WidgetStateProperty.all<Color>(Color(0xFF6A1B9A)),
                ),
                child: Scrollbar(
                  thumbVisibility: true,
                  thickness: 6.0,
                  radius: Radius.circular(10),
                  child: ListView.builder(
                    itemCount: 10, // Example number of entries
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '01 June, 2024',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/images/login.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        '09:59 AM',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'lib/images/login.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        '06:09 PM',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
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
                    Navigator.pushNamed(context, '/home');
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
