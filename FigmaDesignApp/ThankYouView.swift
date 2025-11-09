import SwiftUI

struct ThankYouView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var showThankYouView: Bool
    @Binding var isPresented: Bool

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()

            VStack(spacing: 0) {
                // Top Navigation Bar
                HStack {
                    Button(action: { dismiss() }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Text("Report")
                        .font(.system(size: 24, weight: .semibold))
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "xmark")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.clear)
                    }
                }
                .padding()
                .background(Color.white)

                Divider()

                // Main content
                VStack(spacing: 0) {
                    Spacer()

                    // Success checkmark icon
                    Circle()
                        .fill(Color(red: 0.8, green: 0.8, blue: 0.8))
                        .frame(width: 120, height: 120)
                        .overlay(
                            Image(systemName: "checkmark")
                                .font(.system(size: 50, weight: .semibold))
                                .foregroundColor(.white)
                        )
                        .padding(.bottom, 30)

                    // Thank you message
                    VStack(alignment: .center, spacing: 16) {
                        Text("Thank you for your feedback!")
                            .font(.system(size: 20, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.horizontal)

                    Spacer()

                    // Done button
                    Button(action: {
                        isPresented = false  // 关闭 ReportView sheet，返回 HomeView
                    }) {
                        Text("Done")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: 46)
                            .background(Color(red: 0.81, green: 0.13, blue: 0.25))
                            .cornerRadius(23)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 30)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    @Previewable @State var showThankYouView = true
    @Previewable @State var isPresented = true
    ThankYouView(showThankYouView: $showThankYouView, isPresented: $isPresented)
}
