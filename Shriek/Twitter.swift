import Foundation

public struct Twitter {
    public let user: User
    
    public init(user: User) {
        self.user = user
    }
    
    public func tweet(text: String) -> TweetResponse {
        let response = TweetResponse(favoriteCount: 0, retweetCount: 0)
    
        return response
    }
}