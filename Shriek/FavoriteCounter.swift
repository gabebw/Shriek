import Foundation

public struct FavoriteCounter: FavoriteCounterProtocol {
    public init(){
    }

    public func count(followerCount: Int) -> Int {
        return Int(round(Double(followerCount)/2.0))
    }
}