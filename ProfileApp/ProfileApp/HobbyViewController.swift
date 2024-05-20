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
    
    let imageArray: [ImageData] = [ImageData(imageName: "hobby_mainphoto01", imageText: "シンプルなドイリーです。\n実家の玄関で花瓶敷きとして活躍しています。"),ImageData(imageName: "hobby_mainphoto02", imageText: "父の日のプレゼントとして作った作品です。\nPeanutsに出てくるチャーリーブラウンが大好きな父のために、イラストや文言を調べて作成しました。")]
    //お花をつけたドイリーです。\nお花の編み方は人によって様々で、一番綺麗に見える編み方を模索中です。
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let data = imageArray[currentIndex]
         hobbyImage.image = UIImage(named: data.imageName)
         explanation.text = data.imageText
        
    }
    
    @IBAction func prevButton(_ sender: Any) {
//      currentIndex = (currentIndex - 1 + imageArray.count) % imageArray.count
//        updateContent()
        
        transitionToNextImage(moveForward: false)
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
// インデックスを1つ進める
//        currentIndex = (currentIndex + 1) % imageArray.count
//        updateContent()
        
        transitionToNextImage(moveForward: true)
        
    }
    
    
//    func updateContent() {
//        let data = imageArray[currentIndex]
//        hobbyImage.image = UIImage(named: data.imageName)
//        explanation.text = data.imageText
//    }
//
    func transitionToNextImage(moveForward: Bool) {
        // 次のインデックスを計算
        currentIndex = moveForward ? (currentIndex + 1) % imageArray.count : (currentIndex - 1 + imageArray.count) % imageArray.count
        
        // 次の画像を読み込む
        let data = imageArray[currentIndex]
        let nextImage = UIImage(named: data.imageName)
        
        // アニメーションを設定
        UIView.transition(with: hobbyImage, duration: 0.5, options: moveForward ? .transitionCrossDissolve : .transitionCrossDissolve, animations: {
            self.hobbyImage.image = nextImage
        }, completion: nil)
        
        // アニメーションのオプションを設定
//        var animationOptions: UIView.AnimationOptions = []
//        if moveForward {
//            animationOptions = .transitionFlipFromRight
//        } else {
//            animationOptions = .transitionFlipFromLeft
//        }
        
        // アニメーションを設定
//        UIView.transition(with: hobbyImage, duration: 0.5, options: animationOptions, animations: {
//            self.hobbyImage.image = nextImage
//        }, completion: nil)
        
        // アニメーションのオプションを設定
//            var animationOptions: UIView.AnimationOptions = [.transitionCurlUp, .curveEaseInOut]
//            if moveForward {
//                animationOptions = [.transitionCurlRight, .curveEaseInOut
//            } else {
//                    animationOptions = [.transitionCurlLeft, .curveEaseInOut]
//            }
//
//            // アニメーションを設定
//            UIView.transition(with: hobbyImage, duration: 0.5, options: animationOptions, animations: {
//                self.hobbyImage.frame = moveForward ? CGRect(x: -self.hobbyImage.bounds.width, y: 0, width: self.hobbyImage.bounds.width, height: self.hobbyImage.bounds.height) : CGRect(x: self.hobbyImage.bounds.width, y: 0, width: self.hobbyImage.bounds.width, height: self.hobbyImage.bounds.height)
//                self.hobbyImage.image = nextImage
//            }, completion: { _ in
//                self.hobbyImage.frame = CGRect(x: 0, y: 0, width: self.hobbyImage.bounds.width, height: self.hobbyImage.bounds.height)
//            })
        
        // テキストを更新
        explanation.text = data.imageText
    }
    
}
    

