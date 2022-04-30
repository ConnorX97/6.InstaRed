//
//  __InstaRedApp.swift
//  6.InstaRed
//
//  Created by Sherzod Fayziev on 2022/04/30.
//

import SwiftUI

@main
struct __InstaRedApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SignInPage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
