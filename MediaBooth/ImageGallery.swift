//
//  ImageGallery.swift
//  MediaBooth
//
//  Created by christian claudeauex on 2/28/23.
//

import SwiftUI

struct ImageGallery: View {
    @State var ImagesList = ["flower1","cat1", "flower2"]
    var containerWidth:CGFloat = UIScreen.main.bounds.width - 32.0
    
    var body: some View {
        HStack{
            ForEach(ImagesList, id: \.self){ i in
                Image("\(i)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: containerWidth * 0.25, height: containerWidth * 0.25, alignment: .center)
                    .clipped()
            }
        }
    }
}

struct ImageGallery_Previews: PreviewProvider {
    static var previews: some View {
        ImageGallery()
    }
}
