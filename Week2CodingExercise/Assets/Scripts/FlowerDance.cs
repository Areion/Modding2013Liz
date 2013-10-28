using UnityEngine;
using System.Collections;

public class FlowerDance : MonoBehaviour {
	 public Light light;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		// use an if statement to check the current in game time and do X based on time
		// if the game is between 2 second and 10 seconds, then RISE
		if (Time.time > 2f && Time.time <10) {
			// transform.position = transform.position + new Vector3 (0f,5f,0f) *Time.deltaTime;
			// the line of code below is the SAME THING AS THE LINE OF CODE ABOVE
			transform.position += new Vector3 (0f, 5f, 0f) * Time.deltaTime;
			transform.localScale += new Vector3 (1f, 1f, 1f) * Time.deltaTime;
			
			transform.Rotate (0f, 45f *Time.deltaTime, 0f);
			// another way of writing above code: transform.Rotate (new Vector3 (0f,45f,0f) *Time.deltaTime);
		}
		
		//if (Time.time == 5f)
		if (Time.time >= 5f && light.enabled == false) {
			light.enabled = true;
			
		}
	}
}
