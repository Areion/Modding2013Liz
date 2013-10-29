using UnityEngine;
using System.Collections;

public class VectorFun : MonoBehaviour {
	
	public Vector3 destination = Vector3.zero;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		// transform.position = new Vector3(5f,5f,2f);
		// transform.position += new Vector3(0f,2f*Time.deltaTime, 0f);
		
		// move constantly towards point (o,10,0)
		transform.position += (destination - transform.position) * Time.deltaTime;
	}
}
