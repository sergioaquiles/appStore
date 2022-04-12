//
//  SearchCell.swift
//  AppStoreViewCode
//
//  Created by Sergio Cardoso on 07/03/22.
//

import UIKit
import SDWebImage

class SearchCell: UITableViewCell {
    
    var app: App! {
        didSet {
            
            titleLabel.text = app.nome
            companyLabel.text = app.empresa
            
            iconImageView.sd_setImage(with: URL(string: app.iconeUrl), completed: nil)
            
            if let screenshotUrls = app.screensShotURls {
                if screenshotUrls.count > 0 {
                    print(screenshotUrls[0])
                    self.screenShot1.sd_setImage(with: URL(string: screenshotUrls[0]), completed: nil)
                }
                if screenshotUrls.count > 1 {
                    self.screenShot2.sd_setImage(with: URL(string: screenshotUrls[1]), completed: nil)
                }
                if screenshotUrls.count > 2 {
                    self.screenShot2.sd_setImage(with: URL(string: screenshotUrls[2]), completed: nil)
                }
            }
        }
    }
    
    let iconImageView: UIImageView = .iconImage()
    let titleLabel: UILabel = .textLabel(text: "App name", fontSize: 18, numberOfLines: 2)
    let companyLabel: UILabel = .textLabel(text: "Company name", fontSize: 14)
    let getButton: UIButton = .getButton()
    
    let screenShot1: UIImageView = .screenShotImage()
    let screenShot2: UIImageView = .screenShotImage()
    let screenShot3: UIImageView = .screenShotImage()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let titleAndCompanyStackView = UIStackView(arrangedSubviews: [titleLabel, companyLabel])
        titleAndCompanyStackView.spacing = 3
        titleAndCompanyStackView.axis = .vertical
        
        let headerStackView = UIStackView(arrangedSubviews: [iconImageView, titleAndCompanyStackView, getButton])
        headerStackView.spacing = 12
        headerStackView.alignment = .center
        
        let screenShotStackView = UIStackView(arrangedSubviews: [screenShot1, screenShot2, screenShot3])
        screenShotStackView.spacing = 12
        screenShotStackView.distribution = .fillEqually
        
        let globalStackView = UIStackView(arrangedSubviews: [headerStackView, screenShotStackView])
        globalStackView.spacing = 16
        globalStackView.axis = .vertical

        addSubview(globalStackView)
        globalStackView.fillSuperView(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
