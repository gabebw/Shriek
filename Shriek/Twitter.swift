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

    public func tweet(text: String) {
        let favoriteCount = favoriteCounter.count(user.followerCount)

        if favoriteCount >= favoritesRequiredForNewFollower() {
            user.addFollower()
        }
    }

    public func favoritesRequiredForNewFollower() -> Int {
        return 1
    }
}