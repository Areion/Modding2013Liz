using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

	public float playerSpeed = 3f;
	public float currentSpeed = 0f;
	public float currentRight = 0f;
	
	// Use this for initialization
	void Start () {
				
	}
	
	// Update is called once per frame
	void Update () {
		
		
	}
	
	
	
	void FixedUpdate () {
			
			
		// movement for the object with a sprint under the forward movement
		if ( Input.GetKeyDown ( KeyCode.LeftArrow)) {
				
			if (currentRight > -10f) {
				rigidbody.AddForce ( Vector3.left * playerSpeed, ForceMode.VelocityChange );
				currentRight += -playerSpeed;
			}
		}
		
		if ( Input.GetKeyDown ( KeyCode.RightArrow)) {
			if (currentRight < 10f) {
				rigidbody.AddForce ( Vector3.right * playerSpeed, ForceMode.VelocityChange ) ;
				currentRight += playerSpeed;
			}
		}
		
		if (Input.GetKeyDown ( KeyCode.UpArrow)) {
			if (currentSpeed < 10f) {
				rigidbody.AddForce (Vector3.forward * playerSpeed, ForceMode.VelocityChange );
				currentSpeed += playerSpeed;
			}
		}
		
		if (Input.GetKeyDown (KeyCode.DownArrow)) {
			if (currentSpeed > -10f) {
				rigidbody.AddForce (Vector3.back * playerSpeed, ForceMode.VelocityChange);
				currentSpeed += -playerSpeed;
			}
		} 
	}
}
