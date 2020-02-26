//
//  ViewController.swift
//  WordGame
//
//  Created by 503 on 2020/02/26.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score:Int = 0 //누적될 점수
    var index:Int = 0
    
    // 게임에 사용될 단어 배열
    var word = [
        "리쉬부르", "포트와인", "모에샹동", "칭따오", "수정방",
        "마오타이","발렌타안","조니워커","글랜피딕","기네스"
    ]
    
    @IBOutlet weak var la_word: UILabel!
    @IBOutlet weak var t_input: UITextField!
    @IBOutlet weak var la_feedback: UILabel!
    @IBOutlet weak var la_score: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        printWord()
    }
    
    @IBAction func btnClick(_ sender: Any) {
        next()
    }
   
    //단어 출력함수
    func printWord(){
        la_word.text = word[index]
    }
    
    //다음단어 출력
    func next(){
        
        //단어 일치여부 판단
        if la_word.text == t_input.text {
            //단어가 일치할때 실행
            index += 1
            printWord()
            //피드백출력
            la_feedback.text = "o"
            score += 10
            la_score.text = String(score)
        }else{
            la_feedback.text = "X"
        }
        //입력 초기화
        t_input.text = ""
        
                
    }
    
    
}

