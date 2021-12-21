import SwiftUI

struct CreateView: View{
    @State private var isAtive = false
    var body: some View {
        ScrollView{
            VStack{
                DropdownView()
                DropdownView()
                DropdownView()
                DropdownView()
                Spacer()
                NavigationLink(destination: RemindView(), isActive: $isAtive){
                    Button(action: {
                        isAtive = true
                    }){
                        Text("Next")
                            .font(.system(size: 24, weight: .medium))
                    }
                }
            }.navigationTitle("Create")
                .navigationBarBackButtonHidden(true)
            padding(.bottom, 15)
        }
    }
}

struct CreateView_Previews: PreviewProvider{
    
    static var previews: some View {
        CreateView()
    }
}
