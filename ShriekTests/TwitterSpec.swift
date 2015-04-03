import Quick
import Nimble
import Shriek

class TwitterSpec: QuickSpec {
    override func spec() {
        describe("#tweet") {
            it("returns a TweetResponse with some number of favorites") {
                let expectedFavoriteCount = 0
                let expectedRetweetCount = 0
                let user = User()
                let text = "My first tweet!"
                let twitter = Twitter(user: user)
                
                let response = twitter.tweet(text)
                
                expect(response.favoriteCount).to(equal(expectedFavoriteCount))
                expect(response.retweetCount).to(equal(expectedRetweetCount))
            }
        }
    }
}
