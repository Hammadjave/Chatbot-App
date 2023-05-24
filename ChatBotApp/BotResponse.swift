//
//  BotResponse.swift
//  ChatBotApp
//
//  Created by APPLE on 20/05/2023.
//

import Foundation

let messageResponseDictionary = ["Goodbye": "Talk to you later",
                                 "How are you?": "I'm doing well, thank you. How about yourself?"]

func getResponseBot(message:String) -> String {
    
    messageResponseDictionary[message] ?? "Something went wrong"
    
    /*
    let tempMessage = message
    
    if tempMessage.contains("Goodbye") {
        return "Talk to you later"
    } else if tempMessage.contains("How are you?") {
        return "I'm doing well, thank you. How about yourself?"
    } else if tempMessage.contains("Thank you") {
        return "You're welcome!"
    } else if tempMessage.contains("Nice to meet you") {
        return "Likewise!"
    } else if tempMessage.contains("Have a great day") {
        return "You too!"
    } else if tempMessage.contains("What's up?") {
        return "Not much, just chilling. How about you?"
    } else if tempMessage.contains("How's the weather?") {
        return "It's sunny and warm today!"
    } else if tempMessage.contains("Can you help me?") {
        return "Of course! What do you need assistance with?"
    } else if tempMessage.contains("I'm sorry") {
        return "No worries, everyone makes mistakes."
    } else if tempMessage.contains("Congratulations!") {
        return "Thank you so much!"
    } else if tempMessage.contains("I miss you") {
        return "I miss you too!"
    } else if tempMessage.contains("What's your favorite food?") {
        return "I don't have a favorite food, but I like a variety of dishes."
    } else if tempMessage.contains("Are you busy?") {
        return "I'm currently available. How can I assist you?"
    } else if tempMessage.contains("Tell me a joke") {
        return "Why don't scientists trust atoms? Because they make up everything!"
    } else if tempMessage.contains("What are you up to?") {
        return "Just answering questions and having conversations. How about you?"
    } else if tempMessage.contains("Do you have any hobbies?") {
        return "As an AI, I enjoy learning, problem-solving, and helping people."
    } else if tempMessage.contains("Where are you from?") {
        return "I am an AI language model developed by OpenAI."
    } else if tempMessage.contains("What's your favorite movie?") {
        return "As an AI, I don't have preferences, but I can recommend some popular movies if you'd like!"
    } else if tempMessage.contains("Tell me about yourself") {
        return "I am an AI language model trained to provide information and assist with various topics."
    } else if tempMessage.contains("How's your day going?") {
        return "It's going well. Thank you for asking!"
    } else if tempMessage.contains("I need help") {
        return "Sure, what do you need assistance with?"
    } else if tempMessage.contains("Do you have any pets?") {
        return "I'm an AI, so I don't have pets. But I can provide information about different animals!"
    } else if tempMessage.contains("Can you recommend a book?") {
        return "Sure! What genre are you interested in?"
    } else if tempMessage.contains("Tell me a fun fact") {
        return "Did you know that the Earth's atmosphere is composed of approximately 78% nitrogen?"
    } else if tempMessage.contains("What's the meaning of life?") {
        return "The meaning of life can vary for different individuals. It's a philosophical question that has multiple interpretations."
    } else if tempMessage.contains("How can I improve my coding skills?") {
        return "Practice regularly, work on projects, and seek out learning resources such as tutorials, courses, and coding communities."
    } else if tempMessage.contains("What's your favorite color?"){
        return "red"
    } else {
        return "Its OK"
    }
    */
}
