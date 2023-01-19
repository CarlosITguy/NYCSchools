//
//  SchoolCellView.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/18/23.
//

import SwiftUI

struct SchoolCellView: View {
    let viewModel: SchoolListViewModel
    let school: NYCSchool
    var body: some View {
        HStack {
            HStack {
                HStack {
                    VStack(spacing: 8.0) {
                        
                        HStack {
                            Text(school.school_name)
                                .font(.system(size: Device.isIpad ? 32.0 : 20.0).bold())
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        
                        if let addressLine1 = viewModel.schoolAddressLine1(school: school), let addressLine2 = viewModel.schoolAddressLine2(school: school) {
                            
                            VStack {
                                if Device.isIpad {
                                    HStack {
                                        Text(addressLine1)
                                            .font(.system(size: 24.0).bold())
                                        Spacer()
                                            .frame(width: 16.0)
                                        Text(addressLine2)
                                            .font(.system(size: 24.0).bold())
                                        Spacer()
                                    }
                                } else {
                                    HStack {
                                        Text(addressLine1)
                                            .font(.system(size: 15.0).bold())
                                        Spacer()
                                    }
                                    HStack {
                                        Text(addressLine2)
                                            .font(.system(size: 15.0).bold())
                                        Spacer()
                                    }
                                }
                                
                            }
                            .foregroundColor(.gray)
                            .padding(.all, Device.isIpad ? 8.0 : 4.0)
                            .padding(.horizontal, Device.isIpad ? 8.0 : 4.0)
                            .pillBox(backgroundColor: .white,
                                     
                                     strokeColor: .gray,
                                     cornerRadius: 8.0,
                                     strokeWidth: Device.isIpad ? 3.0 : 2.0)
                            
                            
                            
                        }
                    }
                    .padding(.all, 8.0)
                }
                .pillBox(backgroundColor: .yellow,
                         strokeColor: .black,
                         cornerRadius: 12.0,
                         strokeWidth: Device.isIpad ? 3.0 : 2.0)
            }
            .padding(.horizontal, 8.0)
        }
    }
}

struct SchoolCellView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolCellView(viewModel: .init(application: .init()),
                       school: NYCSchool.mock)
    }
}
