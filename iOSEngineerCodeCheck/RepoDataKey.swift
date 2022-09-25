//
//  RepoData.swift
//  iOSEngineerCodeCheck
//
//  Created by 大江光基 on 2022/09/25.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import Foundation

struct RepoDataKey {
    static let REPO_FULL_NAME:  String = "full_name"
    static let REPO_LANG:       String = "language"
    static let REPO_STAR_CNT:   String = "stargazers_count"
    static let REPO_WACH_CNT:   String = "wachers_count"
    static let REPO_FORK_CNT:   String = "forks_count"
    static let REPO_OPEN_ISSS:  String = "open_issues_count"
    static let REPO_OWNER:      String = "owner"
    
    struct OwnerDataKey {
        static let OWNER_AVATAR_URL:      String = "avatar_url"
    }
}
