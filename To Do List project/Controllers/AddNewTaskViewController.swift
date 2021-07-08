//
//  AddNewTaskViewController.swift
//  To Do List project
//
//  Created by Jaouher Bejaoui  on 7/7/2021.
//

import UIKit
import RxSwift

class AddNewTaskViewController: UIViewController {
    
    private let taskSubject = PublishSubject<Task>()
   
    var taskSubjectObservable : Observable<Task> {
        return self.taskSubject.asObservable()
    }
    
    
    @IBOutlet weak var taskTitleTextField: UITextField!
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveButtonClick(_ sender: Any) {
        guard let priority = Priority(rawValue: self.prioritySegmentedControl.selectedSegmentIndex),
              let title = taskTitleTextField.text else{
            return
        }
        
        let task = Task(title: title, priority: priority)
        
        print (task)
        taskSubject.onNext(task)
        self.dismiss(animated: true, completion: nil)
    }
    
}
