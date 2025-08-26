
class MinStack {

    var stack = [Int]()
    var minStack = [Int]() // ⭐️

    init() {}
    
    func push(_ val: Int) {
        stack.append(val)
        if let lastMin = minStack.last {
            minStack.append(min(val, lastMin))
        } else {
            minStack.append(val)
        }
    }
    
    func pop() { 
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int { // 내장함수 .min() 는 O(n)
        return minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */