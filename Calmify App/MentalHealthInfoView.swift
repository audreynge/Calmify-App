import SwiftUI

struct MentalHealthInfoView: View {
    var body: some View {
        ZStack{
            Image("bluebg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .clipped()
                .edgesIgnoringSafeArea(.all)
            Image("mentalhealthheader")
                .position(x :173, y : 120)
            
            Image("mentalhealthinfotext")
                .position(x :240, y : 520)
            
            
        }
    }
}

struct MentalHealthInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealthInfoView()
    }
}
