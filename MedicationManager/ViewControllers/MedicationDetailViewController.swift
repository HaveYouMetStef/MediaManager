//
//  MedicationDetailViewController.swift
//  MedicationManager
//
//  Created by Stef Castillo on 12/18/22.
//

import UIKit

class MedicationDetailViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var medication: Medication?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let medication = medication,
           let timeOfDay = medication.timeOfDay {
            title = "Medication Details"
            nameTextField.text = medication.name
            datePicker.date = timeOfDay
        } else {
            title = "Add Medication"
        }
    }
    
    @IBAction func saButtonTapped(_ sender: UIBarButtonItem) {
        guard let name = nameTextField.text,
              !name.isEmpty
        else {return}
        
        let timeOfDay = datePicker.date
        
        if let medication = medication {
            //update medication
            MedicationController.shared.updateMedication(medication: medication, name: name, timeOfDay: timeOfDay)
        } else {
            MedicationController.shared.create(name: name, timeOfDay: timeOfDay)
        }
        navigationController?.popViewController(animated: true)
    }
    

}
