import UIKit
import AVFoundation
import Vision

class ProductViewController: UIViewController {
    
    @IBOutlet var productView: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var productPhoto: UIImageView!
    
    var productID: String!
    var productCatalog: [String: [String: Any]]!
    
    @IBAction func dismissProductView(_ sender: Any) {
        dismiss(animated: true) {
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Read the product catalog from the plist file into the dictionary.
        if let path = Bundle.main.path(forResource: "ProductCatalog", ofType: "plist") {
            productCatalog = NSDictionary(contentsOfFile: path) as? [String: [String: Any]]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Give the view rounded corners.
        productView.layer.cornerRadius = 10
        productView.layer.masksToBounds = true
        
        if productID != nil {
            guard productCatalog[productID] != nil else {
                return
            }
            label.text = (productCatalog[productID]?["label"] as? String)?.localized()
            if let productImage = UIImage(named: productID + ".png") {
                productPhoto.image = productImage
            }
        }
    }
}

extension String {
    // return string defined in Localizable.string file, if key not found, return base language
    func localized() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}
