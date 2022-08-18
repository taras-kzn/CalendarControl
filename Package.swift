// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "CalendarControl",
  platforms: [
    .macOS(.v10_15), .iOS(.v14), .tvOS(.v14)
  ],
  products: [
//2 Это продукты, которые предоставляет пакет. Это может быть либо библиотека — код, который вы можете импортировать в другие проекты Swift, — либо исполняемый код, который вы можете запускать в операционной системе. Продукт — это цель , которую вы можете экспортировать для использования в других пакетах.
    .library(
        name: "CalendarControl",
        targets: ["CalendarControl"]),
  ],
  targets: [
//3 Цели — это модули кода, которые строятся независимо. Здесь вы добавляете путь для своего XCFramework.
    .binaryTarget(
        name: "CalendarControl",
        path: "./Sources/CalendarControl.xcframework")
  ]
)
