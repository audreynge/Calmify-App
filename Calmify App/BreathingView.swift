import SwiftUI

struct BreathingView: View {
    
    @State var isCenter = true
    @State var isCenter2 = true
    
    var body: some View {
        ZStack{
            
            Image("bluebg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .clipped()
                .edgesIgnoringSafeArea(.all)
            
            Circle()
            .frame(width:100,height:100)
                .foregroundColor(Color("lightpurple").opacity(0.5))
                .offset(x: isCenter ? 0 : 50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            Circle()
            .frame(width:100,height:100)
                .foregroundColor(Color("lightpurple").opacity(0.5))
                .offset(x: isCenter ? 0 : -50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            Circle()
            .frame(width:100,height:100)
                .foregroundColor(Color("lightpurple").opacity(0.5))
                .offset(y: isCenter ? 0 : 50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            Circle()
            .frame(width:100,height:100)
                .foregroundColor(Color("lightpurple").opacity(0.5))
                .offset(y: isCenter ? 0 : -50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
   
        }
         
        .onAppear(){
            let animation = Animation.linear(duration: 5)
            withAnimation(animation.repeatForever(autoreverses: true)){
                self.isCenter = false
                
            }
            
            withAnimation(animation.repeatForever(autoreverses: true)){
                self.isCenter2 = false
            }
            
        }
    }
}

struct BreathingView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingView()
    }
}
