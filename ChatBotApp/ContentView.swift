//
//  ContentView.swift
//  ChatBotApp
//
//  Created by APPLE on 20/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var messageText = ""
    
    @State var messsages = ["Welcome to chatBiot"]
    var body: some View {
        VStack{

            HStack{
                Text("Chatbot")
                    .font(.system(size: 19))
                Image(systemName: "bubble.left.fill")
                    .foregroundColor(.black)
//                    .background(.yellow)
            }
            ScrollView{
                ForEach(messsages,id: \.self) { message in
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        
                        HStack{
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                    .padding(.horizontal,16)
                                    .padding(.bottom,10)
                            
                        }
                    } else {
                        HStack{
                            Text(message)
                                .padding()
//                                .foregroundColor(.white)
                                .background(Color.gray.opacity(0.15))
                                .cornerRadius(10)
                                    .padding(.horizontal,16)
                                    .padding(.bottom,20)
                            Spacer()
                            
                        }
                    }
                    
                }.rotationEffect(.degrees(180))
            }.rotationEffect(.degrees(180))
                .background(Color.gray.opacity(0.3))
            HStack {
                TextField("Enter a message", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(5)
                    .onSubmit {
                        sendMessage(message: messageText)
                    }
                Button {
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 30))
                .padding(.horizontal, 10)
                
            }
            .padding(10)
            Spacer()
            
        }
    }
    func sendMessage(message: String) {
        withAnimation {
            messsages.append("[USER]" + message)
            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation{
                messsages.append(getResponseBot(message: message))
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
