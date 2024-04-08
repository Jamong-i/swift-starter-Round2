import Foundation

func generateLottoNumbers() -> [Int] {
    var number1_45: [Int] = Array(1...45)
    var lottoNumbers: [Int] = []
    
    number1_45.shuffle()
    
    
    for i in 0..<6 {
        lottoNumbers.append(number1_45[i])
    }
    
    return lottoNumbers
}


func checkLotto(myLottoNumbers: [Int], lottoNumbers: [Int]) {
    var matchingNumbers: [Int] = []
    
    for myNumber in myLottoNumbers {
        for lottoNumber in lottoNumbers {
            if myNumber == lottoNumber {
                matchingNumbers.append(myNumber)
                break
            }
        }
    }
    
    if matchingNumbers.isEmpty {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 \(matchingNumbers)입니다.")
    }
}


let myNumbers = [1, 5, 3, 2, 7, 9]

checkLotto(myLottoNumbers: myNumbers, lottoNumbers: generateLottoNumbers())
