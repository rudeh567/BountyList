//
//  DetailViewController.swift
//  BountyList
//
//  Created by yeoboya on 2021/09/27.
//

import UIKit

class DetailViewController: UIViewController {

    // MVVM
    
    // Model
    // - BountyInfo
    // > BountyInfo 만들자
    
    // View
    // - imgView, nameLabel, bountylabel
    // > view들은 viewmodel를 통해서 구성되기 ?

    // ViewModel
    // - DetailViewModel
    // > 뷰레이어에서 필요한 메서드 만들기
    // > 모델 가지고 있기 ,, BountyINfo 들
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLable: UILabel!
    
    var bountyInfo: BountyInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    
    func updateUI() {
        
        if let bountyInfo = self.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLable.text = "\(bountyInfo.bounty)"
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
