using UnityEngine;
using System.Collections;
using System.Collections.Generic; // YOU NEED THIS LINE TO USE LISTS

public class FishGod : MonoBehaviour {

    public Fish fishBlueprint; // assign in inspector
	public Fish fishBlueprint2;
    public int fishCount = 100;
	int randomNumber = 0;

    public List<Fish> fishList = new List<Fish>(); // you must initialize lists to use them


	void Start () {
        int currentFishCounter = 0;
	    while ( currentFishCounter < fishCount ) 
		{
            randomNumber = Random.Range (0,10);
			
			if (randomNumber < 5) {
            	Vector3 fishPosition = Random.insideUnitSphere * 20f;
            	Fish newFish = Instantiate( fishBlueprint, fishPosition, Quaternion.identity ) as Fish;
            	fishList.Add( newFish ); 
				currentFishCounter++;
			} 
			else 
			{
				Vector3 fishPosition = Random.insideUnitSphere * 20f;
				Fish newFish = Instantiate( fishBlueprint2, fishPosition, Quaternion.identity ) as Fish;
				fishList.Add( newFish ); 
				currentFishCounter++;
			} 
		}
	}
	
	// Update is called once per frame
	void Update () 
{

        // if the player presses down spacebar, then...
        if ( Input.GetKeyDown( KeyCode.Space ) ) {

            // go through the entire list of fish, and for each fish, set that fish's destination to 0, 0, 0
            foreach ( Fish currentFish in fishList ) {
                currentFish.destination = Vector3.zero;
            }

        }
	}
}
