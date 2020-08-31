

import UIKit
import MobileCoreServices

class ActionViewController: UIViewController {
    
    var urlString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let extensionItem = extensionContext?.inputItems[0] as! NSExtensionItem
        let contentTypeURL = kUTTypeURL as String
        
        for attachment in extensionItem.attachments! {
            if attachment.hasItemConformingToTypeIdentifier(kUTTypeURL as String) {
                attachment.loadItem(forTypeIdentifier: contentTypeURL, options: nil, completionHandler: { (results, error) in
                    let url = results as! NSURL
                    self.urlString = url.absoluteString!
                })
            }
        }

    }

    
    @IBAction func done() {
        self.extensionContext!.completeRequest(returningItems: self.extensionContext!.inputItems, completionHandler: nil)
   
        let sharedDefaults = UserDefaults(suiteName: "group.ru.tasya.Download")
        sharedDefaults?.set(urlString, forKey: "URL")
        print(urlString)

    }

}
