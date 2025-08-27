
class MyHashMap {

    private var hashmap: [Int: Int]

    init() {
        hashmap = [Int: Int]()
    }
    
    func put(_ key: Int, _ value: Int) {
        hashmap.updateValue(value, forKey: key)
    }
    
    func get(_ key: Int) -> Int {
        hashmap[key] ?? -1
    }
    
    func remove(_ key: Int) {
        if hashmap.contains(where: { $0.key == key }) {
            hashmap.removeValue(forKey: key)
        }
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */