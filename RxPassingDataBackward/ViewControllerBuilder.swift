import UIKit

class ViewControllerBuilder {
    static let shared = ViewControllerBuilder()

    func makeShopListViewController() -> ShopListViewController {
        let vm = ShopListViewModel()
        let vc = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "ShopListViewController") as! ShopListViewController
        vc.vm = vm
        return vc
    }

    func makeShopSearvhViewController() -> ShopSearchViewController {
        let vm = ShopSearchViewModel()
        let vc = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "ShopSearchViewController") as! ShopSearchViewController
        vc.vm = vm
        return vc
    }
}
