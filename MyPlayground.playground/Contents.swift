//: Playground - noun: a place where people can play

import UIKit
import RxSwift
import RxCocoa

let a = Variable(1)
let b = combineLatest(a, Variable(1), +)

var ret: Int = 0
b >- subscribeNext{ next in
    ret = next
}

println(ret)

a.next(10)

println(ret)
