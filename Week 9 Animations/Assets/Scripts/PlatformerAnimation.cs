using UnityEngine;
using System.Collections;

public class PlatformerAnimation : MonoBehaviour {
	
	public Rigidbody myRigidbody; // assing in inspector
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		// ROB CODE BUTTONS:
		
		// if the player is moving
		// is the player holding down any buttons
		
		//if (Input.GetAxis ( "Vertical" ) != 0f || Input.GetAxis( "Horizontal" ) != 0f ) {
		//	animation.CrossFade ( "Walk" );
		//} else {
		//	animation.CrossFade ( "Idle" );
		//}

		
		// ROB CODE MAGNITUDE:
		
		// if the player is moving
		// grab the rigidbody.velocity and look at magnitude 
		
		if (Input.GetAxis ( "Vertical" ) != 0f || Input.GetAxis( "Horizontal" ) != 0f ) {
			animation.CrossFade ( "Walk" );
		} else if (Input.GetKey (KeyCode.Space) ) {
			animation.CrossFade ( "Jump" );
		} else {
			animation.CrossFade ( "Idle" );
		}
			
			
	
			// then use animation.CrossFade() to play the walk animation

		
			// ELSE, play idle animation
		

		
		//MY CODE:
		// if the player is moving
			// is the player holding down any buttons
		
		//if ( Input.anyKey ) {
			
			// then use animation.CrossFade() to play the walk animation
			//animation.CrossFade ("Walk");
		
			// ELSE, play idle animation
		//} else {
			//animation.CrossFade ("Idle");
		//}
	}
}
