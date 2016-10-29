//プロトコルを作る.
protocol Aisatsu{
    func sayHello() -> String
}

//依頼人クラス
class Tanomu {
    //ここでプロトコルに従うクラスのインスタンスを用意する.
    var delegate: Aisatsu!
    func say() -> String{
        return delegate.sayHello()
    }
}

class Tanomareru: Aisatsu {
    func sayHello() -> String{
        return "Hello, World!"
    }
}

let Yuto = Tanomu()
let Yamato = Tanomareru()

Yuto.delegate = Yamato
print(Yuto.say())