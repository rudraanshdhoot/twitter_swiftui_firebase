//
//  Tweets.swift
//  twitterTutorial
//
//  Created by Rudraansh Dhoot on 26/02/2022.
//

import SwiftUI

struct Tweets: View {
    var body: some View {
        VStack(spacing: 20) {
            ForEach(0 ..< 5) { item in
                HStack(alignment: .top) {
                    Image("pfp_twitter")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .mask(Circle())
                        .padding(.leading,10)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("User 1")
                                .fontWeight(.bold)
                            
                            Text("@user01")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Text("Lorem ipsum dolor sit amet. At quae earum eum sapiente velit ea corporis ratione.")
                            .padding(.trailing)
                        HStack {
                            Button {
                                print("liked")
                            } label: {
                                Image(systemName: "heart")
                                    .font(.title2)
                                    .foregroundColor(.gray)
                            }
                            Text("46")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            Button {
                                print("retweeted")
                            } label: {
                                Image(systemName: "repeat")
                                    .font(.title2)
                                    .foregroundColor(.gray)
                            }
                            Text("12")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Spacer()
                            Button {
                                //will convert to navigation link later or sheet
                                print("went to comment screen")
                            } label: {
                                Image(systemName: "bubble.left")
                                    .font(.title2)
                                    .foregroundColor(.gray)
                            }
                            Text("28")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }.padding(.trailing, 40)
                            .padding(.top,5)
                        Divider()
                    }
                    
                    
                }
            }
        }
    }
}

struct Tweets_Previews: PreviewProvider {
    static var previews: some View {
        Tweets()
    }
}
