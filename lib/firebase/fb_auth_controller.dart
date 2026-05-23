import 'package:fb_test/models/fb_response.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FbAuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FbResponse> signIn(String email, String password) async {

    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      bool verified = credential.user!.emailVerified;
      return FbResponse(verified ? "Logged in Successfully" : "Login Failed, verity email", verified);

    }on FirebaseAuthException catch (e){
      return FbResponse(e.message ?? "" , false);
    }catch (e){

      return FbResponse(  "Something went wrong" , false);
    }

  }

  Future<FbResponse> createAccount(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      credential.user!.sendEmailVerification();
      return FbResponse("Account created Successfully", true);

    }on FirebaseAuthException catch (e){
      return FbResponse(e.message ?? "" , false);
    }catch (e){

      return FbResponse(  "Something went wrong" , false);
    }
  }

  Future signOut() async {
    _auth.signOut();
  }
}
