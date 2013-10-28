using UnityEngine;
using System.Collections;

public class Platformer : MonoBehaviour {
	
	public float playerSpeed = 10f;
	public float sprintSpeed = 35f;
	Vector3 objectJump = new Vector3 (0f, 15f, 0f);
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		//ray and raycast for jumping use
		Ray groundSensor = new Ray(transform.position, Vector3.down);
		RaycastHit rayHit = new RaycastHit ();
		
		
		
		//jump script if player is on the ground
		if (Input.GetKeyDown (KeyCode.Space) && Physics.Raycast (groundSensor, out rayHit, 2f)) {
			rigidbody.AddForce (objectJump, ForceMode.Impulse);
		}
			
		
		
		// movement for the object with a sprint under the forward movement
		if ( Input.GetKeyDown ( KeyCode.LeftArrow)) {
			rigidbody.AddForce ( Vector3.left * playerSpeed, ForceMode.VelocityChange );
		}
		
		if ( Input.GetKeyDown ( KeyCode.RightArrow)) {
			rigidbody.AddForce ( Vector3.right * playerSpeed, ForceMode.VelocityChange ) ;
		}
		
		if (Input.GetKeyDown ( KeyCode.UpArrow)) {
			rigidbody.AddForce (Vector3.forward * playerSpeed, ForceMode.VelocityChange );
			
			if (Input.GetKeyDown (KeyCode.LeftShift)) {
				rigidbody.AddForce (Vector3.forward * sprintSpeed, ForceMode.VelocityChange );
			}
		}
		
		if (Input.GetKeyDown (KeyCode.DownArrow)) {
			rigidbody.AddForce (Vector3.back * playerSpeed, ForceMode.VelocityChange);
		
		}
		
		
// basic movement
//	if ( player pushes left arrow )
//	AddForce (left);
//	if ( player pushes right arrow )
//	AddForce (right);
// if you haven't already, TEST, with just basic movement coded in!
// jump, but only if player is on the ground
//	if ( player pushes spacebar ) {
// detect if player is grounded by raycasting downwards just past feet
// note: raycast from CENTER, so it won't hit inside of capsule
//	if ( Raycast( from center of player, downwards, right below feet ) ) {
//	AddForce ( up );
		
		
		
	}
}
