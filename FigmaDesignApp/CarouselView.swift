import SwiftUI

// MARK: - 轮播卡片组件（可复用）
struct CarouselCard: View {
    let rankNumber: String
    let xOffset: CGFloat

    var body: some View {
        ZStack {
            VStack(spacing: 18) {
                HStack(alignment: .bottom, spacing: 10) {
                    VStack(spacing: 10) {
                        HStack(alignment: .top, spacing: 10) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 279, height: 274)
                                .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                                .cornerRadius(15)
                        }
                        .padding(EdgeInsets(top: 15, leading: 18, bottom: 15, trailing: 18))
                        .frame(width: 309, height: 368)
                        .background(.white)
                        .cornerRadius(15)
                    }
                    .offset(x: 0, y: -1.50)

                    VStack(spacing: 10) {
                        VStack(spacing: 10) {
                            Text(rankNumber)
                                .font(Font.custom("Helvetica Neue", size: 20).weight(.medium))
                                .foregroundColor(.white)
                        }
                    }
                    .padding(EdgeInsets(top: 5, leading: 11, bottom: 5, trailing: 11))
                    .frame(width: 35, height: 35)
                    .background(Color(red: 0.82, green: 0.11, blue: 0.26))
                    .cornerRadius(6)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Lucy Liu")
                            .font(Font.custom("Helvetica Neue", size: 18).weight(.bold))
                            .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                        Text("Morgan Stanley")
                            .font(Font.custom("Helvetica Neue", size: 14).weight(.medium))
                            .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))
                    }
                    .frame(width: 99, height: 38)

                    HStack(alignment: .bottom, spacing: 10) {
                        Text("2293")
                            .font(Font.custom("Helvetica Neue", size: 14).weight(.medium))
                            .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))
                    }
                    .frame(width: 125)
                }
                .padding(EdgeInsets(top: 27, leading: 15, bottom: 27, trailing: 15))
                .frame(height: 371)

                // 分页指示点
                HStack(spacing: 6) {
                    ForEach(0..<5, id: \.self) { index in
                        Circle()
                            .foregroundColor(.clear)
                            .frame(width: 6, height: 6)
                            .background(
                                index == Int(rankNumber) ?? 0 ?
                                Color(red: 0.82, green: 0.11, blue: 0.26) :
                                Color(red: 0.73, green: 0.73, blue: 0.73)
                            )
                    }
                }
                .frame(height: 0)
            }
            .frame(width: 309)
            .offset(x: 0, y: -1.50)
        }
        .frame(width: 311, height: 392)
        .offset(x: xOffset, y: 0)
    }
}

// MARK: - 评论卡片组件（可复用）
struct CommentCard: View {
    let yOffset: CGFloat
    let hasExtraComment: Bool // 是否有额外的评论字段

    var body: some View {
        ZStack {
            Group {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 384.50, height: 690.49)
                    .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                    .offset(x: 0.19, y: -88.75)

                Text("Simone Carter")
                    .font(Font.custom("Helvetica Neue", size: 12).weight(.medium))
                    .foregroundColor(Color(red: 0.02, green: 0, blue: 0))
                    .offset(x: -93, y: -264.50)

                Text("1d")
                    .font(Font.custom("Helvetica Neue", size: 8).weight(.medium))
                    .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                    .offset(x: -109.50, y: -246.50)

                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 32.28, height: 40.18)
                    .offset(x: -164.75, y: -252.15)

                Text("up")
                    .font(Font.custom("Helvetica Neue", size: 14).weight(.medium))
                    .foregroundColor(Color(red: 0.45, green: 0.44, blue: 0.44))
                    .offset(x: 50.50, y: 227.50)

                Text("kyleegigstead Cyborg dreams...")
                    .font(Font.custom("Helvetica Neue", size: 14).weight(.medium))
                    .foregroundColor(.black)
                    .offset(x: -52.50, y: 227.50)
            }

            Group {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 33.13, height: 33.22)
                    .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                    .offset(x: -153.16, y: -255.90)

