import Quick
import Nimble
import Shriek

struct MockFavoriteCounter: FavoriteCounterProtocol {
    let favoriteCount: Int

    init(favoriteCount: Int) {
        self.favoriteCount = favoriteCount
    }

    func count(followerCount: Int) -> Int {
        return favoriteCount
    }
}

class TwitterSpec: QuickSpec {
    override func spec() {
        describe("#tweet") {
            it("adds a follower if the tweet got at least 1 favorite") {
                let mockFavoriteCounter = MockFavoriteCounter(favoriteCount: 1)
                var user = User()
                var oldFollowerCount = user.followerCount
                let text = "My first tweet!"
                let twitter = Twitter(user: user, favoriteCounter: mockFavoriteCounter)

                twitter.tweet(text)

                expect(user.followerCount).to(equal(oldFollowerCount + 1))
            }
        }
    }
}
