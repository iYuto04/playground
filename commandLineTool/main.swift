protocol Copyable {
    func copy() -> Self
}

class GeoPoint: Copyable, Equatable, CustomStringConvertible{
    let latitude: Double //緯度
    let longitude: Double //経度
    required init(lat:Double, lon:Double){ //必須イニシャライザ
        self.latitude = lat
        self.longitude = lon
    }
    func copy() -> Self { //ここでSelfとdynamicTypeを使う
    
        let nw = self.dynamicType.init(lat:latitude, lon:longitude)
        return nw
    }
    
    var description: String{
        return "GeoPoint: \(latitude), \(longitude)"
    }
}

func == (lhs: GeoPoint, rhs:GeoPoint) -> Bool{
    return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
}

class ViewPoint :GeoPoint {
    let name: String
    required init(lat: Double, lon: Double) {
        self.name = "(none)"
        super.init(lat: lat, lon: lon)
    }
    required init(name: String, lat: Double, lon: Double){
        self.name = name
        super.init(lat: lat, lon: lon)
    }
    override func copy() -> Self {
        return self.dynamicType.init(name:name, lat:latitude, lon:longitude)
    }
    override var description : String {
        return "ViewPoint: \(name), \(latitude), \(longitude)"
    }
}

var g0 = GeoPoint(lat: 35.70040, lon: 139.77217)
var g1 = g0.copy()
print(g1)

var g2 = ViewPoint(name: "松本城", lat: 36.23, lon: 137.96)
var g3 = g2.copy()
print(g3)
print(g1 == g3)