                HStack(spacing: 30) {
                    Text("0")
                        .font(Font.custom("Inter", size: 12).weight(.bold))
                        .foregroundColor(.black)

                    if hasExtraComment {
                        ZStack {
                            Text("0")
                                .font(Font.custom("Inter", size: 12).weight(.bold))
                                .foregroundColor(.black)
                                .offset(x: 10, y: 0)
                        }
                        .frame(width: 29, height: 15)
                    } else {
                        Text("0")
                            .font(Font.custom("Inter", size: 12).weight(.bold))
                            .foregroundColor(.black)
                    }

                    ZStack {
                        Text("Share")
                            .font(Font.custom("Inter", size: 12).weight(.bold))
                            .foregroundColor(.black)
                            .offset(x: 10.50, y: -1.07)
                    }
                    .frame(width: 58, height: 15.14)
                }
                .offset(x: -59.94, y: 257.64)

                // 反应指示点
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 6, height: 6)
                    .background(Color(red: 0.81, green: 0.13, blue: 0.25))
                    .offset(x: -18, y: 209)

                ForEach(0..<3, id: \.self) { _ in
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 6, height: 6)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .offset(x: CGFloat([-7, 4, 15].randomElement() ?? 0), y: 209)
                }

                if !hasExtraComment {
                    ZStack {
                        ZStack {
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 4, height: 4)
                                .background(.black)
                                .offset(x: -8, y: 0)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 4, height: 4)
                                .background(.black)
                                .offset(x: 0, y: 0)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 4, height: 4)
                                .background(.black)
                                .offset(x: 8, y: 0)
                        }
                        .frame(width: 20, height: 4)
                        .offset(x: 0, y: 0)
                    }
                    .frame(width: 20, height: 4)
                    .offset(x: 148, y: -259)
                }

                ZStack { }
                    .frame(width: 13, height: 15)
                    .offset(x: 151.50, y: 257.50)
            }
        }
        .frame(width: 378, height: 570)
        .offset(x: 0.50, y: yOffset)
    }
}

// MARK: - 主轮播视图
struct CarouselView: View {
    // 轮播卡片的 X 偏移数组
    let carouselOffsets: [CGFloat] = [0, 330, 660.50, 982, 1303]

    // 评论卡片的 Y 偏移数组
    let commentOffsets: [CGFloat] = [-1655, -1065, -475]

    var body: some View {
        ZStack {
            Group {
                // 背景色块
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 393, height: 2695)
                    .background(Color(red: 0.97, green: 0.96, blue: 0.96))
                    .offset(x: 0, y: -978.50)

                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 393, height: 738)
                    .background(Color(red: 0.97, green: 0.96, blue: 0.96))
                    .offset(x: 0, y: 0)

                // 标题
                VStack(spacing: 8) {
                    Text("Hottest Banker in H.K.")
                        .font(Font.custom("Helvetica Neue", size: 22).weight(.bold))
                        .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                    Text("Corporate Poll")
                        .font(Font.custom("Helvetica Neue", size: 16).weight(.medium))
                        .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))
                }
                .frame(width: 272.69, height: 38)
                .offset(x: -0, y: -162)

                // 轮播卡片容器
                ZStack {
                    ForEach(0..<5, id: \.self) { index in
                        CarouselCard(
                            rankNumber: String(index + 1),
                            xOffset: carouselOffsets[index]
                        )
                    }
                }
                .frame(width: 393, height: 392)
                .offset(x: 0, y: 71)

                // View More 按钮
                HStack(alignment: .bottom, spacing: 10) {
                    Text("view more")
                        .font(Font.custom("Helvetica Neue", size: 13))
                        .foregroundColor(Color(red: 0.81, green: 0.13, blue: 0.25))
                        .offset(x: 0.19, y: -0.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 58, height: 0)
                        .overlay(
                            Rectangle()
                                .stroke(Color(red: 0.81, green: 0.13, blue: 0.25), lineWidth: 0.50)
                        )
                }
                .padding(EdgeInsets(top: 3, leading: 2, bottom: 3, trailing: 2))
                .frame(width: 60.15, height: 17)
                .offset(x: 123.81, y: 274.50)

                // 评论卡片容器
                ForEach(0..<3, id: \.self) { index in
                    CommentCard(
                        yOffset: commentOffsets[index],
                        hasExtraComment: index == 2
                    )
                }

                // 底部图片占位符
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393.67, height: 220.81)
                        .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                        .offset(x: 1.17, y: 0.67)
                }
                .frame(width: 378, height: 212)
                .offset(x: 0.50, y: -2071)

                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 379, height: 149)
                    .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                    .offset(x: 0, y: -2251.50)
            }
        }
        .frame(width: 393, height: 738)
    }
}

#Preview {
    CarouselView()
}
