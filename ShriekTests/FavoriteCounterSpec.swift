import Quick
import Nimble
import Shriek

class FavoriteCounterSpec: QuickSpec {
    override func spec() {
        describe("#count") {
            it("is always 1/2 of followers right now") {
                let counter = FavoriteCounter()

                expect(counter.count(10)).to(equal(5))
            }

            it("rounds up") {
                let counter = FavoriteCounter()

                expect(counter.count(3)).to(equal(2))
            }
        }
    }
}