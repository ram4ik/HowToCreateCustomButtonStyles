//
//  ContentView.swift
//  HowToCreateCustomButtonStyles
//
//  Created by ramil on 16.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {} label: {}
                .buttonStyle(CustomButtonStyle(imageName: "plus.circle", title: "Add a new post"))
            Spacer()
                .frame(height: 40)
            Button {} label: {}
                .buttonStyle(CustomButtonStyle(imageName: "plus.circle", title: "Other button"))
        }
    }
}

struct CustomButtonStyle: ButtonStyle {
    let imageName: String
    let title: String
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: imageName)
            Text(title)
        }
        .padding(12)
        .background(!configuration.isPressed ? Color.green : Color.gray.opacity(0.3))
        .foregroundColor(!configuration.isPressed ? .white : .green.opacity(0.9))
        .cornerRadius(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
