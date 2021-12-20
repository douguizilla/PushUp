import SwiftUI

struct LandingView: View {
    var body: some View {
        GeometryReader{ proxy in
            VStack{
                Spacer()
                    .frame(
                        height: proxy.size.height * 0.2
                    )
                Text("PushUp")
                    .font(
                        .system(
                            size: 64,
                            weight: .medium
                        )
                    )
                Spacer()
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
            .background(
                Image("pushup")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
            )
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().previewDevice("iPhone 11 Pro")
    }
}
