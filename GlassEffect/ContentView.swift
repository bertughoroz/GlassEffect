//
//  ContentView.swift
//  GlassEffect
//
//  Created by Bertuğ Horoz on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(.systemBrown), Color.white.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
            LinearGradient(gradient: Gradient(colors: [Color(.systemMint).opacity(0.4), Color(.systemPurple).opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .offset(x: 150, y: -350)
                    .foregroundColor(Color(.systemPink).opacity(0.4))
                    .blur(radius: 15)
                Circle()
                    .frame(width: 400, height: 400)
                    .offset(x: -250, y: -100)
                    .foregroundColor(Color(.systemGreen).opacity(0.3))
                    .blur(radius: 15)
                PopupView()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PopupView: View {
    var body: some View {
        ZStack {
            Color.white.opacity(0.5)
                .frame(width: 300, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 10)
            VStack(spacing: 30) {
                Text("GlassEffect")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                Text("Wow, what a beautiful screen.".uppercased())
                    .font(.caption)
                Text("Hello welcome.")
                    .font(.footnote)
            }
            .padding()
            .foregroundColor(Color.black).opacity(0.8)
        }
    }
}
