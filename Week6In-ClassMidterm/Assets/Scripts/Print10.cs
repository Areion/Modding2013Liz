using UnityEngine;
using System.Collections;

public class Print10 : MonoBehaviour {
	
	//public TextMesh my3DText; // assign in inspector
	TextMesh myTextMesh;
	int counter = 0;
	
	public Vector3 destination
		
	// Use this for initialization
	void Start () {
		
		// GetComponent does the dragging and dropping for you
		myTextMesh = GetComponent<TextMesh>();
		
		// built in Unity shortcuts are actually calling GetComponent for you
		//Transform transform = GetComponent<Transform> ();
		//Light light = GetComponent<Light>();
	}
	
	
	
	// Update is called once per frame
	void Update () {
		
		float randomNumber = Random.Range ( 0f, 10f );

		
		if (randomNumber < 5 ) {
			myTextMesh.text += "/";
		
		} else {
			myTextMesh.text += "\\";
			
		}	
		
		//everytime we print a character, we will increment the counter
		counter++;
		
		if (counter % 50 == 0) {
			myTextMesh.text += "\n";
		}
		
		transform.position += (
			
	}
}
