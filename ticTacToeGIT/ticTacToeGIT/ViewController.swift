//
//  ViewController.swift
//  ticTacToeGIT
//
//  Created by ZemoF on 10/20/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        rBoard()
        // Do any additional setup after loading the view.
    }
       @IBOutlet weak var botLeft:UIButton!
        @IBOutlet weak var botMid:UIButton!
        @IBOutlet weak var botRight:UIButton!
        @IBOutlet weak var midLeft:UIButton!
        @IBOutlet weak var midMid:UIButton!
        @IBOutlet weak var midRight:UIButton!
        @IBOutlet weak var topLeft:UIButton!
        @IBOutlet weak var topMid:UIButton!
        @IBOutlet weak var topRight:UIButton!
        @IBOutlet weak var resetBtn:UIButton!

    
     
        

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

        var move:[Int]=[0,0]

        var board:[String]=["ooo","ooo","ooo"]

        func rBoard(){
            
            botLeft.isEnabled=true
            botRight.isEnabled=true
            botMid.isEnabled=true
            topLeft.isEnabled=true
            topRight.isEnabled=true
            topMid.isEnabled=true
            midLeft.isEnabled=true
            midRight.isEnabled=true
            midMid.isEnabled=true
            board=["ooo","ooo","ooo"]
            botLeft.backgroundColor=UIColor.green
            botRight.backgroundColor=UIColor.green
            botMid.backgroundColor=UIColor.green
            topLeft.backgroundColor=UIColor.green
            topRight.backgroundColor=UIColor.green
            topMid.backgroundColor=UIColor.green
            midLeft.backgroundColor=UIColor.green
            midRight.backgroundColor=UIColor.green
            midMid.backgroundColor=UIColor.green
           botLeft.setTitle(" ",for:UIControl.State.normal)
           botRight.setTitle(" ",for:UIControl.State.normal)
           botMid.setTitle(" ",for:UIControl.State.normal)
           topLeft.setTitle(" ",for:UIControl.State.normal)
           topRight.setTitle(" ",for:UIControl.State.normal)
           topMid.setTitle(" ",for:UIControl.State.normal)
           midLeft.setTitle(" ",for:UIControl.State.normal)
           midRight.setTitle(" ",for:UIControl.State.normal)
           midMid.setTitle(" ",for:UIControl.State.normal)
            
            
        }

        func detWin(lastMove: Character){
            var jim=""
            if lastMove == "X"{ jim="0"    }
            else{ jim = "X"}
            let ind0 = board[0].index(board[0].startIndex, offsetBy: 0)
             let ind1 = board[0].index(board[0].startIndex, offsetBy: 1)
             let ind2 = board[0].index(board[0].startIndex, offsetBy: 2)
              // horizontal wins
            var winCase=String(lastMove)+String(lastMove)+String(lastMove)
            if (board[0]==winCase){
                winLogic(winDex:0)
            }else if (board[1]==winCase){
                winLogic(winDex:1)
            } else if (board[2]==winCase){
                winLogic(winDex:2)
            }else if( board[0].first ==  lastMove && board[1].first == lastMove && board[2].first == lastMove){
                winLogic(winDex:3)
            }else if board[0][ind1] == lastMove && board[1][ind1] == lastMove && board[2][ind1] == lastMove{
                winLogic(winDex:4)
            }
            else if board[0].last == lastMove && board[1].last == lastMove && board[2].last == lastMove{
                winLogic(winDex:5)
            }else if board[0].first == lastMove && board[1][ind1] == lastMove && board[2].last == lastMove{
                winLogic(winDex:6)
            }else if board[0].last == lastMove && board[1][ind1] == lastMove && board[2].first == lastMove{
                winLogic(winDex:7)
            }
            
        }


        func winLogic(winDex: Int){
            switch winDex{
                case 0:
                    topLeft.backgroundColor=UIColor.red
                    topMid.backgroundColor=UIColor.red
                    topRight.backgroundColor=UIColor.red
                case 1:
               midLeft.backgroundColor=UIColor.red
               midMid.backgroundColor=UIColor.red
               midRight.backgroundColor=UIColor.red
                case 2:
               botMid.backgroundColor=UIColor.red
               botLeft.backgroundColor=UIColor.red
               botRight.backgroundColor=UIColor.red
                case 3:
               topLeft.backgroundColor=UIColor.red
               midLeft.backgroundColor=UIColor.red
               midRight.backgroundColor=UIColor.red
                case 4:
           topMid.backgroundColor=UIColor.red
           midMid.backgroundColor=UIColor.red
           botMid.backgroundColor=UIColor.red
                case 5:
              topRight.backgroundColor=UIColor.red
              botRight.backgroundColor=UIColor.red
              midRight.backgroundColor=UIColor.red
                case 6:
               topLeft.backgroundColor=UIColor.red
              midMid.backgroundColor=UIColor.red
              botRight.backgroundColor=UIColor.red
                case 7:
             botLeft.backgroundColor=UIColor.red
              midMid.backgroundColor=UIColor.red
              topRight.backgroundColor=UIColor.red
                default:
                resetBtn.backgroundColor=UIColor.red
            }
        }

     
        @IBAction func topLeftA(_ Sender:Any){

             if move[0] == 0{
                topLeft.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
                board[0].removeFirst()
                let hold1=board[0]
                board[0]="X"+hold1
            }else{
                topLeft.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
                board[0].removeFirst()
                let hold1=board[0]
                board[0]="0"+hold1
            }

        if move[1]>4{
            if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                   
                }
                
        topLeft.isEnabled=false
            
        }

        @IBAction func midLeftA(_ Sender:Any){
            if move[0] == 0{
                midLeft.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
                board[1].removeFirst()
                let hold1=board[1]
                board[1]="X"+hold1
            }else{
                midLeft.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
                board[1].removeFirst()
                let hold1=board[1]
                board[1]="0"+hold1
            }

        if move[1]>4{
                 if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                }
                
        midLeft.isEnabled=false
        }

        @IBAction func botLeftA(_ Sender:Any){
            

        if move[0] == 0{
                botLeft.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
            board[2].removeFirst()
            let hold1=board[2]
            board[2]="X"+hold1
                
            }else{
                botLeft.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
            board[2].removeFirst()
            let hold1=board[2]
            board[2]="0"+hold1
            }

        if move[1]>4{
                 if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                }
                
        botLeft.isEnabled=false

            
        }

        @IBAction func topRightA(_ Sender:Any){
            if move[0] == 0{
                topRight.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
                board[0].removeLast()
                let hold1=board[0]
                board[0]=hold1+"X"
                
            }else{
                topRight.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
                board[0].removeLast()
                               let hold1=board[0]
                               board[0]=hold1+"0"
            }

        if move[1]>4{
                 if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                }
                
        topRight.isEnabled=false
        }

        @IBAction func midRightA(_ Sender:Any){
            if move[0] == 0{
                midRight.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
                board[1].removeLast()
                               let hold1=board[1]
                               board[1]=hold1+"X"
                
            }else{
                midRight.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
                board[1].removeLast()
                               let hold1=board[1]
                               board[0]=hold1+"0"
            }

        if move[1]>4{
                 if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                }
                
        midRight.isEnabled=false
        }

        @IBAction func botRightA(_ Sender:Any){
            if move[0] == 0{
                botRight.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
                board[2].removeLast()
                               let hold1=board[2]
                               board[2]=hold1+"X"
            }else{
                botRight.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
                board[2].removeLast()
                               let hold1=board[2]
                               board[2]=hold1+"0"
            }

        if move[1]>4{
                 if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                }
                
        botRight.isEnabled=false

            
        }

        @IBAction func topMidA(_ Sender:Any){
            if move[0] == 0{
                topMid.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
                let hold0=board[0].first
                              let hold2=board[0].last
                              board[0]=String(hold0!)+"X"+String(hold2!)
            }else{
                topMid.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
                let hold0=board[0].first
                              let hold2=board[0].last
                              board[0]=String(hold0!)+"0"+String(hold2!)
              
            }

        if move[1]>4{
                 if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                }
                
        topMid.isEnabled=false
        }

        @IBAction func midMidA(_ Sender:Any){
                if move[0] == 0{
                midMid.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
                    let hold0=board[1].first
                    let hold2=board[1].last
                    board[1]=String(hold0!)+"X"+String(hold2!)
                
            }else{
                midMid.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
                    move[0]=0
                    move[1]+=1
                    let hold0=board[1].first
                                  let hold2=board[1].last
                                  board[1]=String(hold0!)+"0"+String(hold2!)
            }

        if move[1]>4{
                 if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                }
                
        midMid.isEnabled=false
        }

        @IBAction func botMidA(_ Sender:Any){
                if move[0] == 0{
                botMid.setTitle("X", for: UIControl.State.normal)
                move[0]=1
                move[1]+=1
                let hold0=board[2].first
                let hold2=board[2].last
                board[2]=String(hold0!)+"X"+String(hold2!)
            }else{
                botMid.setTitle("0", for: UIControl.State.normal)
                move[0]=0
                move[1]+=1
                    let hold0=board[2].first
                    let hold2=board[2].last
                    board[2]=String(hold0!)+"0"+String(hold2!)
            }

        if move[1]>4{
                 if move[0]==0{
                detWin(lastMove: "0")
            }else{
               detWin(lastMove: "X")
            }
                }
                
        botMid.isEnabled=false
        }


       
        @IBAction func restA(_ sender:Any){
            rBoard()
        }

        
        


    }
