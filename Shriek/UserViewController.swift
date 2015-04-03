import Cocoa

class UserViewController: NSViewController {
    let segueIdentifier = "UsernameToTwitterSegue"

    @IBOutlet weak var usernameField: NSTextField!
    @IBAction func submit(sender: NSButton) {
        performSegueWithIdentifier(segueIdentifier, sender: self)
    }

    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == segueIdentifier {
            let vc = segue.destinationController as ViewController
            let user = User()
            vc.user = user
            vc.twitter = Twitter(user: user)
        }
    }
}