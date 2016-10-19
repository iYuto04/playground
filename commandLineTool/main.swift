enum WeekDay: Int, ForwardIndexType {
    case Sun, Mon, Tue, Wed, Thu, Fri, Sat
    case _dummy
    
    func successor() -> WeekDay {
        if self == WeekDay._dummy{
            return ._dummy
        }
        return WeekDay(rawValue: self.rawValue + 1)!
    }
}

for i in WeekDay.Mon ... .Sat {
    print(i.rawValue, terminator: " ")
}
print("")
