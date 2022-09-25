//
//  GetImageModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 大江光基 on 2022/09/25.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import Foundation
import UIKit

class GetImageModel {    
    func getImage(_ repo: [String : Any], _ afVc: AftersearchViewController){
        
        if let owner = repo[RepoDataKey.REPO_OWNER] as? [String: Any] {
            if let imgURL = owner[RepoDataKey.OwnerDataKey.OWNER_AVATAR_URL] as? String {
                URLSession.shared.dataTask(with: URL(string: imgURL)!) { (data, res, err) in
                    let img = UIImage(data: data!)!
                    DispatchQueue.main.async {
                        afVc.ImgView.image = img
                    }
                }.resume()
            }
        }
    }
}
