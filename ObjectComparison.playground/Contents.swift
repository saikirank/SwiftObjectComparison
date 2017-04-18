//: Playground - noun: a place where people can play

import UIKit

//To demonstrate comparison of objects using Equatable protocal

//Student class inherited from Equatable protocal, which implements == method for custom object comparison
class Student : Equatable{
    
    var name : String
    var id : String
    var motherName : String
    var standDard : String
    var fatherName : String
    
    init(name: String, id : String , motherName : String,fatherName : String,standDard : String) {
        self.id = id;
        self.name = name;
        self.motherName = motherName;
        self.fatherName = fatherName;
        self.standDard = standDard;

    }
    
    
    func clone() -> Student {
        return Student(name: self.name, id: self.id, motherName: self.motherName, fatherName: self.fatherName, standDard: self.standDard)

    }
   
    
    public static func ==(lhs: Student, rhs: Student) -> Bool {
        
        
        
        return lhs.id == rhs.id && lhs.motherName == rhs.motherName && lhs.fatherName == rhs.fatherName  && lhs.standDard == rhs.standDard && lhs.name == rhs.name ;
        
    }
}

var student1 = Student(name: "hello", id: "1234", motherName: "Andria", fatherName: "Johnny", standDard: "2")

var student2 = Student(name: "hello2", id: "1234", motherName: "Andria", fatherName: "Johnny", standDard: "2")
//
var student3 =  student2.clone()

student1 == student2

student2 == student3

