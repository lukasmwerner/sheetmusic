//
//  PortableDocumentFileViewer.swift
//  sheetmusic
//
//  Created by lukas on 4/26/21.
//

import SwiftUI
import PDFKit

struct PortableDocumentFileViewer: UIViewRepresentable {
    
    var url: URL
    
    init(_ pdfUrl: URL?) {
        self.url = pdfUrl ?? Bundle.main.url(forResource: "sheetmusic", withExtension: "pdf")!
        
    }
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.displayMode = .singlePage
        pdfView.document = PDFDocument(url: url)
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context) {
        //todo
        print(self)
    }

}

struct PortableDocumentFileViewer_Previews: PreviewProvider {
    static var previews: some View {
        PortableDocumentFileViewer(Bundle.main.url(forResource: "sheetmusic", withExtension: "pdf")!)
    }
}
