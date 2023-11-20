import SwiftUI

struct ContentView: View {
    fileprivate func extractedFunc(text: String, size: CGFloat = 20) -> Text {
        return Text(text)
            .font(.custom("YSDisplay-Medium", size: size))
            .foregroundColor(Color(UIColor.white))
    }
    
    var body: some View {
        ZStack {
            Color(UIColor.black).ignoresSafeArea()
            VStack {
                HStack {
                    extractedFunc(text: "Вопрос")
                    Spacer()
                    extractedFunc(text: "1/10")
                }.border(.green)
                Image(systemName: "")
                    .background(Color(UIColor.gray))
                    .aspectRatio(2/3, contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .cornerRadius(20)
                    .border(.green)
                extractedFunc(text: "Вопрос", size: 23)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(UIColor.white))
                HStack {
                    Button("Да") {
                    }
                    .font(.custom("YSDisplay-Medium", size: 20))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(UIColor.gray))
                    .cornerRadius(15)
                    .foregroundColor(Color(UIColor.ypBlack))

                    Button("Нет") {
                    }
                    .font(.custom("YSDisplay-Medium", size: 20))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(UIColor.gray))
                    .cornerRadius(15)
                    .foregroundColor(Color(UIColor.ypBlack))

                }
                .frame(height: 60)
            }
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
