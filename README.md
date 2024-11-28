# AnimationsUIKit

**Author**: Hernán Rodríguez  
**Contact**: hernanrg85@gmail.com

## Overview

`AnimationsUIKit` is a Swift library that extends `UIView` with various animation methods, including fade, slide, bounce, shake, rotate, and zoom effects.

## Installation

### Swift Package Manager

To integrate `AnimationsUIKit` into your Xcode project using Swift Package Manager:

1. Open your project in Xcode.
2. Navigate to **File > Add Packages**.
3. Enter the repository URL: `https://github.com/yourusername/AnimationsUIKit.git`.
4. Choose the version or branch you want to install.
5. Click **Add Package**.

## Usage

Import the library:

```swift
import AnimationsUIKit
```

Then, you can use the provided animation methods on any `UIView` instance:

```swift
let view = UIView()
view.fadeIn()
view.slideInFromLeft()
```

## Animations

- **Fade Animations**: `fadeIn`, `fadeOut`, `fadeInUp`, `fadeOutDown`
- **Slide Animations**: `slideInFromLeft`, `slideOutToRight`, `slideInFromTop`, `slideOutToBottom`
- **Bounce Animations**: `bounce`, `bounceIn`, `bounceOut`
- **Shake Animations**: `shake`
- **Rotate Animations**: `rotate360`
- **Zoom Animations**: `zoomIn`, `zoomOut`

Each method comes with customizable parameters for duration, delay, and completion handlers.

## License

`AnimationsUIKit` is available under the MIT license. See the [LICENSE](LICENSE) file for more information.
