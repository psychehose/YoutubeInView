//
//  ViewController.swift
//  YoutubeInView
//
//  Created by 호세김 on 2021/11/15.
//

import UIKit

import WebKit

class ViewController: UIViewController {
	private var webView: WKWebView! = nil

	override func loadView() { }
	override func viewDidLoad() {
		super.viewDidLoad()
		let url = URL(string: "https://www.naver.com")
		let request = URLRequest(url: url!)
		
		let webConfiguration = WKWebViewConfiguration()
		webView = WKWebView(frame: .zero, configuration: webConfiguration)
		webView.uiDelegate = self
		webView.translatesAutoresizingMaskIntoConstraints = false

		view.addSubview(webView)
		
		webView.leadingAnchor.constraint(
			equalTo: view.leadingAnchor
		).isActive = true
		webView.trailingAnchor.constraint(
			equalTo: view.trailingAnchor
		).isActive = true
		webView.bottomAnchor.constraint(
			equalTo: view.bottomAnchor
		).isActive = true
		webView.topAnchor.constraint(
			equalTo: view.topAnchor
		).isActive = true
		print("?")
		webView.load(request)
	}
}
extension ViewController: WKUIDelegate {
	private func loadWebPage(_ url: String) {
		guard let myUrl = URL(string: url) else {
			return
		}
		let request = URLRequest(url: myUrl)
		webView?.load(request)
	}
}


//
//#if canImport(SwiftUI) && DEBUG
//import SwiftUI
//@available(iOS 14.0, *)
//struct ViewControllerRepresentable: UIViewControllerRepresentable {
//	typealias UIViewControllerType = ViewController
//
//	func makeUIViewController(context: Context) -> ViewController {
//		return ViewController()
//	}
//
//	func updateUIViewController(_ uiViewController: ViewController, context: Context) { }
//}
//
//@available(iOS 14.0, *)
//struct ViewControllerPreview: PreviewProvider {
//	static var previews: some View {
//		ViewControllerRepresentable()
//			.ignoresSafeArea()
//
//	}
//}
//#endif
