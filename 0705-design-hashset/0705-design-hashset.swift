// hash function 을 내가 결정?

class MyHashSet {

    var set = Set<Int>()

    init() {}
    
    func add(_ key: Int) {
        set.insert(key)
    }
    
    func remove(_ key: Int) {
        if set.contains(key) {
            set.remove(key)
        }
    }
    
    func contains(_ key: Int) -> Bool {
        set.contains(key)
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */