//
//  DetailCardBack.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/19/23.
//

import SwiftUI

struct DetailCardBack: View {
    var schoolListViewModel: SchoolListViewModel
    let school: NYCSchool
    let sat: NYCSAT
    let width: CGFloat
    let height: CGFloat
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            Text("SAT Scores")
                .padding(.horizontal, Device.isIpad ? 24.0 : 16.0)
                .multilineTextAlignment(.center)
                .font(.system(size: Device.isIpad ? 32.0 : 20.0).bold())
                .padding(.vertical, 16.0)
            
            HStack {
                Spacer()
            }
            .frame(height: Device.isIpad ? 2.0 : 1.0)
            .background(Color.black)
            

            Spacer()
            
            /*
            if let satMathScore = schoolListViewModel.satMathScore(sat: sat) {
                Text(satMathScore)
            }
            
            
            
            
            */
            HStack(spacing: 0.0) {
                
                VStack {
                    Text("Math")
                        .font(.system(size: Device.isIpad ? 32.0 : 20.0))
                    
                    if let satMathScore = schoolListViewModel.satMathScore(sat: sat) {
                        Text(satMathScore)
                            .font(.system(size: Device.isIpad ? 32.0 : 20.0).bold())
                    }
                    
                }
                .frame(width: width / 3.0)
                
                VStack {
                    Text("Reading")
                        .font(.system(size: Device.isIpad ? 32.0 : 20.0))
                    
                    if let satCriticalReadingScore = schoolListViewModel.satCriticalReadingScore(sat: sat) {
                        Text(satCriticalReadingScore)
                            .font(.system(size: Device.isIpad ? 32.0 : 20.0).bold())
                    }
                    
                }
                .frame(width: width / 3.0)
                
                VStack {
                    Text("Writing")
                        .font(.system(size: Device.isIpad ? 32.0 : 20.0))
                    
                    if let satWritingScore = schoolListViewModel.satWritingScore(sat: sat) {
                        Text(satWritingScore)
                            .font(.system(size: Device.isIpad ? 32.0 : 20.0).bold())
                    }
                }
                .frame(width: width / 3.0)
                
                
            }
            
            
            Spacer()
            
            HStack {
                Spacer()
            }
            .frame(height: Device.isIpad ? 2.0 : 1.0)
            .background(Color.black)
            
            VStack {
                Button {
                    action()
                } label: {
                    Text("Click To See School Info...")
                        .padding(.horizontal, Device.isIpad ? 24.0 : 16.0)
                        .multilineTextAlignment(.center)
                        .font(.system(size: Device.isIpad ? 32.0 : 20.0).bold())
                        .padding(.vertical, 16.0)
                }
            }
        }
        .foregroundColor(.black)
        .frame(width: width, height: height)
        .pillBox(backgroundColor: .yellow,
                 strokeColor: .black,
                 cornerRadius: 12.0,
                 strokeWidth: Device.isIpad ? 3.0 : 2.0)
    }
}

struct DetailCardBack_Previews: PreviewProvider {
    static var previews: some View {
        DetailCardBack(schoolListViewModel: .init(application: .init()),
                       school: NYCSchool.mock,
                       sat: NYCSAT.mock,
                       width: 300.0, height: 300.0) { }
    }
}
