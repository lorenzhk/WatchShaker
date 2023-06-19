/// @protocol WatchShakerDelegate
///
/// Discussion
/// - Delegate for WatchShaker.
@available(iOS 15.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS 8.0, *)
public protocol WatchShakerDelegate
{
    /// Called when Apple Watch are shaked
    ///
    /// - Parameter watchShaker: the watch shaker instance
    func watchShaker(_ watchShaker: WatchShaker, didShakeWith sensibility:ShakeSensibility, direction:ShakeDirection)
    
    /// Called when Something are wrong
    ///
    /// - Parameter watchShaker: the watch shaker instance
    /// - Parameter error: error ocurred
    func watchShaker(_ watchShaker:WatchShaker, didFailWith error: Error)
}

@available(iOS 15.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS 8.0, *)
extension WatchShakerDelegate {
    func watchShaker(_ watchShaker: WatchShaker, didShakeWith sensibility:ShakeSensibility, direction:ShakeDirection) {
        self.watchShaker(watchShaker, didShakeWith: sensibility, direction: .shakeDirectionUnknow)
    }
}
