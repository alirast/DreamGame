//
//  GameViewController.swift
//  DreamGame
//
//  Created by N S on 25.03.2023.
//

import UIKit
import SpriteKit

import AVFoundation

class GameViewController: UIViewController {
    
    var scene: GameScene!
    
    lazy var backgroundMusic: AVAudioPlayer? = {
        guard let url = Bundle.main.url(forResource: "something", withExtension: "mp3") else {
            return nil
        }
        do {
            let player = try AVAudioPlayer(contentsOf: url)
            player.numberOfLoops = -1
            return player
        } catch {
            return nil
        }
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            view.isMultipleTouchEnabled = false
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
            
            scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .aspectFill
            view.presentScene(scene)
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait]
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
