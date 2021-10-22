//
//  VideoDeatiledView.swift
//  SwiftUI-List-Starter
//
//  Created by vishwanath kota on 22/10/2021.
//

import SwiftUI

struct VideoDeatiledView: View {
    var video: Video
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
    
            Text(video.description)
                .font(.body)
                .padding()
            Spacer()
//            Link("Watch Now", destination: video.url)
            Link(destination: video.url) {
                StandardButton(title: "Watch Now")
            }
        }
    }
}

struct VideoDeatiledView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDeatiledView(video: VideoList.topTen.first!)
    }
}

struct StandardButton: View {
    var title: String
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
