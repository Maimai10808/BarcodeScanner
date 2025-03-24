# BarcodeScanner



# iOS Barcode Scanner App

A modern, efficient, and user-friendly barcode scanner application built with SwiftUI and AVFoundation. This project demonstrates advanced iOS development practices and modern Swift features.

## 🚀 Features & Technical Implementation

### 1. Real-time Barcode Scanning
```swift
// BarcodeScannerView.swift
struct BarcodeScannerView: View {
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                          alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                // ...
            }
        }
    }
}
```
- **技术亮点**：
  - 使用 `@StateObject` 实现响应式状态管理
  - 采用 SwiftUI 的声明式UI构建实时扫描界面
  - 通过 AVFoundation 实现高性能相机捕获

### 2. MVVM 架构实现
```swift
// BarcodeScannerViewModel.swift
final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
```
- **技术亮点**：
  - 使用 `ObservableObject` 协议实现数据绑定
  - 通过 `@Published` 属性包装器实现响应式更新
  - 计算属性实现UI状态动态更新

### 3. 错误处理机制
```swift
// AlertItem 结构体
struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}
```
- **技术亮点**：
  - 使用 `Identifiable` 协议实现类型安全的警告处理
  - 自定义 Alert 系统实现优雅的错误提示
  - 响应式错误状态管理

### 4. 用户界面优化
```swift
// BarcodeScannerView.swift
Label("Scanned Barcode", systemImage: "barcode.viewfinder")
    .font(.title)

Text(viewModel.statusText)
    .bold()
    .font(.largeTitle)
    .foregroundColor(viewModel.statusColor)
    .padding()
```
- **技术亮点**：
  - 使用 SF Symbols 实现现代化图标
  - 动态颜色系统实现状态反馈
  - 响应式布局适配不同设备

## 💡 核心技术亮点

### 1. 现代 Swift 特性应用
- Property Wrappers 的深入应用
- SwiftUI 的声明式UI编程
- 响应式编程范式
- 协议导向编程

### 2. 性能优化
- 高效的相机处理机制
- 内存管理优化
- UI更新性能优化
- 实时数据处理

### 3. 代码质量
- 清晰的代码组织结构
- 模块化设计
- 可测试性考虑
- 可维护性保证

## 🛠 技术栈

- **UI框架**: SwiftUI
- **相机处理**: AVFoundation
- **架构模式**: MVVM
- **编程语言**: Swift 5.0+
- **最低支持**: iOS 15.0+

## 📱 系统要求

- iOS 15.0+
- Xcode 13.0+
- Swift 5.0+

## 🔧 安装步骤

1. 克隆仓库
```bash
git clone [repository-url]
```

2. 打开项目
```bash
cd BarcodeScanner1
open BarcodeScanner1.xcodeproj
```

3. 构建运行
- 选择目标设备
- 点击运行按钮或使用快捷键 ⌘R


## 🤝 贡献指南

欢迎提交 Pull Request 来改进项目。在提交之前，请确保：
1. 代码符合项目的编码规范
2. 新功能有适当的测试覆盖
3. 更新相关文档

