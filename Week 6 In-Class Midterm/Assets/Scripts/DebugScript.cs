using UnityEngine;
using System.Collections;

public class DebugScript : MonoBehaviour {
	public Fish fishBlueprint;
	public List<fishBlueprint> fishList = new List<Fish>();
	void Start () {
		int currentFishCounter = 0
		while( currentFishCounter < 100) {
			Vector3 fishPosition = Random.insideUnitSphere * 100f;
			Fish newFish = Instantiate(fishBlueprint);
			newFish.position = fishPosition;
			currentFishCounter++;
		}
		fishList.Add( newFishBlueprint );
	}
	
	// Update is called once per frame
	void Update () {
		if ( Input.GetKeyDown (Space) {
			foreach (Fish currentFish in fishList) {
				currentFish.destination = Vector3.zero;
			}
		Ray Ray = Camera.main.ScreenPointToRay (Input.mousePosition );
		if (Physics.Raycast (Ray, RaycastHit, 100000f ) == 3) {
				private Vector3 newDestination = rayHit.point;
				foreach (every Fish currentFish in fishList) {
					myFish.destination == newDestination;
				}
		}
	}
}
