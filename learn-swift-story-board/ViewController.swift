//
//  ViewController.swift
//  learn-swift-story-board
//
//  Created by Nguyen Quang Minh on 18/6/24.
//

import UIKit

class ViewController: UIViewController {

    let disconnectImage = UIImageView()
    let containerView = UIView()
    let headerView = UIStackView()
    let circleView = UIImageView()
    let blurView = UIVisualEffectView()
    let containerLable = UIView()
    let lableDate = UILabel()
    let lableAddress = UILabel()
    let lineTopBodyView = UIView()
    let bodyView = UIView()
    let circleVIewBig = UIImageView()
    let blurCircleView = UIVisualEffectView()
    let lineBottomBody = UIView()
    let footerView = UIStackView()
    let textBold = UILabel()
    let containerLableFooter = UIView()
    let lableStar = UILabel()
    let lableMedel = UILabel()
    let button = UIButton()

    var text: String = "nmint8m"
    var textStar: String = "99"
    var textMedel: String = "99"

    var isUltimate = false

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        setupView()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }

    private func setupView(){
        configureImageDisconnect()
        configureContainer()
        configureHeader()
        configureCircleView()
        configureContainerLable()
        configureBodyView()
        configureLineTopBodyView()
        configureCirleBigView()
        configureBlurCircleView()
        configureLineBottomBodyView()
        configureFooterView()
        configureTextBold()
        configureContainerLableFooter()
        configureLableMedel()
        configureLableStar()
        configureButton()
    }

    @objc func updateText() {
        print("Update text")
        if isUltimate {
            text = "nmint8m"
            textStar = "99"
            textMedel = "99"
            isUltimate = false
        } else {
            text = "nmint88888888888888"
            textStar = "999.999"
            textMedel = "999.999"
            isUltimate = true
        }

        // Update the labels
        textBold.text = text
        lableStar.text = "⭐️ \(textStar)"
        lableMedel.text = "🏅 \(textMedel)"
    }

    @objc private func buttonTouchDown() {
        UIView.animate(withDuration: 0.2) {
            self.button.alpha = 0.5
        }
    }

    @objc private func buttonTouchUp() {
        UIView.animate(withDuration: 0.2) {
            self.button.alpha = 1.0
        }
    }



    private func configureImageDisconnect(){
        view.addSubview(disconnectImage)
        disconnectImage.translatesAutoresizingMaskIntoConstraints = false
        disconnectImage.image = UIImage(named: "icloud-cancel")
        disconnectImage.contentMode = .scaleAspectFit

        NSLayoutConstraint.activate([
            disconnectImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            disconnectImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            disconnectImage.widthAnchor.constraint(equalToConstant: 30),
            disconnectImage.heightAnchor.constraint(equalTo: disconnectImage.widthAnchor)
        ])
    }


    private func configureContainer(){
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 10

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            containerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -270)
        ])
    }


    private func configureHeader(){
        containerView.addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false

        headerView.addArrangedSubview(circleView)
        headerView.addArrangedSubview(containerLable)
        headerView.axis = .horizontal
        headerView.distribution = .fillProportionally
        headerView.spacing = 10

        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            headerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            headerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            headerView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.1)
        ])
    }

    private func configureCircleView(){
        circleView.translatesAutoresizingMaskIntoConstraints = false
        circleView.image = UIImage(named: "circleSmall")
        circleView.contentMode = .scaleAspectFit

        NSLayoutConstraint.activate([
            circleView.widthAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.8),
            circleView.heightAnchor.constraint(equalTo: circleView.widthAnchor)
        ])
    }

    private func configureContainerLable(){
        containerLable.translatesAutoresizingMaskIntoConstraints = false

        containerLable.addSubview(lableDate)
        containerLable.addSubview(lableAddress)

        lableDate.translatesAutoresizingMaskIntoConstraints = false
        lableDate.text = "Fri, Mar 22nd 2019"
        lableDate.textAlignment = .right
        lableDate.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        lableDate.textColor = .systemGray

        lableAddress.translatesAutoresizingMaskIntoConstraints = false
        lableAddress.text = "Asian Tech, Danang City"
        lableAddress.textAlignment = .right
        lableAddress.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        lableAddress.textColor = .systemGray

        NSLayoutConstraint.activate([
            lableDate.topAnchor.constraint(equalTo: containerLable.topAnchor, constant: 5),
            lableDate.trailingAnchor.constraint(equalTo: containerLable.trailingAnchor, constant: -5),

            lableAddress.topAnchor.constraint(equalTo: lableDate.bottomAnchor, constant: 5),
            lableAddress.trailingAnchor.constraint(equalTo: containerLable.trailingAnchor, constant: -5),
        ])

    }

    private func configureBodyView(){
        containerView.addSubview(bodyView)
        bodyView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            bodyView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 10),
            bodyView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            bodyView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            bodyView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.7)
        ])
    }

    private func configureLineTopBodyView(){
        bodyView.addSubview(lineTopBodyView)
        lineTopBodyView.translatesAutoresizingMaskIntoConstraints = false
        lineTopBodyView.backgroundColor = .systemGray

        NSLayoutConstraint.activate([
            lineTopBodyView.topAnchor.constraint(equalTo: bodyView.topAnchor),
            lineTopBodyView.leadingAnchor.constraint(equalTo: bodyView.leadingAnchor),
            lineTopBodyView.trailingAnchor.constraint(equalTo: bodyView.trailingAnchor),
            lineTopBodyView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }

    private func configureCirleBigView(){
        bodyView.addSubview(circleVIewBig)
        circleVIewBig.translatesAutoresizingMaskIntoConstraints = false
        circleVIewBig.image = UIImage(systemName: "circle.fill")
        circleVIewBig.tintColor = .main
        circleVIewBig.contentMode = .scaleAspectFit

        NSLayoutConstraint.activate([
            circleVIewBig.topAnchor.constraint(equalTo: lineTopBodyView.bottomAnchor, constant: 5),
            circleVIewBig.leadingAnchor.constraint(equalTo: bodyView.leadingAnchor, constant: 70),
            circleVIewBig.trailingAnchor.constraint(equalTo: bodyView.trailingAnchor, constant: -70),
            circleVIewBig.heightAnchor.constraint(equalTo: bodyView.heightAnchor, multiplier: 0.94)

        ])
    }

    private func configureBlurCircleView(){
        bodyView.addSubview(blurCircleView)
        blurCircleView.translatesAutoresizingMaskIntoConstraints = false
        blurCircleView.effect = UIBlurEffect(style: .light)

        NSLayoutConstraint.activate([
            blurCircleView.leadingAnchor.constraint(equalTo: bodyView.leadingAnchor),
            blurCircleView.trailingAnchor.constraint(equalTo: bodyView.trailingAnchor),
            blurCircleView.bottomAnchor.constraint(equalTo: circleVIewBig.bottomAnchor),
            blurCircleView.heightAnchor.constraint(equalTo: circleVIewBig.heightAnchor, multiplier: 0.5)
        ])
    }

    private func configureLineBottomBodyView(){
        bodyView.addSubview(lineBottomBody)
        lineBottomBody.translatesAutoresizingMaskIntoConstraints = false
        lineBottomBody.backgroundColor = .systemGray

        NSLayoutConstraint.activate([
            lineBottomBody.bottomAnchor.constraint(equalTo: bodyView.bottomAnchor, constant: -5),
            lineBottomBody.leadingAnchor.constraint(equalTo: bodyView.leadingAnchor),
            lineBottomBody.trailingAnchor.constraint(equalTo: bodyView.trailingAnchor),
            lineBottomBody.heightAnchor.constraint(equalToConstant: 1)
        ])
    }

    private func configureFooterView(){
        containerView.addSubview(footerView)
        footerView.translatesAutoresizingMaskIntoConstraints = false

        footerView.addArrangedSubview(textBold)
        footerView.addArrangedSubview(containerLableFooter)

        footerView.axis = .horizontal
        footerView.distribution = .fillEqually
        footerView.alignment = .fill
        footerView.spacing = 100

        NSLayoutConstraint.activate([
            footerView.topAnchor.constraint(equalTo: bodyView.bottomAnchor),
            footerView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            footerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            footerView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
    }


    private func configureTextBold(){
        textBold.translatesAutoresizingMaskIntoConstraints = false
        textBold.text = text
        textBold.textAlignment = .left
        textBold.lineBreakMode = .byTruncatingTail
        textBold.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        textBold.textColor = .black
    }

    private func configureContainerLableFooter(){
        containerLableFooter.translatesAutoresizingMaskIntoConstraints = false

        containerLableFooter.addSubview(lableStar)
        containerLableFooter.addSubview(lableMedel)

        NSLayoutConstraint.activate([
            lableMedel.trailingAnchor.constraint(equalTo: containerLableFooter.trailingAnchor),
            lableMedel.topAnchor.constraint(equalTo: containerLableFooter.topAnchor),
            lableMedel.bottomAnchor.constraint(equalTo: containerLableFooter.bottomAnchor),

            lableStar.trailingAnchor.constraint(equalTo: lableMedel.leadingAnchor, constant: -10),
            lableStar.topAnchor.constraint(equalTo: containerLableFooter.topAnchor),
            lableStar.bottomAnchor.constraint(equalTo: containerLableFooter.bottomAnchor),
        ])
    }

    private func configureLableStar(){
        lableStar.translatesAutoresizingMaskIntoConstraints = false
        lableStar.text = "⭐️ \(textStar)"
        lableStar.textAlignment = .right
        lableStar.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        lableStar.textColor = .systemGray
    }

    private func configureLableMedel(){
        lableMedel.translatesAutoresizingMaskIntoConstraints = false
        lableMedel.text = "🏅 \(textMedel)"
        lableMedel.textAlignment = .right
        lableMedel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        lableMedel.textColor = .systemGray
    }

    private func configureButton() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ultimate 🌟", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .main
        button.layer.cornerRadius = 10

        button.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        button.addTarget(self, action: #selector(buttonTouchUp), for: [.touchUpInside, .touchUpOutside, .touchCancel])
        button.addTarget(self, action: #selector(updateText), for: .touchUpInside)

        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }


    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: { _ in
            self.updateViewConstraints()
        }, completion: nil)
    }

}

