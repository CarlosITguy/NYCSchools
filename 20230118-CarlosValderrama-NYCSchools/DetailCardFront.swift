//
//  DetailCardFront.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/19/23.
//

import SwiftUI

struct DetailCardFront: View {
    
    var schoolListViewModel: SchoolListViewModel
    let school: NYCSchool
    let width: CGFloat
    let height: CGFloat
    let action: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            Text(schoolListViewModel.schoolName(school: school))
                .padding(.horizontal, Device.isIpad ? 24.0 : 16.0)
                .multilineTextAlignment(.center)
                .font(.system(size: Device.isIpad ? 32.0 : 20.0).bold())
                .padding(.vertical, 16.0)
            
            HStack {
                Spacer()
            }
            .frame(height: Device.isIpad ? 2.0 : 1.0)
            .background(Color.black)
            
            ScrollView {
                if let overviewParagraph = schoolListViewModel.schoolOverviewParagraph(school: school) {
                    
                    Text(overviewParagraph)
                        .padding(.horizontal, Device.isIpad ? 18.0 : 14.0)
                        .multilineTextAlignment(.center)
                        .font(.system(size: Device.isIpad ? 24.0 : 16.0).bold())
                    
                }
            }
            
            HStack {
                Spacer()
            }
            .frame(height: Device.isIpad ? 2.0 : 1.0)
            .background(Color.black)
            
            VStack {
                Button {
                    action()
                } label: {
                    Text("Click To See Scores...")
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

struct DetailCardFront_Previews: PreviewProvider {
    static var previews: some View {
        DetailCardFront(schoolListViewModel: .init(application: .init()),
                        school: NYCSchool.mock,
                        width: 300.0,
                        height: 300.0) { }
    }
}
