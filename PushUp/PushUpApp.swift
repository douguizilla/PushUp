import SwiftUI
import Firebase

@main
struct PushUpApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LandingView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptionslaunchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool{
    print("setting up firebase")
        FirebaseApp.configure()
        return true
    }
}
