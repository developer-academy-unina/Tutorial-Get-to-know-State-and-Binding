//
//  ModalView.swift
//  LightBulbStateBinding
//
//  Created by Stefania Zinno, Gianluca Orpello for the Developer Academy on 21/10/21.
//
//

import SwiftUI

struct ModalView: View {
    @Binding var showModal: Bool
    @Binding var intensity: Double
    
    var body: some View {
        NavigationView {
            Group{
                VStack{
                    Image(systemName: "lightbulb.fill").foregroundColor(.yellow)
                    .opacity(intensity)
                    .foregroundColor(.green)
                        .padding(20)
                        .font(.system(size: 60))
                    Slider(value: $intensity, in: 0.1...0.9)
               .frame(width: 150)
                .padding(5)
                .navigationBarItems(trailing: Button("Done", action: {
                    showModal.toggle()
                })).foregroundColor(.none)
                }
            }
        }
    }
    
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(showModal: .constant(true), intensity: .constant(1))
    }
}
