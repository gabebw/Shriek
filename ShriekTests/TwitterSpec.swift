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
                var twitter = Twitter(favoriteCounter: mockFavoriteCounter)
                let oldFollowerCount = twitter.user.followerCount

                twitter.tweet("whatever")

                expect(twitter.user.followerCount).to(equal(oldFollowerCount + 1))
            }
        }
    }
}
