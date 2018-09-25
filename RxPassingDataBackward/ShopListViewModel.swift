import RxSwift
import RxCocoa

class ShopListViewModel {
    var shops: Driver<[String]> {
        return shopsStream.asDriver()
    }

    var searchQueryObserver: AnyObserver<String> {
        return searchQueryStream.asObserver()
    }

    var searchQuery: Driver<String> {
        return searchQueryStream.asDriver(onErrorJustReturn: "")
    }

    private let shopsStream = BehaviorRelay<[String]>(value: [])
    private let searchQueryStream = BehaviorSubject<String>(value: "カフェ")

    private let disposeBag = DisposeBag()

    init() {
        searchQueryStream
            .map { Shop.list[$0]! }
            .bind(to: shopsStream)
            .disposed(by: disposeBag)
    }
}

struct Shop {
    static let list = [
        "カフェ": ["スターバックス", "ドトール", "エクセルシオールカフェ"],
        "ステーキ": ["いきなりステーキ", "モンスターグリル"],
        "牛丼": ["すき家", "松屋", "吉野家"]
    ]
}
