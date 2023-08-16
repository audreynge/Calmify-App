import SwiftUI
struct StressTipsView: View {
  @State private var tips = ""
  var body: some View {
    ZStack {
      Image("bluebg")
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .clipped()
      .edgesIgnoringSafeArea(.all)
      Image("Stress Management Tips")
        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.19)
      Image("1-5 Scale Question")
        .position(x : 190, y : 300)
      
        //Tired
        Button() {
          let tiredTipsArray = ["Eat often to have more energy", "Even if you feel to tired, get moving, regular exercise will make you feel less tired", "Sleep well, avoid taking naps in the day", "Drink more water,Sometimes you feel tired simply because you're mildly dehydrated"]
          let randomtiredTips = Int.random(in: 0..<tiredTipsArray.count)
          tips = tiredTipsArray[randomtiredTips]
          print(tiredTipsArray[randomtiredTips])
        }
          label: {
              Image("N1")
          }
          .position(x: UIScreen.main.bounds.width * 0.18, y: UIScreen.main.bounds.height * 0.5)
        
          Text("Tired")
              .font(.title)
              .fontWeight(.medium)
              .foregroundColor(Color("lightpurple"))
          
          
          //Tense
          Button() {
              _ = ["Watch something funny", "Drink green tea, it can make you relax","Organise your space, mess can really start to clutter up your mind","Light some candles, candlelight is known for its calming effects "]
          }
          label: {
              Image("N2")
              Text("Tense")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color("lightpurple"))
           }
          .position(x: UIScreen.main.bounds.width * 0.28, y: UIScreen.main.bounds.height * 0.58)
        
        //anxious
            Button() {
            }
          label: {
              Image("N3")
              Text("Anxious")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color("lightpurple"))
           }
          .position(x: UIScreen.main.bounds.width * 0.31, y: UIScreen.main.bounds.height * 0.665)
        
        //nervous
            Button() {
              _ = ["Close your eyes and count to 10 slowly", "Pop on your headphones and listen to some calming music","If you have time, do some meditation", "If you are nervous about future events, write down your thoughts and how can you prepare yourself for it"]
            }
          label: {
              Image("N4")
              Text("Nervous")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color("lightpurple"))
           }
          .position(x: UIScreen.main.bounds.width * 0.32, y: UIScreen.main.bounds.height * 0.75)
        
        
            Button() {
            }
          label: {
              Image("N5")
              Text("Overwhelmed")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color("lightpurple"))
           }
          .position(x: UIScreen.main.bounds.width * 0.41, y: UIScreen.main.bounds.height * 0.835)
          
        Text("\(tips)")
            .position(x :200, y : 770)
    }
  }
}
struct StressTipsView_Previews: PreviewProvider {
  static var previews: some View {
    StressTipsView()
  }
}






















