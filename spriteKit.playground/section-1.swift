// Playground - noun: a place where people can play

import SpriteKit
import XCPlayground

let theRect = CGRectMake(0, 0, 400, 400)
let view = SKView(frame: theRect)
let scene = SKScene(size: theRect.size)
scene.scaleMode = .AspectFill
scene.backgroundColor = SKColor.grayColor()
view.presentScene(scene)
XCPShowView("myView", view)

for _ in 0..<50 {
    let box = SKShapeNode(rectOfSize: CGSizeMake(20, 20))
    let px = arc4random_uniform(UInt32(theRect.width))
    let py = arc4random_uniform(UInt32(theRect.height))
    box.position = CGPointMake(CGFloat(px), CGFloat(py))
    scene.addChild(box)
    
    let rotate = SKAction.rotateByAngle(CGFloat(M_PI), duration: 1)
    let action = SKAction.repeatAction(rotate, count: 5)
    box.runAction(action)
}
