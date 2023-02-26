/*
Everyone knows passphrases. One can choose passphrases from poems, songs, movies names and so on but frequently they can be guessed due to common cultural references. You can get your passphrases stronger by different means. One is the following:

choose a text in capital letters including or not digits and non alphabetic characters,

shift each letter by a given number but the transformed letter must be a letter (circular shift),
replace each digit by its complement to 9,
keep such as non alphabetic and non digit characters,
downcase each letter in odd position, upcase each letter in even position (the first character is in position 0),
reverse the whole result.
Example:
your text: "BORN IN 2015!", shift 1

1 + 2 + 3 -> "CPSO JO 7984!"

4 "CpSo jO 7984!"

5 "!4897 Oj oSpC"


*/

func playPass(_ s: String, _ n: Int) -> String {
    var result : String = ""
  // your code
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    let arrayOfLetters = s.split(separator: "")
    print(arrayOfLetters)
    for letter in arrayOfLetters{
        
        if alphabet.contains("\(letter)"){
            guard let index = Int("\(String(describing: alphabet.firstIndex(of: "\(letter)")))") else { return "O" }
            let newLetter = "\(arrayOfLetters[index + 1])"
            let number = Int("\(String(describing: arrayOfLetters.firstIndex(of: "\(letter)")))") ?? 0
            if number % 2 == 0 {
                result = "\(result)\(newLetter)"
            } else {
                result = "\(result)\(newLetter.uppercased())"
            }
        }
    }
    print(result)
    return "Hello"
}

playPass("I LOVE YOU!!!", 1);
playPass("I LOVE YOU!!!", 0);
playPass("AAABBCCY", 1);
playPass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2);

