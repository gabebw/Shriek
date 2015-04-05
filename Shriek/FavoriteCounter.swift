import Foundation

public struct FavoriteCounter: FavoriteCounterProtocol {
    public init(){
    }

    public func count(followerCount: Int) -> Int {
        // Up to 50% of a user's followers might fav a tweet
        let maximum = UInt32(round(Double(followerCount)/2.0))

        return Int(arc4random_uniform(maximum)) + 1
    }
}