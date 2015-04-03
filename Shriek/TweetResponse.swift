import Foundation

public struct TweetResponse {
    public let favoriteCount: Int
    public let retweetCount: Int
    
    public init(favoriteCount: Int, retweetCount: Int) {
        self.favoriteCount = favoriteCount
        self.retweetCount = retweetCount
    }
}