/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    var body: some View {
        VStack{
            CircleImage(image : landmark.image)
                .offset(x: 0, y: 20)
                .padding()
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                    .padding()
                Text(landmark.introduction)
                    .font(.title)
                    .padding()
                Spacer()
                Text("下載次數"+landmark.current_servers)
                    .font(.title)
                    .padding()
                if #available(iOS 14.0, *)
                {
                    Link(destination: URL(string: landmark.url)!) {
                        Text("Steam遊戲頁面連結")
                            .font(.title)
                            .padding()
                    }
                }
            }
        }
        .navigationBarTitle(Text(landmark.name),displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark : landmarkData[1])
    }
}
