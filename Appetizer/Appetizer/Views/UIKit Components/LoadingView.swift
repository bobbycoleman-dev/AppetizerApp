//
//  LoadingView.swift
//  AppetizerApp
//
//  Created by Bob Coleman on 2/28/23.
//

import SwiftUI


// MARK: No longer needed
//struct ActivityIndicator: UIViewRepresentable {
//
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = UIColor.brandPrimary
//        activityIndicatorView.startAnimating()
//        return activityIndicatorView
//    }
//
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
//
//}


struct loadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ProgressView()
                .progressViewStyle(.circular)
                .tint(.brandPrimary)
                .scaleEffect(2)
        }
    }
}
