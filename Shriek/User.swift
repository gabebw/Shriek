import Foundation

public class User {
    public var followerCount: Int
    
    public init() {
        self.followerCount = 2
    }

    public func addFollower() {
        self.followerCount = followerCount + 1
    }
}