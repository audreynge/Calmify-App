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
                    .position(x: UIScreen.main.bounds.width * 0.35, y: UIScreen.main.bounds.height * 0.21)
                
            }
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
