//
//  TableViewCell.swift
//  Download
//
//  Created by tasya on 31.08.2020.
//  Copyright © 2020 Taisiya V. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    let imageVideo: UIImageView = {
        let i = UIImageView()
        i.contentMode = .scaleAspectFit
        return i
    }()
    
    let titleLable: UILabel = {
        let t = UILabel()
        t.text = "Title"
        return t
    }()
    
    let subtitleLable: UILabel = {
        let t = UILabel()
        t.text = "Subtitle"
        t.numberOfLines = 0
        return t
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(imageVideo)
        addSubview(titleLable)
        addSubview(subtitleLable)
        
        imageVideo.snp.makeConstraints({ (m) in
            m.top.bottom.left.equalToSuperview().inset(5)
            m.height.equalTo(120)
            m.width.equalTo(140)
        })
        
        titleLable.snp.makeConstraints { (m) in
            m.top.equalToSuperview().inset(5)
            m.left.equalTo(imageVideo.snp.right).inset(-10)
            m.right.equalToSuperview().inset(20)
            m.height.equalTo(20)
        }
        
        subtitleLable.snp.makeConstraints { (m) in
            m.left.equalTo(imageVideo.snp.right).inset(-10)
            m.right.equalToSuperview().inset(20)
            m.top.equalTo(titleLable.snp.bottom).inset(-15)
            m.height.equalTo(85)
        }
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
