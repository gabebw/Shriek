import Foundation

public struct Twitter {
    public var user: User
    public let favoriteCounter: FavoriteCounterProtocol
    
    public init(user: User, favoriteCounter: FavoriteCounterProtocol) {
        self.user = user
        self.favoriteCounter = favoriteCounter
    }

    public init(user: User) {
        self.user = user
        self.favoriteCounter = FavoriteCounter()
    }

    public func tweet(text: String) -> String {
        let favoriteCount = favoriteCounter.count(user.followerCount)

        if favoriteCount >= favoritesRequiredForNewFollower() {
            user.addFollower()
            return "You got enough favorites to add a follower!"
        } else {
            return "Your tweet was not popular. Like, at all. Try again."
        }
    }

    public func favoritesRequiredForNewFollower() -> Int {
        return user.followerCount/3
    }
}