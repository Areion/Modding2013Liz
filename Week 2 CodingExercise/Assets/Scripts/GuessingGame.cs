using UnityEngine;
using System.Collections;

public class GuessingGame : MonoBehaviour {
	
	int guess = 0; // this is the number the player is guessing
	
	int secretNumber = 0; // this is the number we have to guess

	// Use this for initialization
	void Start () {
		// generate a random number from 0 to 20 - not including 20
		secretNumber = Random.RandomRange(0,20);
	}
	
	// Update is called once per frame
	void Update () {
		
		// .GetKeyDown will only work for one frame
		if (Input.GetKeyDown(KeyCode.LeftArrow)) {
			// guess = guess - 1;
			guess -= 1;	
			// we have to convert between data types. ToString takes guess (which is an int) and turns it into a string
			guiText.text = guess.ToString ();
		}
		
		// .GetKeyUp will only work for one frame
		if (Input.GetKeyUp(KeyCode.RightArrow)) {
			// guess = guess + 1;
			// guess += 5 will count by 5;
			guess++;
			guiText.text = guess.ToString ();
		}
		
		// if player presses enter, then evaluate the guess
		if (Input.GetKeyDown (KeyCode.Return)) {
			if (guess < secretNumber) {
				guiText.text = "your guess was too low";
			} else if (guess > secretNumber) {
				guiText.text = "your guess was too high";
			} else {
				guiText.text = "YOU WIN, YOU ARE THE BEST";
			}
		}			
	}
}
