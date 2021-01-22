//
//  Values.swift
//  foodmarket
//
//  Created by Raj Malhotra on 19.01.21.
//

import SwiftUI

struct Values: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(0xF4A460)
                .edgesIgnoringSafeArea(.vertical)
                .overlay(
                    ZStack{
                        HStack{
                            NavigationLink(destination: DetailView()
                                            .navigationBarBackButtonHidden(true)
                                            .navigationBarHidden(true)) {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                                .padding(.horizontal, 23)
                            }
                            Spacer()
                        }
                        .padding(.top,-360)
                    VStack{
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                        .fill(Color(0xF5DEB3).opacity(0.9))
                        .frame(width: 390, height: 700)
                        .padding(.top, 260)
                        .overlay(
                            VStack{
                                VStack{
                                Image("casualcheese")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(.top, 60)
                                }
                                
                                VStack{
                                RoundedRectangle(cornerRadius: 20, style: .circular)
                                .fill(Color.white.opacity(0.3))
                                .frame(width: 100, height: 10)
                                }
                                .padding(.top, -20)
                                ScrollView(.vertical, showsIndicators: false){
                                VStack{
                                    HStack{
                                    Text("The nutritional Value")
                                        .font(.custom("Helvetica-Neue", size: 28))
                                        .bold()
                                        .cornerRadius(20)
                                        .foregroundColor(Color.white)
                                        .padding(.top, 20)
                                        .padding(.horizontal, 13)
                                    Spacer()
                                    }
                                    HStack{
                                    Text("100g of product:")
                                        .font(.custom("Helvetica-Neue", size: 20))
                                        .bold()
                                        .cornerRadius(20)
                                        .foregroundColor(Color.white.opacity(0.8))
                                        .padding(.horizontal, 13)
                                        .padding(.top, 5)
                                    Spacer()
                                    }
                             
                                    
                                    HStack{
                                        Text("Facts")
                                            .bold()
                                            .padding(.trailing,250)
                                            .padding(.top, 20)
                                        Text("31g")
                                            .padding(.top, 20)
                                    }
                        
                                    HStack{
                                        Text("Squirrels")
                                            .bold()
                                            .padding(.trailing,220)
                                            .padding(.top, 30)
                                        Text("27g")
                                            .padding(.top, 30)
                                    }
                                    }
                                VStack{
                                    HStack{
                                    Text("The energy Value")
                                        .font(.custom("Helvetica-Neue", size: 28))
                                        .bold()
                                        .cornerRadius(20)
                                        .foregroundColor(Color.white)
                                        .padding(.top, 20)
                                        .padding(.horizontal, 13)
                                    Spacer()
                                    }
                     
                                    HStack{
                                    Text("100g of product:")
                                        .font(.custom("Helvetica-Neue", size: 20))
                                        .bold()
                                        .cornerRadius(20)
                                        .foregroundColor(Color.white.opacity(0.8))
                                        .padding(.horizontal, 13)
                                        .padding(.top, 5)
                                    Spacer()
                                    }
                     
                                    HStack{
                                        Text("Kcal")
                                            .bold()
                                            .padding(.trailing,250)
                                            .padding(.top, 20)
                                        Text("387")
                                            .padding(.top, 20)
                                    }
                  
                                    HStack{
                                        Text("KiloJ")
                                            .bold()
                                            .padding(.trailing, 235)
                                            .padding(.top, 30)
                                        Text("1620")
                                            .padding(.top, 30)
                                    }
                    
                                }
                                }
                            }
                            .padding(.bottom,260)
                        )
                    }
                    .padding(.top, 130)
                }
                )
            }
            .navigationBarHidden(true)
            .navigationBarItems(leading:
                                    NavigationLink(destination: DetailView().navigationBarBackButtonHidden(true).navigationBarHidden(true)) {
                                    Image(systemName: "chevron.backward").foregroundColor(.white)
                                    }, trailing: Image(systemName: "ellipsis").foregroundColor(.white))
        }
    }
}

struct Values_Previews: PreviewProvider {
    static var previews: some View {
        Values()
    }
}
