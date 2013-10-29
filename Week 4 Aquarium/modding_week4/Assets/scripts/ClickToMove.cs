    using UnityEngine;
using System.Collections;

public class ClickToMove : MonoBehaviour {
	
//	float stopping_distance = 10f;
//	RaycastHit rayHit = new RaycastHit ();
//	public Vector3 destination = new Vector3( 50f, 50f, 50f );
//  public float speed = 5f;
	
	public Vector3 destination;
	public float stoppingDistance = 5f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	
	void Update () {
		
		Ray mouseRay = Camera.main.ScreenPointToRay( Input.mousePosition );
		RaycastHit rayHit = new RaycastHit ();
		
		//if (Vector3.Magnitude ( transform.position - destination) {
		//if ( (transform.position - destination).magnitude)
		// Vector3 length = transform.position - destination;		
		
		if (Vector3.Distance( transform.position, destination ) >  stoppingDistance ) {
			rigidbody.AddForce (Vector4.Normalize ( destination - transform.position) *10f);
		}
		
		if (Input.GetMouseButtonDown( 1 ) ) {
			if (Physics.Raycast( mouseRay, out rayHit, 10000f)) {
				destination = rayHit.point;
			}
		}
	}
	
	void FixedUpdate () {
			
		// if (transform.position - destination > stopping_distance) {
		//	Vector3 direction = Vector3.Normalize( destination - transform.position );
		//	rigidbody.AddForce( direction * speed, ForceMode.Acceleration);
			
		//}
		
		//Ray mouseCursor = Camera.main.ScreenPointToRay(Input.mousePosition);
		
		//if (Input.GetMouseButton(KeyCode.Mouse1)) {
		//	if (Physics.Raycast (mouseCursor, out rayHit, 100f)) {
		//		Instantiate (destination, RaycastHit.point, Quaternion.identity);
		//	}
	//	}
	}
}
