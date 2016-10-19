protocol Personal {
    var name: String {get}
    init(name: String)
    func sayHelloTo(p:Personal)
    func saySomething() -> String //プロトコル側のメソッドの宣言にはメソッドメイト引数列,返り値の型のみ.ブロックは記述しない
}
enum Sex { case Male, Female}

protocol HealthInfo: Personal{
    var weight: Double { get set }
    var height: Double { get set }
    var sex: Sex? { get }
}

class Citizen: Personal {
    let name: String
    required init(name:String) {
        self.name = name
    }
    func sayHelloTo(p:Personal){
        print("どうも." + p.name + "さん")
    }
    func saySomething() -> String{
        return "なるほど"
    }
}

struct Person: HealthInfo {
    let name: String
    let sex: Sex?
    var weight = 0.0
    var height = 0.0
    init(name: String) {
        self.name = name
        sex = nil
    }
    init(name: String, sex:Sex){ // 新しいイニシャライザ
        self.name = name
        self.sex = sex
    }
    func sayHelloTo(p: Personal) {
        if let w = p as? HealthInfo where self.sex == w.sex{
            print("やあ," + p.name + ". ")
        } else {
            print("こんにちは.")
        }
    }
    func saySomething() -> String {
        return "すごいな"
    }
}

let sachi = Person(name: "幸", sex: Sex.Female)
let yumi = Person(name: "由美子", sex: Sex.Female)
let chiz = Citizen(name: "千鶴")
sachi.sayHelloTo(yumi)
sachi.sayHelloTo(chiz)


