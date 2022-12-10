//
//  ContentView.swift
//  DefaultFontStyles
//
//  Created by Stefan Schmitt on 10/12/2022.
//

import SwiftUI


struct ContentView: View {
    
    struct FontElement: Hashable {
        let title: String
        let font: Font
        
        init(_ font: Font, _ title: String) {
            self.font = font
            self.title = title
        }
    }
    
    private let fonts: [FontElement] = [
        FontElement(.largeTitle, "largeTitle"),
        FontElement(.title, "title"),
        FontElement(.title2, "title2"),
        FontElement(.title3, "title3"),
        FontElement(.headline, "headline"),
        FontElement(.subheadline, "subheadline"),
        FontElement(.body, "body"),
        FontElement(.callout, "callout"),
        FontElement(.footnote, "footnote"),
        FontElement(.caption, "caption"),
        FontElement(.caption2, "caption2")
    ]
    
    var body: some View {
        ScrollView(.vertical) {
            ForEach(fonts, id: \.self) { elem in
                VStack(alignment: .leading) {
                    Text("The quick brown fox jumps over the lazy dog.")
                        .font(elem.font)
                    ZStack {
                        Text("Font.\(elem.title)")
                            .font(.caption2)
                            .padding(.horizontal, 2.0)
                    }
                    .foregroundColor(Color(NSColor.windowBackgroundColor))
                    .background(Color(NSColor.textColor))
                    .cornerRadius(2.0)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
