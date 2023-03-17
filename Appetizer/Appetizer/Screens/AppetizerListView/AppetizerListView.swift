//
//  AppetizerListView.swift
//  AppetizerApp
//
//  Created by Bob Coleman on 2/28/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
//                .searchable(text: $searchText)
//                .onChange(of: searchText) { searchText in
//                    if searchText.isEmpty {
//                        viewModel.appetizers = viewModel.appetizers.self
//                    } else {
//                        viewModel.appetizers = viewModel.appetizers.filter { $0.name.contains(searchText)}
//                    }
//                }
            }
            .task {
                viewModel.getAppetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,
                                    isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                loadingView()
            }
            
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
