import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("homescreen")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .clipped()
                    .edgesIgnoringSafeArea(.all)
                
                Image("headcloudimg")
                    .frame(width: 100, height: 100)
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height * 0.57)
                
                NavigationLink(destination: ActivitiesView()) {
                    Image("relaxtext")
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height * 0.817)
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
