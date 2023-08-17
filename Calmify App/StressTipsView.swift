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
        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.175)
      Image("1-5 Scale Question")
        .position(x : 190, y : 275)
      
        //Tired
        Button() {
          let tiredTipsArray = ["Eat a snack!", "Get moving! Regular exercise will make you feel less tired.", "Sleep well; avoid taking naps in the day", "Drink more water. Sometimes you feel tired simply because you're dehydrated."]
          let randomtiredTips = Int.random(in: 0..<tiredTipsArray.count)
          tips = tiredTipsArray[randomtiredTips]
          print(tiredTipsArray[randomtiredTips])
        }
          label: {
              Image("N1")
                  .position(x : 39, y :43)
              Text("Tired")
                  .font(.custom("Heiti TC", size: 25))
                  .foregroundColor(Color("lightpurple"))
                  .position(x : -33, y :34)
          }
          .frame(width: 330,height:70)
          .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.425)
          

          //Tense
          Button() {
              let tenseTipsArray = ["Watch something funny", "Drink green tea, it can make you relax","Organize your space,mess can start to clutter up your mind","Light some candles, candlelight is known for its calming effects "]
              let randomtenseTips = Int.random(in: 0..<tenseTipsArray.count)
              tips = tenseTipsArray[randomtenseTips]
              print(tenseTipsArray[randomtenseTips])
          }
          label: {
              Image("N2")
                  .position(x : 39, y :43)
              Text("Tense")
                .font(.custom("Heiti TC", size: 25))
                .foregroundColor(Color("lightpurple"))
                .position(x : -28, y :34)
           }
          .frame(width: 330,height:70)
          .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.505)
          
        
        //anxious
          Button() {
              let anxiousTipsArray = ["Overcome your negative thoughts by replacing negative thoughts with happy ones", "Reach out to someone you trust", "Practice relaxation techniques like yoga", "If your anxiety is too intense, seek professional help like therapy"]
              let randomanxiousTips = Int.random(in: 0..<anxiousTipsArray.count)
              tips = anxiousTipsArray[randomanxiousTips]
              print(anxiousTipsArray[randomanxiousTips])
          }
          label: {
              Image("N3")
                  .position(x : 39, y :43)
              Text("Anxious")
                .font(.custom("Heiti TC", size: 25))
                .foregroundColor(Color("lightpurple"))
                .position(x : -16, y : 35)
           }
          .frame(width: 330,height:70)
          .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.59)
          
        
        //nervous
            Button() {
              let nervousTipsArray = ["Close your eyes and count to 10 slowly", "Put on headphones and listen to calming music","If you have time, do some meditation", "If you are nervous about future events, write down those thoughts and ways to prepare yourself"]
                let randomnervousTips = Int.random(in: 0..<nervousTipsArray.count)
                tips = nervousTipsArray[randomnervousTips]
                print(nervousTipsArray[randomnervousTips])
            }
          label: {
              Image("N4")
                  .position(x : 39, y :40)
              Text("Nervous")
                .font(.custom("Heiti TC", size: 25))
                .foregroundColor(Color("lightpurple"))
                .position(x : -16, y :33)
           }
          .frame(width: 330,height:70)
          .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.683)
          
        
        
            Button() {
                let overwhelmedTipsArray = ["Take a break to unwind yourself; do activities you enjoy!", "Focus on what you can solve. It's easy to worry more about things you can't control", "Use our breathing exercise to reduce your stress", "Avoid distractions, focus on your tasks and be productive"]
                let randomoverwhelmedTips = Int.random(in: 0..<overwhelmedTipsArray.count)
                tips = overwhelmedTipsArray[randomoverwhelmedTips]
                print(overwhelmedTipsArray[randomoverwhelmedTips])
            }
            label: {
                Image("N5")
                    .position(x : 39, y : 45)
                Text("Overwhelmed")
                    .font(.custom("Heiti TC", size: 25))
                    .foregroundColor(Color("lightpurple"))
                    .position(x : 13, y :38)
               }
            .frame(width: 330,height:70)
            .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.765)
        
                
        Text("\(tips)")
            .multilineTextAlignment(.center)
            .font(.custom("Heiti TC", size: 20))
            .foregroundColor(Color("lightblue"))
            .frame(width: 330,height:100)
            .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.88)
    }
  }
}
struct StressTipsView_Previews: PreviewProvider {
  static var previews: some View {
    StressTipsView()
  }
}
















