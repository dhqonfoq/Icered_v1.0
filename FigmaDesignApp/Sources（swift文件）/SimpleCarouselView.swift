import SwiftUI

struct SimpleCarouselView: View {
    var body: some View {
        VStack(spacing: 20) {
            // 标题
            Text("Hottest Banker in H.K.")
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))

            Text("Corporate Poll")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))

            // 轮播卡片
            VStack(spacing: 16) {
                Rectangle()
                    .fill(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                    .frame(height: 250)
                    .cornerRadius(15)

                HStack(spacing: 12) {
                    Text("1")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 35, height: 35)
                        .background(Color(red: 0.82, green: 0.11, blue: 0.26))
                        .cornerRadius(6)

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Lucy Liu")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                        Text("Morgan Stanley")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))
                    }

                    Spacer()

                    Text("2293")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.54))
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .padding(.horizontal)

            // 分页指示点
            HStack(spacing: 8) {
                Circle()
                    .fill(Color(red: 0.82, green: 0.11, blue: 0.26))
                    .frame(width: 6, height: 6)
                Circle()
                    .fill(Color(red: 0.73, green: 0.73, blue: 0.73))
                    .frame(width: 6, height: 6)
                Circle()
                    .fill(Color(red: 0.73, green: 0.73, blue: 0.73))
                    .frame(width: 6, height: 6)
                Circle()
                    .fill(Color(red: 0.73, green: 0.73, blue: 0.73))
                    .frame(width: 6, height: 6)
                Circle()
                    .fill(Color(red: 0.73, green: 0.73, blue: 0.73))
                    .frame(width: 6, height: 6)
            }

            // View more 按钮
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

            // 评论卡片
            VStack(alignment: .leading, spacing: 12) {
                HStack(spacing: 10) {
                    Rectangle()
                        .fill(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
                        .frame(width: 32, height: 32)
                        .cornerRadius(4)

                    VStack(alignment: .leading, spacing: 2) {
                        Text("Simone Carter")
                            .font(.system(size: 11, weight: .medium))
                            .foregroundColor(.black)
                        Text("1d")
                            .font(.system(size: 8))
                            .foregroundColor(Color(red: 0.32, green: 0.32, blue: 0.32))
                    }

                    Spacer()

                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                }

                Text("up kyleegigstead Cyborg dreams...")
                    .font(.system(size: 13))
                    .foregroundColor(.black)

                HStack(spacing: 24) {
                    Text("👍 0")
                        .font(.system(size: 11, weight: .bold))
                    Text("💬 0")
                        .font(.system(size: 11, weight: .bold))
                    Text("↗️ Share")
                        .font(.system(size: 11, weight: .bold))
                }
                .foregroundColor(.black)

                HStack(spacing: 6) {
                    Circle()
                        .fill(Color(red: 0.82, green: 0.11, blue: 0.26))
                        .frame(width: 6, height: 6)
                    Circle()
                        .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .frame(width: 6, height: 6)
                    Circle()
                        .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .frame(width: 6, height: 6)
                    Circle()
                        .fill(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .frame(width: 6, height: 6)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .padding(.horizontal)
        }
        .padding(.vertical, 16)
    }
}

#Preview {
    SimpleCarouselView()
}
