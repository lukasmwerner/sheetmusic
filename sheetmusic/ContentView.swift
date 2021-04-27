//
//  ContentView.swift
//  sheetmusic
//
//  Created by lukas on 4/26/21.
//

import SwiftUI
import UniformTypeIdentifiers

struct ContentView: View {
    @State private var isImporting: Bool = false
    @State private var openFile: URL = Bundle.main.url(forResource: "sheetmusic", withExtension: "pdf")!

    
    var body: some View {
        VStack {
            HStack {
                Button( action: {
                    isImporting = !isImporting
                }) {
                    Text("Load PDF")
                }
                .fileImporter(isPresented: $isImporting, allowedContentTypes: [.pdf], allowsMultipleSelection: false, onCompletion: { result in
                    do {
                        guard let selectedFile: URL = try result.get().first else { return }
                        self.openFile = selectedFile
                    } catch {
                        print(error.localizedDescription)
                    }
                })
            }
            PortableDocumentFileViewer(self.openFile)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
