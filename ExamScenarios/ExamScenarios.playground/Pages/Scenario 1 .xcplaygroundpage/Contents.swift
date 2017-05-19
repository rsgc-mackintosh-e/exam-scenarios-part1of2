//: [Previous](@previous) / [Next](@next)
//: # Scenario 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Dead Kennedys](DeadKennedys.png "Dead Kennedys")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

canvas.fillColor = Color.init(hue: 20, saturation: 78, brightness: 98, alpha: 100)

canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

//for c in stride(from: 0, through: 100, by: 25) {
//    canvas.fillColor = Color.init(hue: 20, saturation: 78, brightness: 98, alpha: c)
//}

canvas.defaultBorderWidth = 2

canvas.borderColor = Color.purple

//canvas.fillColor = Color.init(hue: 20, saturation: 78, brightness: 30, alpha: 100)

//Draw the grid of squares
for x in stride(from: 0, through: 400, by: 100) {
    for y in stride(from: 0, through: 300, by: 100) {
        for c in stride(from: 0, through: 100, by: 25){
        
        canvas.fillColor = Color.init(hue: 20, saturation: 78, brightness: 30, alpha: c)
        
        
          canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 100, height: 100)
        
            
        }
    }

}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
