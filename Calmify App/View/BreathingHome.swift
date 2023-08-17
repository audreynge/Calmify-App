import SwiftUI

struct BreathingHome: View {
    //view properties
    @State var currentType: BreatheType = sampleTypes[0]
    @Namespace var animation
    //animation properties
    @State var showBreatheView: Bool = false
    @State var startAnimation: Bool = false
    //timer properties
    @State var timerCount: CGFloat = 0
    @State var breatheAction: String = "Breathe In"
    @State var count: Int = 0
    var body: some View {
        ZStack{
            Background()
            
            Content()
            
            Text(breatheAction)
                .font(.custom("Heiti TC", size: 35))
                .foregroundColor(.white)
                .frame(maxHeight:.infinity,alignment:.top)
                .padding(.top,50)
                .opacity(showBreatheView ? 1 : 0)
                .animation(.easeInOut(duration:1), value: breatheAction)
                .animation(.easeInOut(duration:1), value: showBreatheView)
        }
        //timer
        .onReceive(Timer.publish(every:0.01,on:.main,in:.common).autoconnect()){_ in
            if showBreatheView{
                //add 0.1 for delay
                if timerCount >= 3.2{
                    timerCount = 0
                    breatheAction = (breatheAction == "Breathe Out" ? "Breathe In" : "Breathe Out")
                    withAnimation(.easeInOut(duration:3).delay(0.1)){
                        startAnimation.toggle()
                    }
                    //haptic feedback
                    UIImpactFeedbackGenerator(style:.heavy).impactOccurred()
                }else{
                    timerCount+=0.01
                }
                
                
                count = 3 - Int(timerCount)
            }else{
                //resetting
                timerCount = 0
            }
        }
    }
    
    //main content
    @ViewBuilder
    func Content()->some View{
        VStack{
            HStack{
                Image("Breathe")
   
            }
            .position(x:190,y:81)
            
            .opacity(showBreatheView ? 0 : 1)
            GeometryReader{proxy in
                let size = proxy.size
                
                VStack{
                    BreatheView(size:size)
                    
                    //view properties
                    Text("Breathe to reduce")
                        .font(.custom("Heiti TC", size: 25))                        .foregroundColor(.white)
                        .opacity(showBreatheView ? 0 : 1)
                    
                    ScrollView(.horizontal,showsIndicators:false){
                        HStack(spacing:12){
                            ForEach(sampleTypes){type in
                                Text(type.title)
                                    .foregroundColor(currentType.id == type.id ? .black : .white)
                                    .padding(.vertical,10)
                                    .padding(.horizontal,15)
                                    .background{
                                        //matched geometry effect
                                        ZStack{
                                            if currentType.id == type.id{
                                                RoundedRectangle(cornerRadius:10, style: .continuous)
                                                    .fill(.white)
                                                    .matchedGeometryEffect(id: "TAB", in:animation)
                                            }else{
                                                RoundedRectangle(cornerRadius:10, style:.continuous)
                                                    .stroke(.white.opacity(0.5))
                                            }
                                        }
                                    }
                                    .contentShape(Rectangle())
                                    .onTapGesture{
                                        withAnimation(.easeInOut){
                                            currentType = type
                                        }
                                    }
                                
                            }
                        }
                        .padding()
                        .padding(.leading,30)
                    }
                    .opacity(showBreatheView ? 0 : 1)
                    
                    Button(action:startBreathing){
                        Text(showBreatheView ? "Finish Breathe" : "START")
                            .fontWeight(.semibold)
                            .foregroundColor(showBreatheView ? .white.opacity(0.75): .black)
                            .padding(.vertical,15)
                            .frame(width:315)
                            .background{
                                if showBreatheView{
                                    RoundedRectangle(cornerRadius:12,style:.continuous)
                                        .stroke(.white.opacity(0.5))
                                }else{
                                    RoundedRectangle(cornerRadius:12,style:.continuous)
                                        .fill(currentType.color)
                                }
                            }
                    }
                    .padding()
                    
                }
                .frame(width: size.width, height:size.height, alignment:.bottom)
            }
        }
        .frame(maxHeight:.infinity,alignment:.top)
    }
    
    //Breathe animated circles
    @ViewBuilder
    func BreatheView(size:CGSize)->some View{
        ZStack{
            ForEach(1...8,id: \.self){index in
                Circle()
                    .fill(currentType.color.opacity(0.5))
                    .frame(width:150, height:150)
                    .offset(x: startAnimation ? 0 : 75)
                    .rotationEffect(.init(degrees:Double(index)*45))
                    .rotationEffect(.init(degrees:startAnimation ? -45 : 0))
            }
        }
        .scaleEffect(startAnimation ? 0.8 : 1)
        .overlay(content:{
            Text("\(count == 0 ? 1 : count)")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .animation(.easeInOut, value: count)
                .opacity(showBreatheView ? 1 : 0)
        })
        .frame(height:(size.width - 40))
    }
    
    
    //BG w/ gradient overlays
    @ViewBuilder
    func Background()->some View{
        GeometryReader{proxy in
            let size = proxy.size
            Image("bluebg")
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width: size.width, height: size.height)
                .clipped()
                //blurring while breathing
                .blur(radius:startAnimation ? 4 : 0, opaque:true)
                .overlay{
                    ZStack{
                        Rectangle()
                            .fill(.linearGradient(colors: [
                                currentType.color.opacity(0.9),
                                currentType.color.opacity(0.4),
                                
                                .clear
                            ],startPoint:.top, endPoint:.bottom))
                            .frame(height:size.height / 1.5)
                            .frame(maxHeight:.infinity,alignment:.top)
                        
                        
                    }
                }
        }
        .ignoresSafeArea()
    }
    //breathing action
    func startBreathing(){
        withAnimation(.interactiveSpring(response:0.6,dampingFraction:0.7,blendDuration:0.7)){
            showBreatheView.toggle()
        }
        
        if showBreatheView{
            //breathe view animation
            withAnimation(.easeInOut(duration:3).delay(0.05)){
                startAnimation = true
            }
        }else{
            withAnimation(.easeInOut(duration:1.5)){
                startAnimation = false
            }
        }
    }
}

struct BreathingHome_Previews: PreviewProvider {
    static var previews: some View {
        BreathingHome()
    }
}
