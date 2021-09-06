//
//  DataService.swift
//  MVCApp
//
//  Created by Powroli on 17.07.21.
//

import Foundation

class DataService {
    private init() { }
    static let shared = DataService()
    var desserts = [Dessert(name: "Макарон малина",
        image: #imageLiteral(resourceName: "Макарон малина"), notes: "МММ...Очень вкусно",
        feedbacks: [Feedback(feedback: "Очень вкусный и нежный", rating: 5),
            Feedback(feedback: "Лайк!!!", rating: 5)]),

        Dessert(name: "Марципан Сердце",
            image: #imageLiteral(resourceName: "Марципан Сердце"), notes: "На любителя",
            feedbacks: [Feedback(feedback: "Ну такое...", rating: 1),
                Feedback(feedback: "Более менее", rating: 2)]),

        Dessert(name: "Пирожное Кассик",
            image: #imageLiteral(resourceName: "Пирожное Кассик"), notes: "Нежно и вкусно",
            feedbacks: [Feedback(feedback: "Годно", rating: 3),
                Feedback(feedback: "Норм", rating: 3)]),

        Dessert(name: "Торт Три шоколада",
            image: #imageLiteral(resourceName: "Торт Три шоколада"), notes: "Шоколадно",
            feedbacks: [Feedback(feedback: "Вкусно, но мало", rating: 4),
                Feedback(feedback: "Очень даже хорошо", rating: 4)]),

        Dessert(name: "Эклер BonGenie",
            image: #imageLiteral(resourceName: "Эклер BonGenie"), notes: "Фиолетово",
            feedbacks: [Feedback(feedback: "Ну так, не очень", rating: 2),
                Feedback(feedback: "Как-то так себе", rating: 2)])]

}

