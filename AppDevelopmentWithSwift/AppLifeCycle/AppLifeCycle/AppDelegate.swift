//
//  AppDelegate.swift
//  AppLifeCycle
//
//  Created by Leo on 2021/02/05.
//  Copyright © 2021 Leo. All rights reserved.
//

import UIKit

/**
 このクラスでイベントフックする
 */
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // アプリがフォアグラウンドまたはアクティブな状態を離れようとしているときに呼び出されます。 このイベントは、ユーザーがアプリを終了したときに発生する可能性がありますが、電話やシステムアラートによってアプリが一時的に中断されたときにも呼び出されます。
    func applicationWillResignActive(_ application: UIApplication) {
        print("will resign active.")
    }
    
    // アプリが実際にバックグラウンド状態に入ると、applicationWillResignActive（_ :)メソッドの直後に呼び出される.
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("did enter background.")
    }
    // バックグラウンドからアクティブ状態への移行の一部として、applicationDidBecomeActive関数の直前に呼び出される アプリがバックグラウンドに入ったときにアプリに加えられた変更の多くを元に戻すことができる
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("will enter foreground.")
    }
    // 「このメソッドは、アプリが非アクティブ状態からアクティブ状態に移行したことをアプリに通知するために呼び出されます。これは、アプリがユーザーまたはシステムによって起動されたために発生する可能性のある移行です。 また、ユーザーが電話の着信やシステムアラートなど、アプリを一時的に非アクティブ状態にした中断を無視することを選択した場合、アプリはアクティブ状態に戻ることができる
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("did become active.")
    }
    
    // アプリが終了してメモリからクリアされようとしていることをアプリに通知します。 applicationDidEnterBackgroundと同様の目的を果たしますが、さまざまな種類のアプリに使用する
    func applicationWillTerminate(_ application: UIApplication) {
        print("will terminate.")
    }
    // アプリの起動が完了すると、この関数が呼び出されます。
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }


    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

