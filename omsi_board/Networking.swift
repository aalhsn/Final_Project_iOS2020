//
//  Networking.swift
//  omsi_board
//
//  Created by Hasan Alsaffar on 2/8/20.
//  Copyright © 2020 Abdullah. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth



class Networking {
    

    //have to be static
    static func signin (email: String, pass: String, success:  @escaping () -> (), fail: @escaping () -> () ){
        
        


        Auth.auth().signIn(withEmail: email, password: pass) { (auth, error) in
            if error == nil {
                if auth == auth {
                    print("signedin seccessful")
                    success()
                } else {
                    //error
                    fail()
                }

            } else {
                print("couldnt sign in")
                fail()

            }
        }

    }


    static func siggnup(email: String, pass: String, success:  @escaping () -> (), fail: @escaping () -> () ){
        Auth.auth().createUser(withEmail: email, password: pass) { (auth, error) in
            if error == nil {
                if auth == auth {
                    success()
                    print("signup seccessful")
                } else {
                    //error
                    fail()
                }

            } else {
                print("couldnt sign up")
                fail()
            }
        }
    }

    static func signout(seccess:  @escaping () -> (), fail: @escaping () -> () ){
        //do something with storyboard
        //error handeling
        do{
            try Auth.auth().signOut()
            seccess()
        }
        catch{
            
            fail()
            print("their was an error thrown!", error)
        }

    }
    
}
