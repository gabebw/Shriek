import Foundation

public struct Twitter {
    public var user: User
    var tweets: [String] = []
    public let favoriteCounter: FavoriteCounterProtocol
    
    public init(favoriteCounter: FavoriteCounterProtocol) {
        self.user = User()
        self.favoriteCounter = favoriteCounter
    }

    public mutating func tweet(text: String) -> String {
        if contains(self.tweets, text) {
            return "At least TRY to be original."
        } else {
            self.tweets.insert(text, atIndex: 0)
            let favoriteCount = favoriteCounter.count(user.followerCount)

            if favoriteCount >= favoritesRequiredForNewFollower() {
                user.addFollower()
                return "You got enough favorites to add a follower!"
            } else {
                return "Your tweet was not popular. Like, at all. Try again."
            }
        }
    }

    public func favoritesRequiredForNewFollower() -> Int {
        return user.followerCount/3
    }
}