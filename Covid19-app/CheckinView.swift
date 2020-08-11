//
//  CheckinView.swift
//  Covid19-app
//
//  Created by AJ Picard on 5/29/20.
//  Copyright © 2020 AJ Picard. All rights reserved.
//

import SwiftUI

struct CheckinView: View {
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.2666666667, green: 0.2745098039, blue: 0.6784313725, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        Text("1st check-in")
                            .font(.system(size: 35, weight: .bold, design: .rounded))
                        Text("Reported")
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                    }
                    .foregroundColor(.white)
                    .padding(.leading, 40)
                    Spacer()
                }
               
                HStack {
                    Text("Share the app so more people can help researches track COVID-19")
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 0.8058515787, green: 0.818564713, blue: 0.9054732919, alpha: 1)))
                    .lineSpacing(5)
                        .padding(.leading, 40)
                        .padding(.top, 30)

                    Spacer()
                }
               
                
                Image("Success")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
                    
                
                Button(action: {}) {
                    HStack {
                        Text("Continue")
                            .font(.system(size: 19, weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.3930760324, green: 0.3369956017, blue: 0.1969072223, alpha: 1)))
                            .padding(.leading, 30)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        Image(systemName: "chevron.right")
                            .padding(.leading, -5)
                            .padding(.trailing, 20)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    }
                }
                .frame(width: 180, height: 60)
                .background(Color(#colorLiteral(red: 1, green: 0.8117647059, blue: 0.3764705882, alpha: 1)))
                .cornerRadius(20)
            .offset(x: 50, y: 50)
            }
        }
    }
}

struct CheckinView_Previews: PreviewProvider {
    static var previews: some View {
        CheckinView()
    }
}
