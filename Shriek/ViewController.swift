import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var tweetField: NSTextField!
    @IBOutlet weak var responseField: NSTextField!
    
    var user: User?
    var twitter: Twitter?

    @IBAction func tweet(sender: NSButton) {
        let tweetText = tweetField.stringValue
        twitter?.tweet(tweetText)
    }
}