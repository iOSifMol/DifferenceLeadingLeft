// MIT License
//
// Copyright (c) 2021 Iosif
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
import UIKit

final class ViewController: UIViewController {
  private let leadingImageView = UIImageView(image: UIImage(named: "theThinker"))
  private let leadingLabel = UILabel(frame: .zero)
  private let leftImageView = UIImageView(image: UIImage(named: "theThinker"))
  private let leftLabel = UILabel(frame: .zero)

  override func viewDidLoad() {
    super.viewDidLoad()
    setupLeadingViews()
    setupLeftViews()
  }

  private func setupLeadingViews() {
    view.addSubview(leadingImageView)
    leadingImageView.translatesAutoresizingMaskIntoConstraints = false
    leadingImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                              constant: 16).isActive = true
    leadingImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
    leadingImageView.heightAnchor.constraint(equalTo: leadingImageView.widthAnchor,
                                             constant: 567/640).isActive = true
    leadingImageView.heightAnchor.constraint(equalToConstant: 128).isActive = true
    
    view.addSubview(leadingLabel)
    leadingLabel.translatesAutoresizingMaskIntoConstraints = false
    leadingLabel.text = "Leading constraints views"
    leadingLabel.numberOfLines = 0
    leadingLabel.leadingAnchor.constraint(equalTo: leadingImageView.trailingAnchor,
                                          constant: 16).isActive = true
    leadingLabel.topAnchor.constraint(equalTo: leadingImageView.topAnchor).isActive = true
    leadingLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
  }
  
  private func setupLeftViews() {
    view.addSubview(leftImageView)
    leftImageView.translatesAutoresizingMaskIntoConstraints = false
    leftImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
    leftImageView.topAnchor.constraint(equalTo: leadingImageView.bottomAnchor,
                                       constant: 44).isActive = true
    leftImageView.heightAnchor.constraint(equalTo: leftImageView.widthAnchor,
                                          constant: 567/640).isActive = true
    leftImageView.heightAnchor.constraint(equalToConstant: 128).isActive = true
    
    view.addSubview(leftLabel)
    leftLabel.translatesAutoresizingMaskIntoConstraints = false
    leftLabel.text = "Left constraints views"
    leftLabel.numberOfLines = 0
    leftLabel.leftAnchor.constraint(equalTo: leftImageView.rightAnchor,
                                    constant: 16).isActive = true
    leftLabel.topAnchor.constraint(equalTo: leftImageView.topAnchor).isActive = true
    leftLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
  }
}

