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

function playPass(string, number){
    let result = ""
    let alphabetic = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let arrayOfLetter = string.split("")
    for(let i = 0; i <= arrayOfLetter.length; i++){
        if(alphabetic.includes(arrayOfLetter[i])){
            let index = alphabetic.indexOf(arrayOfLetter[i])
            let num = index + number
            while(num > alphabetic.length - 1){
                num -= alphabetic.length - 1
            }
            let letter = alphabetic[num]
            if(i % 2 === 0){
                result += letter
            }else {
                result += alphabetic[num]
            }
        }else {
            result += arrayOfLetter[i]
        }
    }
    console.log(result)
    console.log(arrayOfLetter)
}

playPass("I LOVE YOU!!!", 1);
playPass("I LOVE YOU!!!", 0);
playPass("AAABBCCY", 1);
playPass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2);