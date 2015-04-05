import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var tweetField: NSTextField!
    @IBOutlet weak var responseField: NSTextField!
    @IBOutlet weak var followerLabel: NSTextField!
    
    var user: User
    var twitter: Twitter

    required init?(coder: NSCoder) {
        self.user = User()
        self.twitter = Twitter(user: user)

        super.init(coder: coder)
    }

    @IBAction func tweet(sender: NSButton) {
        let tweetText = tweetField.stringValue
        twitter.tweet(tweetText)

        followerLabel.stringValue = "\(user.followerCount ?? 0) followers"
    }
}