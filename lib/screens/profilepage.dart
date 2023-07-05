import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:hello_world/login/googlesignin.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  logoutMessage() {
    const snackBar = SnackBar(
      content: Text('Logout Successful. Login Again'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return const SizedBox.shrink();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AvatarGlow(
                curve: Curves.easeInOutCubicEmphasized,
                glowColor: Colors.orange,
                endRadius: 75.0,
                duration: const Duration(milliseconds: 2000),
                repeat: true,
                showTwoGlows: true,
                repeatPauseDuration: const Duration(milliseconds: 100),
                child: Material(
                  // Replace this child with your own
                  elevation: 10.0,
                  shape: const CircleBorder(),
                  child: ClipOval(
                    child: Image.network(
                      user.photoURL.toString(),
                      frameBuilder:
                          (context, child, frame, wasSynchronouslyLoaded) {
                        return child;
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                user.displayName!,
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Level:',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 5),
              const Text(
                'Branch:',
                style: TextStyle(fontSize: 20),
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.logout();
                    logoutMessage();
                  },
                  child: const Text(
                    'Logout',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
