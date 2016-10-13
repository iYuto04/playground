class ICCard {
    static let Deposit = 500
    var money = 0
    required init(charge: Int){
        money = charge - ICCard.Deposit
    }
}

class Icocai: ICCard{
    static var serial = 0
    let idnumber: Int
    
    init(id: Int, money: Int){
        idnumber = id
        super.init(charge: money)
    }
    
    required init(charge:Int){
        idnumber = ++Icocai.serial
        super.init(charge: charge)
    }
}

let a = Icocai(charge: 1000)
print(a.money)
