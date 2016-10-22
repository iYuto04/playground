struct Ounce{
    var ml:Double = 0.0
    static let ouceUS = 29.5735
    init(ounce:Double){
        self.ounce = ounce
    }
    var ounce: Double {
        get{
            return ml / Ounce.ouceUS
        }
        set{
            ml = newValue * Ounce.ouceUS
        }
    }
}

extension Ounce:FloatLiteralConvertible{
    init(floatLiteral value: Double){
        self.init(ounce: value)
    }
}


//var a = Ounce(ounce: 2.0)
//print(a.ml)
//a.ounce += 8.0
//print(a.ounce)

var a: Ounce
a = 10.0
print(a.ml)
