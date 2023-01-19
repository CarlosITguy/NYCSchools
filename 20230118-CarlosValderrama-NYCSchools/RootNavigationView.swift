//
//  RootNavigationView.swift
//  20230118-CarlosValderrama-NYCSchools
//
//  Created by Carlos Valderrama Juarez on 1/18/23.
//

import SwiftUI

struct RootNavigationView: View {
    @ObservedObject var schoolListViewModel: SchoolListViewModel
    var body: some View {
        NavigationStack(path: $schoolListViewModel.navigationPath) {
            SchoolListView(schoolListViewModel: schoolListViewModel)
        }
    }
}

struct RootNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        RootNavigationView(schoolListViewModel: .init(application: .init()))
    }
}
