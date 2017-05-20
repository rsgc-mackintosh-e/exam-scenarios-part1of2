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

canvas.drawShapesWithBorders = false

//canvas.fillColor = Color.init(hue: 20, saturation: 78, brightness: 30, alpha: 100)

canvas.translate(byX: 325, byY: 0)
canvas.rotate(by: 45)

//Draw the grid of squares
for x in stride(from: 0, through: 300, by: 100) {
    for y in stride(from: 0, through: 300, by: 100) {
        
        //Color the bottom left and top right
        if x + y == 0 || x + y == 600 {
            canvas.fillColor = Color.black
        }
        
        //Color the 2nd and 4th row
        if x + y == 100 || x + y == 500 {
            canvas.fillColor = Color.init(hue: 19, saturation: 87, brightness: 31, alpha: 100)
            
        }
        
        //Color the 3rd and 5th row
        if x + y == 200 || x + y == 400 {
            canvas.fillColor = Color.init(hue: 20, saturation: 82, brightness: 56, alpha: 100)
        }
        
        //Color the middle row
        if x + y == 300 || x + y == 300 {
            canvas.fillColor = Color.init(hue: 20, saturation: 79, brightness: 77, alpha: 100)
        }
        
        
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 110, height: 110)
        
        
        
    }
    
}

canvas.translate(byX: 0, byY: 400)
canvas.textColor = Color.black
canvas.drawText(message: "dead kennedys", size: 40, x: 1, y: 10)

//Draw the 1st box of text
canvas.textColor = Color.white
canvas.drawText(message: "with arizona's", size: 10, x: 10, y: -20)
canvas.drawText(message: "the feedback plus", size: 10, x: 10, y: -35)
canvas.drawText(message: "l.a.'s black flag", size: 10, x: 10, y: -50)

//Draw the 2nd Box of text
canvas.drawText(message: "wednesday", size: 10, x: 115, y: -20)
canvas.drawText(message: "october 10 1979", size: 10, x: 115, y: -35)
canvas.drawText(message: "admission", size: 10, x: 115, y: -50)

//Draw the 3rd Box of text
canvas.drawText(message: "mabuhay gardens", size: 10, x: 210, y: -22)
canvas.drawText(message: "443 broadway", size: 10, x: 210, y: -35)
canvas.drawText(message: "san francisco, ca", size: 10, x: 210, y: -50)

//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
