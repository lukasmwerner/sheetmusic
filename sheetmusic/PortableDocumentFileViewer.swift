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
    var page: Int
    
    init(_ pdfUrl: URL?, page: Int) {
        self.url = pdfUrl ?? Bundle.main.url(forResource: "sheetmusic", withExtension: "pdf")!
        self.page = page
    }
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.displayMode = .singlePage
        pdfView.document = PDFDocument(url: url)
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context) {
        uiView.document = PDFDocument(url: url)
    }

}

struct PortableDocumentFileViewer_Previews: PreviewProvider {
    static var previews: some View {
        PortableDocumentFileViewer(Bundle.main.url(forResource: "sheetmusic", withExtension: "pdf")!, page: 0)
    }
}
