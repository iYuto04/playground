class Item{
    var price: Double = 0
    
    //税込み価格
    var intaxPrice: Double{
        //値を取得するときに呼ばれる.
        get{
            return self.price*1.08
        }
        //値がセットされるときに呼ばれる
        set(p){
            price = p/1.08
        }
    }
}

var item = Item()
item.intaxPrice = 108
print("税抜価格",Int(item.price),"円")
print("税込価格",Int(item.intaxPrice),"円")

var item2 = Item()
item2.price = 200
print("税抜価格",Int(item2.price),"円")
print("税込価格",Int(item2.intaxPrice),"円")