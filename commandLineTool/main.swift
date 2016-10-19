enum WeekDay: Int, Comparable {
    case Sun, Mon, Tue, Wed, Thu, Fri, Sat
}

func < (lhs:WeekDay, rhs:WeekDay) -> Bool{
    return lhs.rawValue < rhs.rawValue
} //ComparableはEquilableを継承していて「<」のみを定義すればよい