
let inputLine = readLine()!

if let N = Int(inputLine){
    print("\n" + String(N))
    var strikeCount = 0
    var ballCount = 0
    
    for i in 1 ... N - 1{
        print(i)
        let call = readLine()!
        print("test:")
        print(call)
        
        if call == "strike"{
            print("strike!")
            strikeCount += 1
            if strikeCount == 3{
                print("out!")
            }
        } else {
            print("ball!")
            ballCount += 1
            if ballCount == 4{
                print("fourball!")
            }
        }

    }
}
print("end")
        