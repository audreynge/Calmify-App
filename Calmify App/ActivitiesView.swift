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
                    .position(x: UIScreen.main.bounds.width * 0.33, y: UIScreen.main.bounds.height * 0.175)
                
            VStack{
                NavigationLink(destination:BreathingView()){
                    Image("breathingexercisescloud")
                }
                .position(x: UIScreen.main.bounds.width * 0.27, y: UIScreen.main.bounds.height * 0.37)
                
                NavigationLink(destination:StressTipsView()){
                    Image("stresstipscloud")
                }
                .position(x: UIScreen.main.bounds.width * 0.65, y: UIScreen.main.bounds.height * 0.25)
                
                NavigationLink(destination:QuotesView()){
                    Image("quotescloud")

                }
                .position(x: UIScreen.main.bounds.width * 0.3, y: UIScreen.main.bounds.height * 0.18)
                
                NavigationLink(destination:MentalHealthInfoView()){
                    Image("mentalhealthinfocloud")
                        
                    
                }
                .position(x: UIScreen.main.bounds.width * 0.7, y: UIScreen.main.bounds.height * 0.08)
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
