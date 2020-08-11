//
//  ContentView.swift
//  Covid19-app
//
//  Created by AJ Picard on 5/29/20.
//  Copyright © 2020 AJ Picard. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var checkin = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2666666667, green: 0.2745098039, blue: 0.6784313725, alpha: 1)).edgesIgnoringSafeArea(.all)
                
            VStack {
                VStack {
                    // Header
                    HStack {
                        VStack {
                            Text("May")
                                .fontWeight(.semibold)
                            Text("25th")
                                .fontWeight(.semibold)
                            
                        }
                        .frame(width: 60, height: 60)
                        .foregroundColor(Color(#colorLiteral(red: 0.5884720087, green: 0.5897397995, blue: 0.7244108319, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.9413869977, green: 0.9405556321, blue: 0.9797834754, alpha: 1)))
                        .cornerRadius(15)
                        .padding(.leading, 40)
                        
                        Spacer()
                        
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundColor(.black)
                            .font(.system(size: 22))
                            .frame(width: 40, height: 40)
                            .padding(.trailing, 40)
                        
                    }
                    .padding(.top, 80)
                    Spacer()
                    // Header Text
                    VStack {
                        HStack {
                            Text("How people feel in")
                                .font(.system(size: 19, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.2688613236, green: 0.2637569308, blue: 0.522505641, alpha: 1)))
                                .padding(.leading, 40)
                            Spacer()
                        }
                        HStack {
                            Image("Pin")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 34, height: 50)
                                .padding(.leading, 35)
                            
                            Text("Los Angeles")
                                .font(.system(size: 35, weight: .bold, design: .rounded))
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.2688613236, green: 0.2637569308, blue: 0.522505641, alpha: 1)))
                            Spacer()
                        }
                        .padding(.top, -10)
                    }
                    .offset(y: -50)
                    Spacer()
                    // Cards
                    HStack {
                        VStack {
                            Image("Smile")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 44, height: 44)
                                .padding(.bottom, 5)
                            Text("458")
                                .font(.system(size: 35, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.1031931415, green: 0.5826383829, blue: 0.4684459567, alpha: 1)))
                            Text("Feeling well")
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.1031931415, green: 0.5826383829, blue: 0.4684459567, alpha: 1)))

                        }
                        .frame(width: 140, height: 200)
                        .background(Color(#colorLiteral(red: 0.9076699615, green: 0.9830837846, blue: 0.9641411901, alpha: 1)))
                        .cornerRadius(20)
                        .padding(.leading, 40)
                        Spacer()
                        VStack {
                            Image("Sad")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 44, height: 44)
                                .padding(.bottom, 5)
                            Text("14")
                            .font(.system(size: 35, weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5132890344, green: 0.3546165526, blue: 0.33131814, alpha: 1)))
                            Text("Not well")
                            .font(.system(size: 15, weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.5132890344, green: 0.3546165526, blue: 0.33131814, alpha: 1)))
                        }
                        .frame(width: 140, height: 200)
                        .background(Color(#colorLiteral(red: 1, green: 0.9514145255, blue: 0.9477161765, alpha: 1)))
                        .cornerRadius(20)
                        .padding(.trailing, 40)
                        
                    }
                    .offset(y: -130)
                }
              
            }
            .frame(maxWidth: .infinity)
            .frame(height: 650)
            .background(Color(.white))
            .cornerRadius(40)
            .offset(y: -90)
            
            
            VStack {
                Text("9,877 people have checked in today")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(#colorLiteral(red: 0.753092587, green: 0.7546128631, blue: 0.8850998282, alpha: 1)))
                    .padding(.top, 30)
                
                Button(action: {self.checkin.toggle()}) {
                    Text("Check in again later")
                        .font(.system(size: 19, weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.3891661167, green: 0.3330230713, blue: 0.1976525486, alpha: 1)))
                }
                .frame(width: 280, height: 60)
                .background(Color(#colorLiteral(red: 1, green: 0.8117647059, blue: 0.3764705882, alpha: 1)))
                .cornerRadius(20)
                .padding(.top, 10)
                .sheet(isPresented: $checkin){
                    CheckinView()
                }
            }
            .offset(y: 300)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
