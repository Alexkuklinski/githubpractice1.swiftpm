import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var update = "Alex"
    var body: some View {
        Text("\(update)")
        TextField("Enter Name", text: $name)
        Button{
           update = name
        }label: {
            Text("update")
        VStack {
            Text("Calliope")
        }
    }
}
