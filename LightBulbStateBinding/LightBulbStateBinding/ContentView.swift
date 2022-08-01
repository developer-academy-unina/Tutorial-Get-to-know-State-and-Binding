//
//  ContentView.swift
//  LightBulbStateBinding
//
//  Created by Stefania Zinno, Gianluca Orpello for the Developer Academy on 21/10/21.
//
//



import SwiftUI

struct ContentView: View {

    @State private var intensity: Double = 1
    @State private var showModal = false
     var body: some View {
        NavigationView {
            VStack(spacing: 20){
                Image(systemName: "lightbulb.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 60))
                    .opacity(intensity)
                    .padding()
                Group{
                    Button("On/Off") {
                       intensity = intensity == 1 ? 0 : 1
                    }
                    Button("Dim") {
                       showModal.toggle()
                    }
                   .sheet(isPresented: $showModal, content: {
                       ModalView(showModal: $showModal, intensity: $intensity )
                   })
                }.frame(width: 150)
                    .padding()
                    .foregroundColor(.blue)
                    .overlay(RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.blue, lineWidth: 3))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
