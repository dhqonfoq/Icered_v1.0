import SwiftUI

struct ReportView: View {
    @State private var showThankYou = false
    @State private var showPoll = false
    @Binding var isPresented: Bool
    @Binding var showThankYouView: Bool
    @Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()

                VStack(spacing: 0) {
                // Top Navigation Bar
                HStack(spacing: 16) {
                    // Close Button
                    Button {
                        isPresented = false
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.black)
                    }
                    .contentShape(Rectangle())
                    .frame(width: 24, height: 24)

                    Spacer()

                    // Report Title
                    Text("Report")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(.black)

                    Spacer()

                    // Empty space for balance
                    Color.clear
                        .frame(width: 20)
                }
                .frame(height: 64)
                .padding(.horizontal, 16)
                .background(Color(red: 0.98, green: 0.98, blue: 0.98))

                Divider()

                // Main content
                ScrollView {
                    VStack(alignment: .center, spacing: 16) {
                        // Title
                        Text("Why are you reporting this post?")
                            .font(.system(size: 20, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .multilineTextAlignment(.center)

                        // Description
                        Text("Your report is anonymous. If someone is in immediate danger, call the local emergency services - don't wait.")
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: 0.60, green: 0.60, blue: 0.60))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .multilineTextAlignment(.center)

                        Divider()
                            .padding(.vertical, 8)

                        // Options list
                        VStack(spacing: 0) {
                            ReportOptionNavigable(title: "I just don't like it", showThankYouView: $showThankYouView, isPresented: $isPresented)
                            ReportOptionNavigable(title: "Bullying or unwanted contact", showThankYouView: $showThankYouView, isPresented: $isPresented)
                            ReportOptionNavigable(title: "Suicide, self-injury or eating disorders", showThankYouView: $showThankYouView, isPresented: $isPresented)
                            ReportOptionNavigable(title: "Violence, hate or exploitation", showThankYouView: $showThankYouView, isPresented: $isPresented)
                            ReportOptionNavigable(title: "Selling or promoting restricted items", showThankYouView: $showThankYouView, isPresented: $isPresented)
                            ReportOptionNavigable(title: "Nudity or sexual activity", showThankYouView: $showThankYouView, isPresented: $isPresented)
                            ReportOptionNavigable(title: "Scam, fraud or spam", showThankYouView: $showThankYouView, isPresented: $isPresented)
                            ReportOptionNavigable(title: "False information", showThankYouView: $showThankYouView, isPresented: $isPresented)
                            ReportOptionNavigable(title: "Intellectual property", showThankYouView: $showThankYouView, isPresented: $isPresented)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 20)
                }
            }
            }
        }
        .preferredColorScheme(nil)
        .navigationBarBackButtonHidden(true)
    }
}

struct ReportOptionNavigable: View {
    let title: String
    @Binding var showThankYouView: Bool
    @Binding var isPresented: Bool

    var body: some View {
        NavigationLink {
            ThankYouView(showThankYouView: $showThankYouView, isPresented: $isPresented)
                .transaction { transaction in
                    transaction.animation = nil
                }
        } label: {
            VStack(spacing: 0) {
                HStack {
                    Text(title)
                        .font(.system(size: 18))
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(height: 60)

                Divider()
                    .padding(.horizontal)
            }
        }
        .transaction { transaction in
            transaction.animation = nil
        }
    }
}

#Preview {
    @Previewable @State var isPresented = true
    @Previewable @State var showThankYouView = false
    ReportView(isPresented: $isPresented, showThankYouView: $showThankYouView)
}
