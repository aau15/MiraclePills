//
//  ViewController.swift
//  miracle_pills2
//
//  Created by Aditya Upadhyay on 26/04/2017.
//  Copyright © 2017 Aditya Upadhyay. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    
    @IBOutlet weak var miraclePillEmoji: UIImageView!
    
    @IBOutlet weak var miraclePills: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var divider: UIView!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var fullNameText: UITextField!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var addressText: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var cityText: UITextField!
   
    @IBOutlet weak var state: UILabel!
    
    @IBOutlet weak var statePickerButton: UIButton!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var zipCodeLabel: UILabel!
    
    @IBOutlet weak var zipCodeText: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIImageView!
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var backButton: UIButton!
    
    
    let indianStates: [String] = ["Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu & Kashmir", "Jharkhand", "Karnataka","Kerala"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.isHidden = true
        backButton.isHidden = true
        statePicker.isHidden = true
        statePicker.dataSource = self
        statePicker.delegate = self
        buyNowBtn.isUserInteractionEnabled = true
        let gestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(ViewController.buyButtonTapped))
        buyNowBtn.addGestureRecognizer(gestureRecogniser)
    }
    
    func buyButtonTapped() {
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        imageView.isHidden = false
        backButton.isHidden = false
        /*miraclePillEmoji.isHidden = true
        miraclePills.isHidden = true
        priceLabel.isHidden = true
        divider.isHidden = true
        fullNameLabel.isHidden = true
        fullNameText.isHidden = true
        addressLabel.isHidden = true
        addressText.isHidden = true
        cityLabel.isHidden = true
        cityText.isHidden = true
        state.isHidden = true
        statePickerButton.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeText.isHidden = true
        buyNowBtn.isHidden = true*/
        //imageView.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = false
        }
        imageView.isHidden = true
        backButton.isHidden = true
        statePicker.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return indianStates.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return indianStates[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(indianStates[row], for: .normal)
        statePicker.isHidden = true
        zipCodeText.isHidden = false
        zipCodeLabel.isHidden = false
        buyNowBtn.isHidden = false
    }

    @IBAction func statePickerButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        zipCodeLabel.isHidden = true
        zipCodeText.isHidden = true
        buyNowBtn.isHidden = true
    }

}

