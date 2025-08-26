// 삭제: head 에서
// 추가: tail 에

class MyCircularQueue {
    var queue: Array<Int>
    var head: Int = 0
    var tail: Int = 0

    init(_ k: Int) {
        queue = Array(repeating: -1, count: k)
    }
    
    func enQueue(_ value: Int) -> Bool {
        if isEmpty() {
            queue[tail] = value
            return true
        }

        if !isFull() {
            if tail + 1 == queue.count {
                tail = 0
            } else {
                tail += 1
            }
            queue[tail] = value
            return true
        } 
        return false
    }
    
    func deQueue() -> Bool {
        if !isEmpty() {
            queue[head] = -1
            if head == tail && queue[head] == -1 {
                return true
            } else {
                if head + 1 == queue.count {
                    head = 0
                } else {
                    head += 1
                }
                return true
            }
        }
        return false
    }
    
    func Front() -> Int {
        queue[head]
    }
    
    func Rear() -> Int {
        queue[tail]
    }
    
    func isEmpty() -> Bool {
        (head == tail) && (queue[head] == -1) ? true : false
    }
    
    func isFull() -> Bool {
        if tail + 1 == queue.count {
            return head == 0 ? true : false
        } 

        return tail + 1 == head ? true : false
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */