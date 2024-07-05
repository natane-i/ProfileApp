//
//  HobbyViewController.swift
//  ProfileApp
//
//  Created by spark-01 on 2024/05/20.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet weak var hobbyImage: UIImageView!
    @IBOutlet weak var explanation: UITextView!
    
    class ImageData {
        let imageName: String
        let imageText: String
        
        init(imageName: String, imageText: String) {
            self.imageName = imageName
            self.imageText = imageText
        }
    }
    
    let imageArray: [ImageData] = [ImageData(imageName: "hobby_mainphoto01", imageText: "シンプルなドイリーです。\n実家の玄関で花瓶敷きとして活躍しています。"),ImageData(imageName: "hobby_mainphoto02", imageText: "父の日のプレゼントとして作った作品です。\nPeanutsに出てくるチャーリーブラウンが大好きな父のために、イラストや文言を調べて作成しました。"), ImageData(imageName: "hobby_mainphoto03", imageText: "お花をつけたドイリーです。\nお花の編み方は人によって様々で、一番綺麗に見える編み方を模索中です。")]
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let data = imageArray[currentIndex]
         hobbyImage.image = UIImage(named: data.imageName)
         explanation.text = data.imageText
    }
    
    @IBAction func prevButton(_ sender: Any) {
        // インデックスを1つ戻す
        transitionToNextImage(moveForward: false)
    }
    
    @IBAction func nextButton(_ sender: Any) {
        // インデックスを1つ進める
        transitionToNextImage(moveForward: true)
    }
    
    func transitionToNextImage(moveForward: Bool) {
        // 次のインデックスを計算
        currentIndex = moveForward ? (currentIndex + 1) % imageArray.count : (currentIndex - 1 + imageArray.count) % imageArray.count
        
        // 次の画像を読み込む
        let data = imageArray[currentIndex]
        let nextImage = UIImage(named: data.imageName)
        
        hobbyImage.image = nextImage
        let transition = CATransition()
        transition.type = .push
        transition.subtype = moveForward ? .fromRight : .fromLeft
        transition.duration = 0.3
        hobbyImage.layer.add(transition, forKey: nil)

        // テキストを更新
        explanation.text = data.imageText
    }
    
}
    

