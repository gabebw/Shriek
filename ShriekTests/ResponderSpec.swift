import Quick
import Nimble
import Shriek

class ResponderSpec: QuickSpec {
    override func spec() {
        describe("foo") {
            it("should pass") {
                expect("hello world") == "hello world"
            }
        }
    }
}
