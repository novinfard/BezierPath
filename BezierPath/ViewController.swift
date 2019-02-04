import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var arrowView: ArrowView!
	private var reverseAnimation = true
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	@IBAction func AnimatePressed(_ sender: AnyObject) {
		self.reverseAnimation.toggle()
		let (leadingPercentage, trailingPercentage) = self.reverseAnimation ? (Int8(0), Int8(0)) : (Int8(50), Int8(50))
		
		self.arrowView.setup(leadingPercentage: leadingPercentage,
							 trailingPercentage: trailingPercentage,
							 animate: true)
	}
}

