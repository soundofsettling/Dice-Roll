import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDice1: UIImageView!
    @IBOutlet weak var imgDice2: UIImageView!
    
    var images:[UIImage] = [];
    
    override func viewDidLoad() {
        images = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        super.viewDidLoad()
    }


    @IBAction func btnRollOnClick(_ sender: UIButton) {
        imgDice1.image = images[ Int.random(in: 0...5) ]
        imgDice2.image = images.randomElement()
    }
    
}

    
