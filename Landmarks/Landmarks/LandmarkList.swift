import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
         List(landmarkData) { landmark in
            NavigationLink(destination : LandmarkDetail(landmark:landmark)){
                LandmarkRow(landmark: landmark)
            }
         }
        .navigationBarTitle(Text("Steam熱門遊戲排行"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
