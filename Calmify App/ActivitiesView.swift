import SwiftUI

struct ActivitiesView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("bluebg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .clipped()
                    .edgesIgnoringSafeArea(.all)
                
                Image("Choose your activity")
                    .position(x: UIScreen.main.bounds.width * 0.35, y: UIScreen.main.bounds.height * 0.18)
                
                NavigationLink(destination:BreathingView()){
                    Image("breathingexercisescloud")
                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                        .position(x: UIScreen.main.bounds.width * 0.27, y: UIScreen.main.bounds.height * 0.38)
                }
                    
                NavigationLink(destination:StressTipsView()){
                    Image("stresstipscloud")
                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                        .position(x: UIScreen.main.bounds.width * 0.65, y: UIScreen.main.bounds.height * 0.52)
                }
                
                NavigationLink(destination:QuotesView()){
                    Image("quotescloud")

                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                        .position(x: UIScreen.main.bounds.width * 0.3, y: UIScreen.main.bounds.height * 0.69)
  
                }
                
                NavigationLink(destination:MentalHealthInfoView()){
                    Image("mentalhealthinfocloud")
                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                        .position(x: UIScreen.main.bounds.width * 0.7, y: UIScreen.main.bounds.height * 0.84)
  
                }
                
            }
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
