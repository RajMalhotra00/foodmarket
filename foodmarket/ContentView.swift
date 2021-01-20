//
//  ContentView.swift
//  foodmarket
//
//  Created by Raj Malhotra on 18.01.21.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedImage = ""
    @State private var selectedSubcategory = ""
    @State private var selectedPointer = 0
    
    let images: [ModelImage] = [
        .init(id: 0, View: "Cheddar", Pic: "Cheddar"),
        .init(id: 1, View: "Parmesan", Pic: "Parmesan"),
        .init(id: 2, View: "Cotija", Pic: "casualcheese"),
        .init(id: 3, View: "Chevre", Pic: "casualcheese"),
        .init(id: 4, View: "Feta", Pic: "casualcheese"),
        .init(id: 5, View: "Emmentaler", Pic: "casualcheese")
    ]
    let cheese: [ModelText] = [
        .init(id: 0, View: "Cheese"),
        .init(id: 1, View: "Berries"),
        .init(id: 2, View: "Fruits"),
        .init(id: 3, View: "Fish"),
        .init(id: 4, View: "Meat"),
        .init(id: 5, View: "Sweets"),
    ]
    
    var body: some View {
     NavigationView {
            ZStack{
                Color(0xF4A460)
                .edgesIgnoringSafeArea(.vertical)
                .overlay(VStack{
                ZStack{
                Image("Cheesehome")
                .scaledToFit()
                    .padding(.top, -140)
                Spacer()
                    Text("Cheeses")
                    .font(.custom("Helvetica-Neue", size: 60))
                    .bold()
                    .cornerRadius(20)
                    .foregroundColor(Color.white.opacity(0.8))
                        .padding(.bottom, 120)
                }
                Spacer()
                ScrollView(.vertical){
                    VStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(cheese, id: \.id) { subcategories in
                                SubCategory(subcategory: subcategories, selected: $selectedSubcategory)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top, 23)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(images, id: \.id) { post in
                                ShapesImage(postImages: post, selected: $selectedImage)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top, 23)
               Spacer()
                }
                }
            }
            .navigationBarItems(trailing: Button(action: {}) {
                   Image(systemName: "line.horizontal.3.decrease")
                    .font(.custom("", size: 25))
                    .foregroundColor(Color.white.opacity(0.75))
                    
                })
                )}
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ModelImage: Identifiable {
let id: Int
let View: String
let Pic: String
}

struct ModelText: Identifiable {
let id: Int
let View: String
}


struct ShapesImage: View{
    let postImages: ModelImage
    @Binding var selected: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(selected == postImages.View ? Color(0xFFE4C4).opacity(0.9) : Color(0xCD853F).opacity(0.8))
            .frame(width: 190, height: 300)
            .overlay(VStack{
                Image(postImages.Pic)
                .resizable()
                .scaledToFit()
                .padding(.top, 65)
                Spacer()
                VStack(alignment: .leading){
                    Text(postImages.View)
                        .foregroundColor(selected == postImages.View ? Color.black : Color.white)
                    HStack{
                      Text("50$")
                        .foregroundColor(selected == postImages.View ? Color.black : Color.white)
                        Spacer()
                        NavigationLink(destination: DetailView()) {
                            Image(systemName: "plus")
                                .foregroundColor(selected == postImages.View ? Color.black : Color.white)
                        }
                    }
                    
                }
                .padding(.bottom, 13)
                .padding(.horizontal)
            }
            )
        }
        .onTapGesture {
            selected = postImages.View
        }
    }
}

struct SubCategory: View{
    var subcategory: ModelText
    @Binding var selected: String
    
    var body: some View {
        Text(subcategory.View)
            .foregroundColor(selected == subcategory.View ? .white : Color.black)
            .frame(width: 140, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(selected == subcategory.View ? Color.black.opacity(0.8) : Color.gray.opacity(0.2))
            .cornerRadius(20)
            .onTapGesture {
                selected = subcategory.View
            }
        }
}

prefix operator ⋮
prefix func ⋮(hex:UInt32) -> Color {
    return Color(hex)
}

extension Color {
    init(_ hex: UInt32, opacity:Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}


