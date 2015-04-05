import Quick
import Nimble
import Shriek

class FavoriteCounterSpec: QuickSpec {
    override func spec() {
        describe("#count") {
            it("is a number between  1 - 50% of followers") {
                let counter = FavoriteCounter()

                let count = counter.count(10)

                expect(count) > Int(0)
                expect(count) <= Int(5)
            }
        }
    }
}