import SwiftUI
struct QuotesView: View {
  @State private var quote = ""
  var body: some View {
    ZStack {
      Image("bluebg")
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .clipped()
      .edgesIgnoringSafeArea(.all)
      Image("Inspiring quote of the day")
        .position(x: UIScreen.main.bounds.width * 0.43, y: UIScreen.main.bounds.height * 0.19)
      VStack(alignment: .center) {
        Button() {
            let quoteArray = ["Two roads diverged in a wood, and I, I took the road less traveled by - “The Road Not Taken” Robert Fros ", "The secret of getting ahead is getting started – Mark Twain", "The best way to get started is to quit talking and begin doing – Walt Disney", "The only impossible journey is the one you never begin – Tony Robbins", "When you know what you want, and want it bad enough, you’ll find a way to get it – Jim Rohn", "Never let the fear of striking out keep you from playing the game – Babe Ruth", "If you genuinely want something, don’t wait for it – teach yourself to be impatient – Gurbaksh Chahal", "The most difficult thing is the decision to act; the rest is merely tenacity – Amelia Earhart", "You don’t have to be great to start, but you have to start to be great – Zig Ziglar", "I believe that the only courage anybody ever needs is the courage to follow your dreams – Oprah Winfrey", "We generate fears while we sit. We overcome them by action – Dr. Henry Link", "All our dreams will come true, if we have the courage to pursue them – Walt Disney", "Whatever the mind can conceive and believe, it can achieve – Napoleon Hill"]
            let randomQuote = Int.random(in:0..<quoteArray.count)
            print(quoteArray[randomQuote])
          quote = quoteArray[randomQuote]
        }
      label: {
        Image("QuoteGenerator")
     }
      .position(x :180, y : 567)
      }
      Text("\(quote)")
    }
  }
struct QuotesView_Previews: PreviewProvider {
  static var previews: some View {
    QuotesView()
  }
 }
}
