import UIKit
class ViewController: UIViewController {
    let firstView: UIView = {
       let view = UIView()
        view.backgroundColor = .systemIndigo
        view.layer.cornerRadius = 24
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let secondView: UIView = {
       let view = UIView()
        view.backgroundColor = .systemOrange
        view.layer.cornerRadius = 50
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "square.and.arrow.up")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let label: UILabel = {
        let label = UILabel()
        label.text = "lorem ipsum dolor sit amet"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "lorem ipsum dolor sit amet"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("logout", for: .normal)
        button.configuration = .filled()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
    }
}
private extension ViewController {
    func setupScene() {
        view.backgroundColor = .systemGray
        view.addSubview(button)
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(secondLabel)
    }
    func makeConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 710),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 35),
            firstView.topAnchor.constraint(equalTo: view.topAnchor, constant: -50),
            firstView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -555),
            firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            firstView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            secondView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            secondView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600),
            secondView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 146.67),
            secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -146.33),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 333),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -450),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -312),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 333),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -444),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            secondLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            secondLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -375),
            secondLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            secondLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
    }
}
