import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var tweetField: NSTextField!
    @IBOutlet weak var responseField: NSTextField!
    @IBOutlet weak var followerLabel: NSTextField!
    
    var twitter = Twitter(favoriteCounter: FavoriteCounter())

    @IBAction func tweet(sender: NSButton) {
        let tweetText = tweetField.stringValue

        let response = twitter.tweet(tweetText)

        followerLabel.stringValue = "\(twitter.user.followerCount ?? 0) followers"
        responseField.stringValue = response
    }
}