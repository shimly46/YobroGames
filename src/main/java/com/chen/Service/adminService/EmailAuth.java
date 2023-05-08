//package com.chen.Service.adminService;
//
//import com.google.firebase.auth.FirebaseAuth;
//import com.google.firebase.auth.FirebaseAuthException;
//import com.google.firebase.auth.UserRecord;
//import com.google.firebase.auth.UserRecord.CreateRequest;
//
//public class EmailAuth {
//
//    public static String registerUser(String email, String password) {
//        CreateRequest request = new CreateRequest()
//                .setEmail(email)
//                .setEmailVerified(false)
//                .setPassword(password);
//
//        try {
//            UserRecord userRecord = FirebaseAuth.getInstance().createUser(request);
//            System.out.println("User created with uid: " + userRecord.getUid());
//            return userRecord.getUid();
//        } catch (FirebaseAuthException e) {
//            System.out.println("Error creating user: " + e.getMessage());
//            return null;
//        }
//    }
//
//    public static UserRecord loginUser(String email, String password) {
//        try {
//            String uid = FirebaseAuth.getInstance().getUserByEmail(email).getUid();
//            // To verify the password, you need to use the client-side Firebase SDK or a custom server-side solution.
//            // Firebase Admin SDK doesn't provide a method to verify the password.
//            System.out.println("User logged in with uid: " + uid);
//            return FirebaseAuth.getInstance().getUser(uid);
//        } catch (FirebaseAuthException e) {
//            System.out.println("Error logging in user: " + e.getMessage());
//            return null;
//        }
//    }
//}
