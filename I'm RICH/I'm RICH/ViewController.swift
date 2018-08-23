//
//  ViewController.swift
//  I'm RICH
//
//  Created by Sakthivel Balakrishnan on 22/08/18.
//  Copyright © 2018 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label:UILabel={
        let label=UILabel()
        label.translatesAutoresizingMaskIntoConstraints=false
        label.text="I AM RICH"
        label.textAlignment = .center
        label.textColor=UIColor.white
        label.font=label.font.withSize(50)
        return label
    }()
    let image:UIImageView={
        let image=UIImageView(image:#imageLiteral(resourceName: "diamond"))
        image.translatesAutoresizingMaskIntoConstraints=false
        image.contentMode = .scaleAspectFit
        return image
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor=UIColor.green
        view.addSubview(label)
        view.addSubview(image)
        NSLayoutConstraint.activate([
        label.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
        label.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height/14),
        image.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        image.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        image.heightAnchor.constraint(equalToConstant: view.frame.height/6),
        image.widthAnchor.constraint(equalToConstant: view.frame.width/3)
            ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

