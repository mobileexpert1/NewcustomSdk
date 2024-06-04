//
//  ViewDetail.swift
//
//
//  Created by Vishal on 04/06/24.
//

import Foundation
import iPass2_0NativeiOS
public static class MainDataBase{
    
    func getScanCompletionResult(result: String, error: String) {
            print(Date())
            print("data fetched success")
            print("Result-->", result)
            print("Error-->", error)
            
        }
    }
    DataBaseDownloading.initialization(completion:{
        progres, status, error in
        print(progres,status, error)
        
        
    })
func startScanningProcess() {
    iPassSDKManger.delegate = self
    iPassSDKManger.startScanningProcess(userEmail: "", flowId: 10015, socialMediaEmail :"appsdev096@gmail.com", phoneNumber : "+919781986132", controller: self, userToken: "self.userToken", appToken: "self.appToken1")
}
}
