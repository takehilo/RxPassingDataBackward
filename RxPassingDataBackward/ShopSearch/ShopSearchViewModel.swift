import RxCocoa

class ShopSearchViewModel {
    var genres: Driver<[String]> {
        return Driver.just(Genre.list)
    }
}

struct Genre {
    static let list = ["カフェ", "ステーキ", "牛丼"]
}
