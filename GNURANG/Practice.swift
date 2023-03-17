//
//  Practice.swift
//  GNURANG
//
//  Created by 하일환 on 2023/03/06.
//

import SwiftUI
// import PassKit

struct Practice: View {
    var body: some View {
        NavigationStack {
            List(0..<100) {
                Text("Row \($0)")
            }
            .navigationTitle("100 Rows")
            
            .toolbarBackground(.teal)
        }
    }
}

struct MyView: View {

//    init() {
//        let navBarAppearance = UINavigationBarAppearance()
//        navBarAppearance.shadowImage = UIImage()
//        navBarAppearance.shadowColor = .clear
//        navBarAppearance.backgroundColor = UIColor.red
//        UINavigationBar.appearance().standardAppearance = navBarAppearance
//        UINavigationBar.appearance().compactAppearance = navBarAppearance
//        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
//    }

    var body: some View {
        NavigationStack {
            VStack {
                Rectangle().foregroundColor(Color(UIColor.red)).frame(height: 20)
                Spacer()
                List(0..<100) {
                    Text("Row \($0)")
                }
                .navigationTitle("100 Rows")
                .toolbarBackground(.teal)
                
            }
        }
    }
}

//https://stackoverflow.com/questions/60766310/implementing-apple-pay-with-swiftui

// import PassKit
//
// typealias PaymentCompletionHandler = (Bool) -> Void
//
// class PaymentHandler: NSObject {
//
//     static let supportedNetworks: [PKPaymentNetwork] = [
//         .amex,
//         .masterCard,
//         .visa
//     ]
//
//     var paymentController: PKPaymentAuthorizationController?
//     var paymentSummaryItems = [PKPaymentSummaryItem]()
//     var paymentStatus = PKPaymentAuthorizationStatus.failure
//     var completionHandler: PaymentCompletionHandler?
//
//     func startPayment(completion: @escaping PaymentCompletionHandler) {
//
//         let amount = PKPaymentSummaryItem(label: "Amount", amount: NSDecimalNumber(string: "8.88"), type: .final)
//         let tax = PKPaymentSummaryItem(label: "Tax", amount: NSDecimalNumber(string: "1.12"), type: .final)
//         let total = PKPaymentSummaryItem(label: "ToTal", amount: NSDecimalNumber(string: "10.00"), type: .pending)
//
//         paymentSummaryItems = [amount, tax, total];
//         completionHandler = completion
//
//         // Create our payment request
//         let paymentRequest = PKPaymentRequest()
//         paymentRequest.paymentSummaryItems = paymentSummaryItems
//         paymentRequest.merchantIdentifier = "merchant.com.YOURDOMAIN.YOURAPPNAME"
//         paymentRequest.merchantCapabilities = .capability3DS
//         paymentRequest.countryCode = "US"
//         paymentRequest.currencyCode = "USD"
//         paymentRequest.requiredShippingContactFields = [.phoneNumber, .emailAddress]
//         paymentRequest.supportedNetworks = PaymentHandler.supportedNetworks
//
//         // Display our payment request
//         paymentController = PKPaymentAuthorizationController(paymentRequest: paymentRequest)
//         paymentController?.delegate = self
//         paymentController?.present(completion: { (presented: Bool) in
//             if presented {
//                 NSLog("Presented payment controller")
//             } else {
//                 NSLog("Failed to present payment controller")
//                 self.completionHandler!(false)
//             }
//         })
//     }
// }
//
// /*
//  PKPaymentAuthorizationControllerDelegate conformance.
//  */
// extension PaymentHandler: PKPaymentAuthorizationControllerDelegate {
//
//     func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didAuthorizePayment payment: PKPayment, completion: @escaping (PKPaymentAuthorizationStatus) -> Void) {
//
//         // Perform some very basic validation on the provided contact information
//         if payment.shippingContact?.emailAddress == nil || payment.shippingContact?.phoneNumber == nil {
//             paymentStatus = .failure
//         } else {
//             // Here you would send the payment token to your server or payment provider to process
//             // Once processed, return an appropriate status in the completion handler (success, failure, etc)
//             paymentStatus = .success
//         }
//
//         completion(paymentStatus)
//     }
//
//     func paymentAuthorizationControllerDidFinish(_ controller: PKPaymentAuthorizationController) {
//         controller.dismiss {
//             DispatchQueue.main.async {
//                 if self.paymentStatus == .success {
//                     self.completionHandler!(true)
//                 } else {
//                     self.completionHandler!(false)
//                 }
//             }
//         }
//     }
//
// }
//
// struct paytestView: View {
//
//     let paymentHandler = PaymentHandler()
//
//     var body: some View {
//         Button(action: {
//             self.paymentHandler.startPayment { (success) in
//                 if success {
//                     print("Success")
//                 } else {
//                     print("Failed")
//                 }
//             }
//         }, label: {
//             Text("PAY WITH  APPLE")
//                 .font(Font.custom("HelveticaNeue-Bold", size: 16))
//                 .padding(10)
//                 .foregroundColor(.white)
//         })
//                }
//
//                }
//
// //struct anView: View {
// //    var body: some View {
// //        struct ApplePayButton: UIViewRepresentable {
// //            func updateUIView(_ uiView: PKPaymentButton, context: Context) {
// //
// //            }
// //            func makeUIView(context: Context) -> PKPaymentButton {
// //                return PKPaymentButton(paymentButtonType: .plain, paymentButtonStyle: .black)
// //            }
// //        }
// //        struct ApplePayButtonStyle: ButtonStyle {
// //            func makeBody(configuration: Self.Configuration) -> some View {
// //                return ApplePayButton()
// //            }
// //        }
// //        Button( action: {
// //            self.setupPKPaymentRequest()
// //        }, label: { Text("")} )
// //        .frame(width: 212, height: 38, alignment: .center)
// //        .buttonStyle(ApplePayButtonStyle()
// //                     }
// //                     }


struct Practice_Previews: PreviewProvider {
    static var previews: some View {
//        MyView()
        Practice()
//        paytestView()
//        anView()
    }
}
