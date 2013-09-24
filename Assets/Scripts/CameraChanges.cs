using UnityEngine;
using System.Collections;

public class CameraChanges : MonoBehaviour {
	
	Vector3 RotateOne = new Vector3(29.616f, -161.09f, 359.911f);
	Vector3 RotateTwo = new Vector3(26.931f, -84.1f, 356.642f);
	Vector3 RotateThree = new Vector3(20.7f, 7.2f, 20.9f);
	
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		if (Time.time >= 33 && Time.time < 42) {
			transform.position = new Vector3 (-16.336f, 38.447f, -6.35f);
			transform.LookAt (RotateOne);
		
		} else if (Time.time >= 42 && Time.time < 50) {
			transform.position = new Vector3 (-1.9871f, 36.128f, -3.651f);
			transform.LookAt (RotateTwo);
		
		}else if (Time.time >= 50) {
			transform.position = new Vector3 (21f, 31.013f, -4.766f);
			transform.LookAt (RotateThree);
		}
	}
}
