import SwiftUI

struct cont1: View {
  @Binding var isPlaying: Bool

    var body: some View {
 
        VStack(spacing: 0) {
          Button(action: {
            isPlaying.toggle()
          }, label: {
            Text("Button")
          })
          if self.isPlaying {
            Text("GOOOOOOD").font(.system(size: 30))
          }
        }

       
      
    }
}

struct cont1_Previews: PreviewProvider {
    static var previews: some View {
      cont1(isPlaying: .constant(false))
    }
}
