//
//  ContentView.swift
//  UIImagePickerControllerCamera
//
//  Created by 米国梁 on 2021/4/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var image: UIImage?
    
    @State var show = false
    
    var body: some View {
        
        VStack {
            
            Button("Open camera") {
                
                show.toggle()
            }
            
            if let img = image {
                Image(uiImage: img)
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
        }
        .fullScreenCover(isPresented: $show) {
            
            CustomImagePicker(image: $image)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
