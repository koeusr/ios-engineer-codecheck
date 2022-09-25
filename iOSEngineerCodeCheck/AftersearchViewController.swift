//
//  ViewController2.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/21.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit

class AftersearchViewController: UIViewController {
    
    @IBOutlet weak var ImgView: UIImageView!
    
    @IBOutlet weak var TtlLbl: UILabel!
    
    @IBOutlet weak var LangLbl: UILabel!
    
    @IBOutlet weak var StrsLbl: UILabel!
    @IBOutlet weak var WchsLbl: UILabel!
    @IBOutlet weak var FrksLbl: UILabel!
    @IBOutlet weak var IsssLbl: UILabel!
    
    var rootVc:  RootViewController!
    let langLbl: String = "Written in "
    let strsLbl: String = " stars"
    let wchLbl:  String = " watchers"
    let frksLbl: String = " forks"
    let isssLbl: String = " open issues"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repo = rootVc.repo[rootVc.idx]
        
        LangLbl.text = langLbl + (repo[RepoDataKey.REPO_LANG] as? String ?? "")
        StrsLbl.text = String(repo[RepoDataKey.REPO_STAR_CNT] as? Int ?? 0) + strsLbl
        WchsLbl.text = String(repo[RepoDataKey.REPO_WACH_CNT] as? Int ?? 0) + wchLbl
        FrksLbl.text = String(repo[RepoDataKey.REPO_FORK_CNT] as? Int ?? 0) + frksLbl
        IsssLbl.text = String(repo[RepoDataKey.REPO_OPEN_ISSS] as? Int ?? 0) + isssLbl
        
        TtlLbl.text = repo[RepoDataKey.REPO_FULL_NAME] as? String
        
        let getImageModels: GetImageModel = GetImageModel()
        getImageModels.getImage(repo, self)
    }
        
}
