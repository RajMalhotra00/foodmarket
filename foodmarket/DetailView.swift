//
//  DetailView.swift
//  foodmarket
//
//  Created by Raj Malhotra on 19.01.21.
//

import SwiftUI

struct DetailView: View {
    @State private var selectedSubcategory = ""
    @State private var selectedCart = false
    @State private var selectedFavorites = false
    @ObservedObject var order = Order()
    var body: some View {
        NavigationView{
            ZStack{
                Color(0xF4A460)
                .edgesIgnoringSafeArea(.vertical)
                .overlay(
                    ZStack{
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                        .fill(Color(0xF5DEB3).opacity(0.9))
                        .frame(width: 200, height: 200)
                        .padding(.bottom, 100)
                        .overlay(
                            VStack{
                            Image("Cheddar")
                            .resizable()
                            .scaledToFit()
                            .padding(.bottom, 100)
                            .frame(width: 150, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                        )
                        .padding(.bottom, 430)
                        Spacer()
                        HStack{
                            Text("Cheddar")
                                .font(.custom("Helvetica-Neue", size: 40))
                                .bold()
                                .cornerRadius(20)
                                .foregroundColor(Color.white.opacity(0.8))
                                .padding(.bottom, 230)
                                .padding(.horizontal, 23)
                            Spacer()
                            Text("\(Int(self.order.cost))$")
                            .padding(.bottom, 230)
                            .padding(.horizontal, 40)
                            .foregroundColor(Color.white.opacity(0.8))
                            .font(.custom("Helvetica-Neue", size: 40))
                        }
                        HStack{
                            Stepper(value: $order.kilo, in: 1...20) {
                                Text("\(Int(order.kilo)) kg")
                            }
                            .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.bottom, 110)
                        .padding(.horizontal, 23)
                        HStack{
                        Text("Description")
                        Spacer()
                        }
                        .padding(.bottom, 30)
                        .padding(.horizontal, 23)
                        .font(.custom("Helvetica-Neue", size: 20))
                        .foregroundColor(Color.black.opacity(0.8))
                        
                        HStack{
                            Text("A popular variety of cheese of English origin is an Island sweet taste with nutty notes. The taste of cheddar is very diverse and depends on how long the matured cheese is.")
                            Spacer()
                        }
                        .padding(.top, 80)
                        .padding(.horizontal, 23)
                        .font(.custom("Helvetica-Neue", size: 15))
                        .foregroundColor(Color.black.opacity(0.8))
                        
                        HStack{
                            NavigationLink(destination: Values()) {
                                Text("About product")
                                    .bold()
                                Image(systemName: "chevron.right")
                                    .font(.body)
                                Spacer()
                            }
                            .font(.callout)
                        }
                        .padding(.top,220)
                        .padding(.horizontal, 23)
                        .font(.custom("Helvetica-Neue", size: 19))
                        .foregroundColor(Color.black.opacity(0.8))
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 0)
                                .fill(selectedCart == true ? Color(0xEE7621).opacity(0.9) : Color(0xEE7621))
                            .frame(width: 250, height: 50)
                            .overlay(
                            Text("ADD TO CART")
                            )
                        }
                        .onTapGesture {
                            selectedCart = true
                        }
                        .padding(.top, 370)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 0)
                            .fill(Color(0xEE7621).opacity(0.9))
                            .frame(width: 250, height: 50)
                            .overlay(
                            Text("ADD FAVORITES")
                            )
                        }
                        .onTapGesture {
                            selectedFavorites = true
                        }
                        .padding(.top, 520)
                    }
                )
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    NavigationLink(destination: ContentView()) {
                                    Image(systemName: "chevron.backward").foregroundColor(.white)
                                    }
                                , trailing: Image(systemName: "ellipsis").foregroundColor(.white))
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}


