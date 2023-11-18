/*

  Project 3: Word Game

  You are developing a word game where players need to guess words. Implement the following tasks using Dart lists:

  1. Create an empty list called wordList.

  2. Prompt the user to enter five words one by one and add them to the wordList.

  3. Shuffle the wordList to change the order of the words.

  4. Display the shuffled wordList to the user.

  5. Sort the wordList in reverse alphabetical order and display the sorted list.

  6. Ask the user to guess a word and check if it exists in the wordList. Display the result.

  7. Display the length of each word in the wordList to the user.

  8. Remove the word with the shortest length from the wordList.

  9. Display the final version of the wordList.

*/
import 'dart:io';

void main() {
  //taking an empty list

  List wordList = [];

  //asking user to enter the strings in the list

  print("ENTER YOUR WORDS IN THE LIST :");

  //for loop for insertig the STRINGS one by one
  for (int i = 0; i < 5; i++) {
    String? a = stdin.readLineSync();

    //adding your strings one by one by using loop index

    wordList.add(a);
  }
  //print your list that you enter

  print("YOUR LIST IS :${wordList}");

  //shuffling the list that you enter in the prompt

  wordList.shuffle();

  //print the list that you shuffle

  print("YOUR SHUFFLE LIST IS :${wordList}");

  //sorting the list before reversed
  wordList.sort();

  //print the reversed list

  print("YOUR REVERSED LIST IS :${wordList.reversed}");
  List copyList = [...wordList.reversed];

  //asking user to enter a word that you want to guess is this word exist in this list

  print("ENTER YOUR WORD THAT YOU GUESS IS THIS IN THE WORD LIST :");

  //store your guess word in this container guessWord

  String guessWord = stdin.readLineSync()!;
  //creating empty  lsit for storing the index of our actual list enter by the user

  List index = [];
  //condition to check is this word contain in this list

  if (wordList.contains(guessWord)) {
    //if contain then print this statment

    print("THIS WORD EXIST IN THE LIST ");
  } else {
    //if not then print this statment

    print("THSI WORD CANNOT EXIST IN THIS LIST");
  }
  //for loop for findig the length for each word

  for (int i = 0; i <= copyList.length - 1; i++) {
    //store each  index in the container result

    String result = copyList[i];

    //adding each length for each word in the index list

    index.add(result.length);
  }
//print the index for each word

  print("YOUR LENGTH FOR EACH WORD IS :${index}");

  //finding the word that has smaller length in the word list

  String smallWord = copyList
      .reduce((current, next) => current.length < next.length ? current : next);

  //removing the word that has smaller length in the word list

  copyList.removeWhere((element) => element == smallWord);

  //printing the final list

  print("YOUR FINAL LIST IS :${copyList}");
}
