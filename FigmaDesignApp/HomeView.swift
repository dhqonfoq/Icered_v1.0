import SwiftUI

struct HomeView: View {
    @Environment(\.dismiss) var dismiss
    @State private var showReportView = false
    @State private var showThankYouView = false

    var body: some View {
        ZStack {
            // 背景色
            Color(red: 0.97, green: 0.96, blue: 0.96)
                .ignoresSafeArea()

            NavigationStack {
                VStack(spacing: 0) {
                // MARK: - 顶部导航栏
                HStack {
                    Button(action: { dismiss() }) {
                        Image("Back-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Image("ICERED-icon")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 18)
                    Spacer()
                    Button(action: {}) {
                        Image("Notice-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .background(Color.white)

                Divider()

                // MARK: - 可滚动内容区
                ScrollView {
                    VStack(spacing: 20) {
                        // MARK: - 评论卡片 1
                        CommentCardItem(imageAssetName: "post-image", showReportView: $showReportView)

                        // MARK: - 评论卡片 2
                        CommentCardItem(imageAssetName: "post-image-2", showReportView: $showReportView)

                        // MARK: - 评论卡片 3 (特殊版本)
                        CommentCardItem(hasExtraField: true, imageAssetName: "post-image-3", showReportView: $showReportView)

                        // MARK: - 标题部分
                        VStack(spacing: 8) {
                            Text("Hottest Banker in H.K.")
                                .font(.system(size: 22, weight: .bold))
                                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))

                            Text("Corporate Poll")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))
                        }

                        // MARK: - 轮播卡片容器 (水平滚动)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                // 卡片 1
                                CarouselCardItem(
                                    rankNumber: "1",
                                    name: "Lucy Liu",
                                    company: "Morgan Stanley",
                                    votes: "2293",
                                    isActive: true,
                                    imageAssetName: "PollCard-1"
                                )

                                // 卡片 2
                                CarouselCardItem(
                                    rankNumber: "2",
                                    name: "Lucy Liu",
                                    company: "Morgan Stanley",
                                    votes: "2293",
                                    isActive: false,
                                    imageAssetName: "PollCard-2"
                                )

                                // 卡片 3
                                CarouselCardItem(
                                    rankNumber: "3",
                                    name: "Lucy Liu",
                                    company: "Morgan Stanley",
                                    votes: "2293",
                                    isActive: false,
                                    imageAssetName: "PollCard-3"
                                )

                                // 卡片 4
                                CarouselCardItem(
                                    rankNumber: "4",
                                    name: "Lucy Liu",
                                    company: "Morgan Stanley",
                                    votes: "2293",
                                    isActive: false,
                                    imageAssetName: "PollCard-4"
                                )

                                // 卡片 5
                                CarouselCardItem(
                                    rankNumber: "5",
                                    name: "Lucy Liu",
                                    company: "Morgan Stanley",
                                    votes: "2293",
                                    isActive: false,
                                    imageAssetName: "PollCard-5"
                                )
                            }
                            .padding(.horizontal)
                        }
                        .frame(height: 320)

                        // MARK: - 分页指示点
                        HStack(spacing: 8) {
                            Circle()
                                .fill(Color(red: 0.82, green: 0.11, blue: 0.26))
                                .frame(width: 6, height: 6)

                            ForEach(0..<4, id: \.self) { _ in
                                Circle()
                                    .fill(Color(red: 0.73, green: 0.73, blue: 0.73))
                                    .frame(width: 6, height: 6)
                            }
                        }

                        // MARK: - View more 按钮
                        HStack(spacing: 8) {
                            Text("view more")
                                .font(.system(size: 13))
                                .foregroundColor(Color(red: 0.81, green: 0.13, blue: 0.25))

                            Rectangle()
                                .stroke(Color(red: 0.81, green: 0.13, blue: 0.25), lineWidth: 0.5)
                                .frame(height: 1)
                                .frame(width: 50)
                        }
                        .padding(.top, 10)
                    }
                    .padding(.vertical, 16)
                    .padding(.horizontal)
                }
                .safeAreaInset(edge: .bottom) {
                    Color.clear.frame(height: 100)
                }

                // MARK: - 底部导航栏
                HStack(spacing: -20) {
                    // Home
                    VStack(spacing: 2) {
                        Image("home-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 22)
                        Text("Home")
                            .font(.system(size: 9, weight: .medium))
                            .foregroundColor(Color(red: 0.87, green: 0.11, blue: 0.26))
                    }
                    .frame(maxWidth: .infinity)

                    // Message
                    VStack(spacing: 4) {
                        Image("Message-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                        Text("Message")
                            .font(.system(size: 9))
                            .foregroundColor(.black)
                    }
                    .frame(maxWidth: .infinity)

                    // New Post
                    VStack(spacing: -10) {
                        Image("Newpost-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48, height: 48)
                        Text("")
                            .font(.system(size: 9))
                    }
                    .frame(maxWidth: .infinity)

                    // Alice
                    VStack(spacing: -12) {
                        Image("alice-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 36, height: 36)
                        Text("")
                            .font(.system(size: 9))
                    }
                    .frame(maxWidth: .infinity)

                    // Account
                    VStack(spacing: 4) {
                        Image("Account-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        Text("Account")
                            .font(.system(size: 9))
                            .foregroundColor(.black)
                    }
                    .frame(maxWidth: .infinity)
                }
                .frame(height: 60)
                .padding(.bottom, 20)
                .background(Color.white)
                .border(Color(red: 0.74, green: 0.74, blue: 0.74), width: 0.5)
                .offset(y: 35)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $showReportView) {
            ReportView(isPresented: $showReportView, showThankYouView: $showThankYouView)
        }
    }
}

// MARK: - 轮播卡片组件
struct CarouselCardItem: View {
    let rankNumber: String
    let name: String
    let company: String
    let votes: String
    let isActive: Bool
    let imageAssetName: String  // ✅ 新增参数：图片资源名称

    var body: some View {
        VStack(spacing: 16) {
            // 图片区域
            Image(imageAssetName)  // ✅ 使用参数，支持动态图片名称
                .resizable()
                .scaledToFill()
                .frame(height: 250)
                .clipped()
                .cornerRadius(15)

            // 排名和信息
            HStack(spacing: 12) {
                Text(rankNumber)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 35, height: 35)
                    .background(Color(red: 0.82, green: 0.11, blue: 0.26))
                    .cornerRadius(6)

                VStack(alignment: .leading, spacing: 4) {
                    Text(name)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))

                    Text(company)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))
                }

                Spacer()

                Text(votes)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .frame(width: 310)
    }
}

// MARK: - 评论卡片组件
struct CommentCardItem: View {
    var hasExtraField: Bool = false
    let imageAssetName: String
    @Binding var showReportView: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // MARK: - 用户信息头（顶部）
            HStack(spacing: 10) {
                // 头像
                Circle()
                    .fill(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                    .frame(width: 40, height: 40)

                // 用户信息
                VStack(alignment: .leading, spacing: 2) {
                    Text("Simone Carter")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.black)

                    Text("1d")
                        .font(.system(size: 11))
                        .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                }

                Spacer()

                // 菜单按钮 - 点击跳转到 ReportView
                Button(action: {
                    showReportView = true
                }) {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                        .contentShape(Rectangle())
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)

            // MARK: - 主图片区域（中间）
            Image(imageAssetName)  // ✅ 使用参数，支持动态图片名称
                .resizable()
                .scaledToFill()  // 改为 scaledToFill() 填满容器，多余部分裁剪
                .frame(maxWidth: .infinity, minHeight: 200)  // 固定宽度，最小高度 200
                .clipped()
                .cornerRadius(12)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)

            // MARK: - 分页指示点
            HStack(spacing: 6) {
                Circle()
                    .fill(Color(red: 0.81, green: 0.13, blue: 0.25))
                    .frame(width: 6, height: 6)

                ForEach(0..<3, id: \.self) { _ in
                    Circle()
                        .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .frame(width: 6, height: 6)
                }
            }
            .padding(.horizontal, 160)
            .padding(.vertical, 6)

            // MARK: - 评论文本（下部）
            HStack(spacing: 4) {
                Text("kyleegigstead Cyborg dreams...")
                    .font(.system(size: 13))
                    .foregroundColor(.black)

                Text("up")
                    .font(.system(size: 11))
                    .foregroundColor(Color(red: 0.45, green: 0.44, blue: 0.44))

                Spacer()
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)

            // MARK: - 交互按钮
            HStack(spacing: 16) {
                HStack(spacing: 6) {
                    Image(systemName: "arrowtriangle.up.fill")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                    Text("0")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.black)
                }

                HStack(spacing: 6) {
                    Image(systemName: "arrowtriangle.down.fill")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                    Text("0")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.black)
                }

                HStack(spacing: 6) {
                    Image(systemName: "bubble.right")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                    Text("0")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.black)
                }

                HStack(spacing: 6) {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                    Text("Share")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.black)
                }

                Spacer()

                Image(systemName: "bookmark")
                    .font(.system(size: 12))
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
        }
        .background(Color.white)
        .cornerRadius(12)
    }
}

#Preview {
    HomeView()
}
