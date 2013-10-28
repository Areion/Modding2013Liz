using UnityEngine;
using System.Collections;

public class Platformer : MonoBehaviour {
	// 3D platformer, Mario 64
	// first, for camera: parent the camera behind the player, in-editor
	
	
	//Vector3 forward = new Vector3( 10f, 0f, 0f);
	//Vector3 back = new Vector3( -10f, 0f, 0f);
	//Vector3 left = new Vector3( 0f, 0f, -10f);
	//Vector3 right = new Vector3( 0f, 0f, 10f);
	
	Vector3 moveVector;
	
	public float speed = 5f;
	public float turnSpeed = 90f;
	public float jumpSpeed = 10f;
	public float fallSpeed = 10f;
	bool grounded = false;
	
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
		// movement: move forward, back, left, right
		// if the player isn't pushing anything, none of the inputs will fire. reset it to zero every time.
		moveVector = Vector3.zero;
		
		// is the player holding down these keys? Then move.
	
		float translation = Input.GetAxis("Vertical") * speed;
		float rotation = Input.GetAxis ("Horizontal") * turnSpeed;
		translation *= Time.deltaTime;
		rotation *= Time.deltaTime;
		transform.Translate (0,0,translation);
		transform.Rotate (0,rotation,0);
			
		
		
		
		//if ( Input.GetKey ( KeyCode.W ) ) { // MOVE FORWARD
		//	moveVector += transform.forward;
		//}
		//if ( Input.GetKey (KeyCode.S ) ) { // MOVE BACKWARD
		//	moveVector += -transform.forward;
		//}
		
	
		
		
		// turning: left and right
		//if (Input.GetKey (KeyCode.A) ) {
		//	transform.Rotate ( 0f, -turnSpeed * Time.deltaTime, 0f );
		//}
		//if (Input.GetKey (KeyCode.D) ) {
		//	transform.Rotate ( 0f, turnSpeed * Time.deltaTime, 0f );
		//}
		

		// movement: jumping? how to jump?
		if ( Physics.Raycast ( transform.position, -transform.up, 1.3f ) ) {
			grounded = true;
			if ( Input.GetKey ( KeyCode.Space ) ) {
				// just this works as well underneath this if statement:
				//moveVector += new Vector3 ( 0f, jumpSpeed, 0f );
				audio.Play();
				moveVector += Vector3.up * jumpSpeed;
				
			}
		} else {
			grounded = false;
		}
	}
			
	void FixedUpdate() {
	
		//without this line, moveVector doesn't do anything
		if ( moveVector != Vector3.zero ) {
			rigidbody.AddForce ( moveVector * speed, ForceMode.VelocityChange );
		} else {
			rigidbody.AddForce ( -rigidbody.velocity + Physics.gravity * fallSpeed, ForceMode.Acceleration);
		}
	}
}
