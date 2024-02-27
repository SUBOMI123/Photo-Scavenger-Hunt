//
//  Task.swift
//  Photo Scavenger Hunt
//
//  Created by Oluwasubomi Bashorun on 2/27/2024.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Explore a New Hobby 🎨",
                 description: "Spend at least 30 minutes exploring a hobby or activity you've been interested in but haven't tried yet."),
            Task(title: "Create a Vision Board 🖼️",
                 description: " Spend time creating a vision board with images and quotes that represent your goals and aspirations."),
            Task(title: "Cook a New Recipe 🍳",
                 description: " Choose a new recipe to cook for yourself or your family."),
            Task(title: "Learn a New Language Phrase 🗣️",
                 description: "Learn a new phrase or word in a language you've been wanting to learn."),
            Task(title: "Try a New Workout Routine 💪",
                 description: "Challenge yourself to try a new workout routine, such as a 30-day yoga challenge, a high-intensity interval training (HIIT) workout.")
        ]
    }
}
