//
//  FeedView.swift
//  twitterTutorial
//
//  Created by Rudraansh Dhoot on 26/02/2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            VStack {
                Header()
                
                Tweets()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("pfp_twitter")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .mask(Circle())
                .padding()
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            Spacer()
            Image(systemName: "sparkles")
                .font(.title)
                .foregroundColor(.blue)
                .padding()
        }
    }
}
