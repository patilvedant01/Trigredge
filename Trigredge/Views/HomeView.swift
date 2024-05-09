//
//  HomeView.swift
//  Trigredge
//
//  Created by Vedant Patil on 09/05/24.
//

import SwiftUI

struct HomeView: View {
    //MARK:- PROPERTIES
    @State private var searchText = ""
    var foodItems = ["Pizza","Burger","Tacos","Chineese"]
    
    //MARK:- VIEW
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(spacing: 0){
               //Mark:-Search section
                ZStack {
                            // Background
                            Color.white.opacity(0.3)
                            
                            // Search Bar
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.black)
                                TextField("Search at restaurants", text: $searchText)
                                    .foregroundColor(.black)
                            }
                            .padding()
                            .background(Color.clear)
                        }
                        .cornerRadius(8)
                        .padding()
                
                //Mark:-ScrollView
                ScrollView(.horizontal,showsIndicators: false) {
                            LazyHStack(spacing: 0) {
                                ForEach(0..<4) { item in
                                    //Mark:-VStack for image & text
                                    VStack {
                                        Image(systemName: "fork.knife")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 50, height: 50)
                                            .padding(12)
                                            .overlay(
                                                    Circle()
                                                    .stroke(Color.black, lineWidth: 3)
                                                                        )
                                        Text(foodItems[item])
                                            .foregroundColor(.black)
                                            .padding(.top, 5)
                                    }//VStack for image & text
                                    .padding()
                                    .cornerRadius(10)
                                }//:loop
                            }
                }//:ScrollView
                
                //Mark:-recommended or popular
                            HStack{
                               Text("Recommended")
                                
                               Text("Popular")
                                    .fontWeight(.bold)
                                
                               Spacer()
                            }
                            .padding(.horizontal)
                
                Spacer()
            }
            
            //Marks:-Orders Section
            VStack(spacing: 20) {
                ForEach(0..<5) { _ in
                    //Mark:-Main HStack for orders details
                    HStack(spacing: 20){
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 70, height: 70)
                        
                        
                        
                        VStack(alignment: .leading){
                            Text("Domingo Pizza")
                                .fontWeight(.bold)
                            
                            Text("Pizza")
                                .font(.footnote)
                            
                            Spacer()
                            
                            HStack{
                                Text("4.5/5")
                                Text("$$")
                                Text("35min")
                            }
                            .font(.footnote)
                            
                        }
                        .frame(height: 70)
                        
                        Spacer()
                    }//:HStack
                    .padding()
                    .padding(.horizontal)
                }//:loop
          }//:OrdersSection
           
        }

    }
}

#Preview {
    HomeView()
}
