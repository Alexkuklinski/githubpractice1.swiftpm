import SwiftUI

struct ContentView: View {
    @State var textSize = 100.00
    
    @State var name = ""
    @State var update = "Alex"
    var body: some View {
        Text("Made by: Alex and Calliope")
        
        Spacer(minLength: 100)
        
        Text("\(update)")
        TextField("Enter Name", text: $name)
        Button{
            update = name
        }label: {
            Text("update")
        }
            VStack {
                Button {
                    withAnimation(.easeOut) {
                        textSize -= 10.0
                    }
                } label: {
                    Text("Decrease Size")
                        .frame(width: textSize, height: textSize/2)
                        .background(.green)
                        .foregroundStyle(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                }
                
                Button {
                    withAnimation(.easeIn) {
                        textSize += 10.0
                    }
                } label: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: textSize * 2, height: textSize)
                        .overlay {
                            Text("Increase Size")
                                .foregroundStyle(.black)
                        }
                }
                
                Spacer()
                
            }
        }
    }
