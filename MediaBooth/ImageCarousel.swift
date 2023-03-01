//
//  ImageCarousel.swift
//  MediaBooth
//
//  Created by christian claudeauex on 2/28/23.
//

import SwiftUI

struct ImageCarousel: View {
    @State private var selection = 0
    @State var lastScaleValue: CGFloat = 1.0
    @State var currScale: CGFloat = 1.0
    @State var images = ["flower1","cat1", "flower2"]
    
    
    var doubleTapGesture : some Gesture {
             TapGesture(count: 2).onEnded { value in
                 if(currScale != 1)
                 {currScale = 1}
                else if(currScale == 1)
                 {currScale = 2}
             }
         }
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            TabView(selection : $selection){
                ForEach(images, id: \.self){ i in
                    Image("\(i)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(currScale)
                        .minimumScaleFactor(1.0)
                        .gesture(MagnificationGesture().onChanged { val in
                                    let delta = val / self.lastScaleValue
                                    self.lastScaleValue = val
                                    currScale = currScale * delta
                            print(currScale)
                            
                        //... anything else e.g. clamping the newScale
                        }.onEnded { val in
                          // without this the next gesture will be broken
                          self.lastScaleValue = 1.0
                        })
                        .gesture(doubleTapGesture)
                        .animation(.easeInOut, value: currScale)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ImageCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ImageCarousel()
    }
}
