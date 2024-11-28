// The Swift Programming Language
// https://docs.swift.org/swift-book

#if canImport(UIKit)
import UIKit

public extension UIView {
    // MARK: - Fade Animations
    
    func fadeIn(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting fadeIn animation")
        self.alpha = 0
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.alpha = 1
        }) { _ in
            print("Completed fadeIn animation")
            completion?()
        }
    }
    
    func fadeOut(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting fadeOut animation")
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.alpha = 0
        }) { _ in
            print("Completed fadeOut animation")
            completion?()
        }
    }
    
    func fadeInUp(yOffset: CGFloat = 20, duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting fadeInUp animation")
        self.alpha = 0
        self.transform = CGAffineTransform(translationX: 0, y: yOffset)
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.alpha = 1
            self.transform = .identity
        }) { _ in
            print("Completed fadeInUp animation")
            completion?()
        }
    }
    
    func fadeOutDown(yOffset: CGFloat = 20, duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting fadeOutDown animation")
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            self.alpha = 0
            self.transform = CGAffineTransform(translationX: 0, y: yOffset)
        }) { _ in
            print("Completed fadeOutDown animation")
            completion?()
        }
    }
    
    // MARK: - Slide Animations
    
    func slideInFromLeft(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting slideInFromLeft animation")
        let originalFrame = self.frame
        self.frame.origin.x = -self.frame.width
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.frame = originalFrame
        }) { _ in
            print("Completed slideInFromLeft animation")
            completion?()
        }
    }
    
    func slideOutToRight(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting slideOutToRight animation")
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            self.frame.origin.x += UIScreen.main.bounds.width
        }) { _ in
            print("Completed slideOutToRight animation")
            completion?()
        }
    }
    
    func slideInFromTop(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting slideInFromTop animation")
        let originalFrame = self.frame
        self.frame.origin.y = -self.frame.height
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.frame = originalFrame
        }) { _ in
            print("Completed slideInFromTop animation")
            completion?()
        }
    }
    
    func slideOutToBottom(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting slideOutToBottom animation")
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            self.frame.origin.y += UIScreen.main.bounds.height
        }) { _ in
            print("Completed slideOutToBottom animation")
            completion?()
        }
    }
    
    // MARK: - Bounce Animations
    
    func bounce(duration: TimeInterval = 0.3, scale: CGFloat = 1.2, completion: (() -> Void)? = nil) {
        print("Starting bounce animation")
        UIView.animate(withDuration: duration / 2, animations: {
            self.transform = CGAffineTransform(scaleX: scale, y: scale)
        }) { _ in
            UIView.animate(withDuration: duration / 2, animations: {
                self.transform = .identity
            }) { _ in
                print("Completed bounce animation")
                completion?()
            }
        }
    }
    
    func bounceIn(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting bounceIn animation")
        self.alpha = 0
        self.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        UIView.animate(withDuration: duration, delay: delay, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8, options: .curveEaseOut, animations: {
            self.alpha = 1
            self.transform = .identity
        }) { _ in
            print("Completed bounceIn animation")
            completion?()
        }
    }
    
    func bounceOut(duration: TimeInterval = 0.5, delay: TimeInterval = 0.0, completion: (() -> Void)? = nil) {
        print("Starting bounceOut animation")
        UIView.animate(withDuration: duration, delay: delay, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8, options: .curveEaseIn, animations: {
            self.alpha = 0
            self.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        }) { _ in
            print("Completed bounceOut animation")
            completion?()
        }
    }
    
    // MARK: - Shake Animations
    
    func shake(repeatCount: Float = 2, duration: TimeInterval = 0.1, offset: CGFloat = 10, completion: (() -> Void)? = nil) {
        print("Starting shake animation")
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = duration
        animation.repeatCount = repeatCount
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: self.center.x - offset, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x + offset, y: self.center.y)
        self.layer.add(animation, forKey: "shake")
        print("Completed shake animation")
        completion?()
    }
    
    // MARK: - Rotate Animations
    
    func rotate360(duration: TimeInterval = 1.0, repeatCount: Float = Float.infinity) {
        print("Starting rotate360 animation")
        let rotation = CABasicAnimation(keyPath: "transform.rotation")
        rotation.fromValue = 0
        rotation.toValue = Double.pi * 2
        rotation.duration = duration
        rotation.repeatCount = repeatCount
        self.layer.add(rotation, forKey: "rotate360")
        print("Added rotate360 animation")
    }
    
    // MARK: - Zoom Animations
    
    func zoomIn(duration: TimeInterval = 0.3, scale: CGFloat = 1.2, completion: (() -> Void)? = nil) {
        print("Starting zoomIn animation")
        self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: duration, animations: {
            self.transform = CGAffineTransform(scaleX: scale, y: scale)
        }) { _ in
            UIView.animate(withDuration: duration / 2, animations: {
                self.transform = .identity
            }) { _ in
                print("Completed zoomIn animation")
                completion?()
            }
        }
    }
    
    func zoomOut(duration: TimeInterval = 0.3, completion: (() -> Void)? = nil) {
        print("Starting zoomOut animation")
        UIView.animate(withDuration: duration, animations: {
            self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.alpha = 0
        }) { _ in
            self.transform = .identity
            self.alpha = 1
            print("Completed zoomOut animation")
            completion?()
        }
    }
}
#endif
