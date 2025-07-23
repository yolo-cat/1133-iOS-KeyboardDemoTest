import SwiftUI
import PlaygroundSupport
//
//struct ContentView: View {
//    // QWERTY 鍵盤排列
//    let rows = [
//        Array("QWERTYUIOP"),
//        Array("ASDFGHJKL"),
//        Array("ZXCVBNM")
//    ]
//
//    var body: some View {
//        ZStack {
//            Color.gray
//                .edgesIgnoringSafeArea(.all)
//
//            VStack(spacing: 10) {
//                ForEach(rows, id: \.self) { row in
//                    HStack(spacing: 5) {
//                        ForEach(row, id: \.self) { letter in
//                            KeyButton(letter: String(letter))
//                        }
//                    }
//                }
//            }
//            .padding()
//        }
//    }
//}
//
//struct KeyButton: View {
//    let letter: String
//
//    var body: some View {
//        Button(action: {
//            print("\(letter) 按下")
//        }) {
//            Text(letter)
//                .font(.system(size: 20, weight: .bold))
//                .frame(width: 35, height: 50)
//                .background(Color.white)
//                .foregroundColor(.black)
//                .cornerRadius(5)
//                .shadow(radius: 2)
//        }
//    }
//}
//
//PlaygroundPage.current.setLiveView(ContentView())

//var hello = "Hello, world"
//print(hello)
//
//let english = ":)"
//print(english)

struct Person {
    private var name: String
    private(set) var phone: Int
    
    init(name: String, phone: Int) {
        self.name = name
        self.phone = phone
    }
    
    mutating func updateName(name: String) {
        print("Update Your Name")
        self.name = name
    }
}

//var joseph = Person(name: "JosephTao", phone: 09123456789)
//print(joseph)
//print(joseph.phone)
//
////harry.phone = 0000
////print(harry)
//
//var peter = Person(name: "PeterWong", phone: 0123)
//print(peter)
//
////peter.phone = 4567
////print(peter)
//
//struct Animal {
//    var name: String
//    var code: Int
//}
//
//var kitty = Animal(name: "Kitty", code: 007)
//print(kitty)
//
//joseph.updateName(name: "Joseph Tao")
//print(joseph)
//

//for i in 1...10 {
//    print(i)
//}
//
//(20...25).forEach {
//    i in
//    print(i)
//}

//struct ListData: View {
//    
//}

struct ListDataDemo: View {
    let items = [ "A", "B", "C"]
    
    var body: some View {
        HStack {
            List(items,id: \.self) {
                item in
                Text(item)
                ZStack {
                    KeyButton(letter: "ok")
                }
            }
        }
    }
}

                    struct KeyButton: View {
                        let letter: String
                    
                        var body: some View {
                            Button(action: {
                                print("\(letter) 按下")
                            }) {
                                Text(letter)
                                    .font(.system(size: 20, weight: .bold))
                                    .frame(width: 35, height: 50)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(5)
                                    .shadow(radius: 2)
                            }
                        }
                    }



PlaygroundPage.current.setLiveView(ListDataDemo())
