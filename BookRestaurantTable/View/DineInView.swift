//
//  DineInView.swift
//  BookRestaurantTable
//
//  Created by user on 20.04.2021.
//

import SwiftUI

struct DineInView: View {
    var body: some View {
        VStack(spacing: 0) {
        Group {
            ZStack {
            }
            .frame(width: 24, height: 24)
            .padding(.vertical, 10)
            .padding(.leading, 16)
            .padding(.trailing, 335)
            .frame(width: 375, height: 44)

            Text("Book a table")
            .fontWeight(.bold)
            .font(.title)
            .tracking(0.36)
            .lineSpacing(34)
            .padding(.vertical, 7)
            .padding(.leading, 16)
            .padding(.trailing, 199)
            .frame(width: 375, height: 48)

            VStack(spacing: 3) {
                    Text("Reservation ID")
                    .font(.footnote)
                    .frame(width: 343, alignment: .topLeading)
                    .lineSpacing(18)

                    Text("199029")
                    .font(.body)
                    .frame(width: 343, alignment: .topLeading)
                    .lineSpacing(22)
            }
            .padding(.horizontal, 16)
            .padding(.top, 15)
            .padding(.bottom, 14)
            .frame(width: 375, height: 72)

            ZStack {
                    Text("Today")
                    .font(.body)
                    .frame(width: 303, alignment: .topLeading)
                    .lineSpacing(22)
                    .offset(x: -20, y: 11)

                    Text("Expected date of arrival")
                    .font(.footnote)
                    .frame(width: 303, alignment: .topLeading)
                    .lineSpacing(18)
                    .offset(x: -20, y: -12)

                    ZStack {
                    }
                    .offset(x: 159.50, y: 0)
                    .frame(width: 24, height: 24)
            }
            .frame(width: 375, height: 72)

            ZStack {
                    Text("5:00 PM")
                    .font(.body)
                    .frame(width: 303, alignment: .topLeading)
                    .lineSpacing(22)
                    .offset(x: -20, y: 11)

                    Text("Expected time of arrival")
                    .font(.footnote)
                    .frame(width: 303, alignment: .topLeading)
                    .lineSpacing(18)
                    .offset(x: -20, y: -12)

                    ZStack {
                    }
                    .offset(x: 159.50, y: 0)
                    .frame(width: 24, height: 24)
            }
            .frame(width: 375, height: 72)

            Text("Number of adults")
            .font(.body)
            .frame(width: 343, alignment: .topLeading)
            .lineSpacing(22)

            HStack() {
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                    .frame(width: 24, height: 24)

                    Text("2")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .frame(width: 231, alignment: .top)
                    .lineSpacing(22)

                    ZStack {
                    }
                    .frame(width: 24, height: 24)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .frame(width: 343, height: 48)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            .cornerRadius(24)

            HStack() {
                    Text("Is this a Special Event?")
                    .font(.body)
                    .frame(width: 279, alignment: .topLeading)
                    .lineSpacing(22)

                    Ellipse()
                    .fill(Color.white)
                    .frame(width: 24, height: 24)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.16), radius: 4, y: 2)
                    .padding(.vertical, 2)
                    .padding(.leading, 2)
                    .padding(.trailing, 22)
                    .frame(width: 48, height: 28)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(24)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .frame(width: 375, height: 48)

            Text("How long will you be dining with us?")
            .font(.body)
            .frame(width: 343, alignment: .topLeading)
            .lineSpacing(22)

            HStack() {
                    RoundedRectangle(cornerRadius: 8)
                    .fill(Color(red: 0.50, green: 0.23, blue: 0.27, opacity: 0.50))
                    .frame(width: 24, height: 24)

                    Text("1 hr")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .frame(width: 231, alignment: .top)
                    .lineSpacing(22)

                    ZStack {
                    }
                    .frame(width: 24, height: 24)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .frame(width: 343, height: 48)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            .cornerRadius(24)
        }
        Group {
            Text("Available reservation times")
            .font(.body)
            .frame(width: 343, alignment: .topLeading)
            .lineSpacing(22)

            Text("5:00 PM")
            .font(.body)
            .multilineTextAlignment(.center)
            .frame(width: 81, alignment: .top)
            .lineSpacing(22)
            .padding(.vertical, 13)
            .padding(.leading, 16)
            .padding(.trailing, 12)
            .frame(width: 109, height: 48)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            .cornerRadius(24)

            Text("5:30 PM")
            .font(.body)
            .multilineTextAlignment(.center)
            .frame(width: 81, alignment: .top)
            .lineSpacing(22)
            .padding(.vertical, 13)
            .padding(.leading, 16)
            .padding(.trailing, 12)
            .frame(width: 109, height: 48)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            .cornerRadius(24)

            Text("6:00 PM")
            .font(.body)
            .multilineTextAlignment(.center)
            .frame(width: 81, alignment: .top)
            .lineSpacing(22)
            .padding(.vertical, 13)
            .padding(.leading, 16)
            .padding(.trailing, 12)
            .frame(width: 109, height: 48)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            .cornerRadius(24)

            Text("6:30 PM")
            .font(.body)
            .multilineTextAlignment(.center)
            .frame(width: 81, alignment: .top)
            .lineSpacing(22)
            .padding(.vertical, 13)
            .padding(.leading, 16)
            .padding(.trailing, 12)
            .frame(width: 109, height: 48)
            .background(Color(red: 0.96, green: 0.96, blue: 0.96))
            .cornerRadius(24)

            Text("Continue")
            .fontWeight(.semibold)
            .font(.body)
            .multilineTextAlignment(.center)
            .frame(width: 194, alignment: .top)
            .lineSpacing(22)
            .padding(.horizontal, 16)
            .padding(.vertical, 13)
            .frame(width: 226, height: 48)
            .background(Color(red: 0.24, green: 0.49, blue: 1))
            .cornerRadius(24)
            .shadow(radius: 16, y: 8)
        }
        }
        .padding(.top, 44)
        .padding(.bottom, 50)
        .frame(width: 375, height: 850)
        .background(Color.white)
    }
}

struct DineInView_Previews: PreviewProvider {
    static var previews: some View {
        DineInView()
    }
}
