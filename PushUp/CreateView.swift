import SwiftUI

struct CreateView: View{
    @StateObject var viewModel = CreateChallengeViewModel()
    @State private var isAtive = false
    
    var dropdownList : some View {
        ForEach(viewModel.dropdowns.indices, id: \.self){ index in
            DropdownView(viewModel :  $viewModel.dropdowns[index])
        }
    }
    
    var actionSheet : ActionSheet {
        ActionSheet(
            title: Text("Select"),
            buttons: viewModel.displayedOptions.indices.map{ index in
                let option = viewModel.displayedOptions[index]
                return ActionSheet.Button.default(
                    Text(option.formattedValue)
                ){
                    viewModel.send(.selectOption(index: index))
                }
            }
        )
    }
    
    var body: some View {
        ScrollView{
            VStack{
                dropdownList
                Spacer()
                NavigationLink(destination: RemindView(), isActive: $isAtive){
                    Button(action: {
                        isAtive = true
                    }){
                        Text("Next")
                            .font(.system(size: 24, weight: .medium))
                    }
                }
            }
            .actionSheet(
                isPresented: Binding<Bool>(
                    get: { viewModel.hasSelectedDropdown },
                    set: {_ in })){
                        actionSheet
                    }
            .navigationTitle("Create")
            .navigationBarBackButtonHidden(true)
            .padding(.bottom, 15)
        }
        
    }
}

struct CreateView_Previews: PreviewProvider{
    
    static var previews: some View {
        CreateView()
    }
}
