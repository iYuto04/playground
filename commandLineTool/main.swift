protocol VectorType{
    typealias Element
    var x: Element { get set }
    var y: Element { get set }
}

protocol VectorUnsignedType {
    typealias Element: UnsignedIntegerType//UIntなどの符号なし整数が適合する
}
struct VectorUInt: VectorType, VectorUnsignedType {
    var x, y :UInt
}

struct VectorFloat : VectorType {
    var x, y: Float //具体的な型を指定
    func convToDouble() -> VectorDouble{
        return VectorDouble(x: VectorDouble.Element(x), y: VectorDouble.Element(y))
    }

}

struct VectorDouble : VectorType,CustomStringConvertible{
    var x, y: Double
    var  description: String { return "[\(x), \(y)]" }
}

protocol VectorIntegerType{
    typealias Element: IntegerType //付属型に適合するプロトコルを指定
    var x: Element { get set }
    var y: Element { get set }
}

struct VectorGrade: VectorType {
    enum Element {case A, B, C, D, X } //ネスト型を定義
    var x, y: Element
}

struct VectorInt: VectorIntegerType {
    var x, y: Int
    mutating func add(x x:Int, y:Int){
        self.x += x
        self.y += y
    }
}

struct VectorUInt16: VectorIntegerType {
    var x, y: UInt16
}

//var a = VectorFloat(x: 10.0, y: 12.0)
//print(a)
//let b = a.convToDouble()
//print(b)

let mx: VectorInt.Element = 10
var a = VectorInt(x: mx, y: -7)
a.add(x: 10, y: 9)
print(a)