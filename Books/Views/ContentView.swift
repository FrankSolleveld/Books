//
//  ContentView.swift
//  Books
//
//  Created by Frank Solleveld on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Custom Variables
    @State private var isPresented = false
    @State private var isbn: String?
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("About this book")) {
                    Text("Book Title")
                    Text("Book Subtitle")
                    Text("Author")
                }
                Section(header: Text("Additional info")) {
                    Text("Published date")
                    Text("Pages")
                    Text("Language")
                    Text("ISBN")
                }
            }
            .navigationBarTitle("Books 📚")
            .navigationBarItems(trailing: Button(action: { self.isPresented.toggle() }) { Image(systemName: "barcode") }
                .sheet(isPresented: $isPresented) {
                    // Actions here
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
