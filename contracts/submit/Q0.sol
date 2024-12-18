// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

// 여러분은 선생님입니다. 학생들의 정보를 관리하려고 합니다. 

contract StudentManager {
    // 학생의 정보는 이름, 번호, 점수, 학점 그리고 듣는 수업들이 포함되어야 합니다.
    struct Student {
        uint id;
        string name;
        uint score;
        string grade;
        string[] classes;
    }

    // 번호는 1번부터 시작하여 정보를 기입하는 순으로 순차적으로 증가합니다.
    Student[] public students;
    uint public studentCount = 0;

    // 학점은 점수에 따라 자동으로 계산되어 기입하게 합니다.
    // 90점 이상 A, 80점 이상 B, 70점 이상 C, 60점 이상 D, 나머지는 F 입니다.
    function calculateGrade(uint score) private pure returns (string memory) {
        if (score >= 90) {
            return "A";
        } else if (score >= 80) {
            return "B";
        } else if (score >= 70) {
            return "C";
        } else if (score >= 60) {
            return "D";
        } else {
            return "F";
        }
    }

    // 학생 추가 기능 - 특정 학생의 정보를 추가
    function addStudent(string memory _name, uint _score, string[] memory _classes) public {
        string memory grade = calculateGrade(_score);
        students.push(Student(studentCount + 1, _name, _score, grade, _classes));
        studentCount++;
    }

    // 학생 조회 기능(1) - 특정 학생의 번호를 입력하면 그 학생 전체 정보를 반환
    function getStudentById(uint _id) public view returns (Student memory) {
        require(_id > 0 && _id <= studentCount, "Invalid student ID");
        return students[_id - 1];
    }

    // 학생 조회 기능(2) - 특정 학생의 이름을 입력하면 그 학생 전체 정보를 반환
    function getStudentByName(string memory _name) public view returns (Student memory) {
        for (uint i = 0; i < students.length; i++) {
            if (keccak256(abi.encodePacked(students[i].name)) == keccak256(abi.encodePacked(_name))) {
                return students[i];
            }
        }
        revert("Student not found");
    }

    // 학생 전체 숫자 조회 기능 - 현재 등록된 학생들의 숫자를 반환
    function getTotalStudents() public view returns (uint) {
        return studentCount;
    }

    /** 기입할 학생들의 정보는 아래와 같습니다.
    *
    *    Alice, 1, 85
    *    Bob,2, 75
    *    Charlie,3,60
    *    Dwayne, 4, 90
    *    Ellen,5,65
    *    Fitz,6,50
    *    Garret,7,80
    *    Hubert,8,90
    *    Isabel,9,100
    *    Jane,10,70
    */
}
