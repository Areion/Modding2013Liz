using UnityEngine;
using System.Collections;

public class BallClack : MonoBehaviour {
	
	public Vector3 start, end; // exposed in the inspector
	Vector3 baseCameraPosition;
	
	// Use this for initialization
	void Start () {
		StartCoroutine ( BallMove () );
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	IEnumerator ScreenShake () {
		float t = 1f;
		baseCameraPosition = Camera.main.transform.position;
		while ( t > 0f ) {
			t -= Time.deltaTime;
			Camera.main.transform.position = baseCameraPosition + t *
											 new Vector3 ( Mathf.Sin ( Time.time * 10f), 
														   Mathf.Sin( Time.time * 12.5f), 
														   Mathf.Sin (Time.time * 7f) );
			yield return 0;
		}
	
	}
	
	
	// think of this as a function that can take place over many frames and you can set how fast it occurs
	// need to call BallMove or else the program wont run
	IEnumerator BallMove() {
		
		while ( true ) {
			
			//sin function to oscillate between 0 and 1)
			float t = Mathf.Abs (Mathf.Sin ( Time.time * 0.5f ));
			
			//if ( Mathf.Abs ( 0.5f - t )){ but we need to account for hte times where it wont land on exactly .5
			// dont want stuttering of the audio if the ball is on two of the points below so we say its false
			if ( t < 0.51f && t > 0.49f && audio.isPlaying == false) {
				audio.Play ();
				StartCoroutine( ScreenShake() );
			}
			
			transform.position = Vector3.Lerp( start, end, t);
			yield return 0; // wait a frame, if you dont tell it to wait it will try to do all the work of the loop in one turn which will really weigh down the computer
		
		}
		
		yield return 0; //waits one frame
		Debug.Log( "I waited one frame" );
		
		yield return 0;
		yield return 0; //waits two frames
		Debug.Log("I waited two frames" );
		
		yield return new WaitForSeconds(5f); // waits X seconds
		Debug.Log( "5 seconds have passed" );
	}
}
