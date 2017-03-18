//
//  ViewController.swift
//  HelloWebViewSwift
//
//  Created by user on 2017/3/10.
//  Copyright © 2017年 com.HeartCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

//我們假設一個url
let iOS_URL = "https://www.google.com.tw/"
    
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //webview 是否可滑超出邊界
        webView.scrollView.bounces = false
        
        //是否讓網頁縮放至適合的大小
        webView.scalesPageToFit = true
        
        //設置webView代理
        webView.delegate = self
        
        //請求連結到指定的url
        webView.loadRequest(URLRequest(url:URL(string:iOS_URL)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
// MARK: UIWebViewDelegate Support
    
    //網頁開始加載時
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("start")
    }
    //網頁加載結束時
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("finish")
    }
    //網頁加載失敗時
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print("error:"+error.localizedDescription)
    }
    //在網頁加載之前時
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        print("request:"+(request.url?.absoluteString)!)
        return true
    }

}

