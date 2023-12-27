import SwiftUI
import PDFKit

struct OpenPdf: View {
    @State private var pdfURL: URL = URL(string: "https://www.africau.edu/images/default/sample.pdf")!

    var body: some View {
        Button("Open Pdf") {
            
        }

        PDFKitView(url: pdfURL)
            .onAppear {
                downloadPDF()
            }
    }

    func downloadPDF() {
        guard let url = URL(string: "https://www.africau.edu/images/default/sample.pdf") else {
            print("URL inválida.")
            return
        }

        let task = URLSession.shared.downloadTask(with: url) { localURL, _, error in
            if let localURL = localURL {
                let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
                let destinationURL = documentsURL.appendingPathComponent("pdf_sample_2.pdf")

                do {
                    try FileManager.default.moveItem(at: localURL, to: destinationURL)
                    DispatchQueue.main.async {
                        self.pdfURL = destinationURL
                    }
                    print("PDF baixado com sucesso em: \(destinationURL.path)")
                } catch {
                    print("Erro ao mover o arquivo: \(error)")
                }
            } else {
                print("Erro no download do PDF: \(error?.localizedDescription ?? "Erro desconhecido")")
            }
        }

        task.resume()
    }
}

struct PDFKitView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true
        return pdfView
    }

    func updateUIView(_ uiView: PDFView, context: Context) {
        if let document = PDFDocument(url: url) {
            uiView.document = document
        } else {
            print("Erro ao carregar o documento PDF.")
        }
    }
}

#Preview {
    OpenPdf()
}
