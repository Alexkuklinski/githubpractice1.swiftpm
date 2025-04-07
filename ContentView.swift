import SwiftUI

struct ContentView: View {
    @State var textSize = 100.00
    var body: some View {
        VStack {
            Text("Calliope")
                .frame(width: textSize, height: textSize/2)
                .background(.green)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            Button {
                withAnimation(.easeIn) {
                    textSize += 10.0
                }
            } label: {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 150, height: 75)
                    .overlay {
                        Text("Increase Size")
                            .foregroundStyle(.black)
                    }
            }

        }
    }
}
