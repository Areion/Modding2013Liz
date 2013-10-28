using UnityEngine;
using System.Collections;

public class NPCBot : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		if (Physics.Raycast ( transform.position, transform.forward, 5f)) {
			
			int randomNumber = Random.Range( 0, 10);
			
			if ( randomNumber < 5 ) {
				transform.Rotate(0f,-90f, 0f);
			} else {
				transform.Rotate(0f, 90f, 0f);
			
			}
		}
	}
	
	void FixedUpdate () {
	
		rigidbody.AddForce ( transform.forward * 10f, ForceMode.Acceleration);
		
	}
}
