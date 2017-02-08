import Foundation
import PromiseKit

class PromiseTest {
    func test() {
        firstly {
            self.first()
        }.then { value in
            self.second(value: value)
        }.always {
            print("done")
        }
    }
    
    func first() -> Promise<String> {
        print("first")
        return Promise { fulfill, reject in
            fulfill("value")
        }
    }
    
    func second(value: String) -> Promise<[String]> {
        print("second")
        return Promise { fulfill, reject in
            print("second fulfill")
            fulfill([value])
        }
    }
}


PromiseTest().test()

