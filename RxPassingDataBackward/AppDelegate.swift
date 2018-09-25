import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let shopListVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShopListViewController") as! ShopListViewController
        let shopListVM = ShopListViewModel()
        shopListVC.vm = shopListVM
        let navVC = UINavigationController(rootViewController: shopListVC)

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()

        return true
    }
}

