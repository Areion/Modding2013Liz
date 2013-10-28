using UnityEngine;
using System.Collections;

public class MusicVideoCoreography : MonoBehaviour {
	
	public bool jump = false; 
	public Light light;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
		if ((Time.time > 1f && Time.time < 40f) || (Time.time > 79f && Time.time < 100f) || (Time.time > 119f && Time.time < 140f) || (Time.time > 159f)) {
			
			transform.position += new Vector3 (500, 100f, 550f) *Time.deltaTime;
			transform.Rotate (0f,20f *Time.deltaTime, 0f); 
			
		
		} else if (Time.time > 40f && Time.time < 79f) {
			
			transform.position = new Vector3 (900f,6f,800f);
			
			if (jump == false) {
				for (int i = 0; i <= 2; i += 1) {
					transform.position += new Vector3 (0f,1f*Time.deltaTime,0f);
				} jump = true;3
			
			} else if (jump == true) {
				for (int i = 0; i <= 1; i += 1) {
					transform.position += new Vector3 (0f,-1f,0f) *Time.deltaTime;
				} jump = false;
			}
		
		} else if (Time.time > 100f && Time.time < 119f) {
			
			transform.position = new Vector3 (500f,0f,500f);
			
		} else if (Time.time > 140f && Time.time < 159f) {
			
			transform.position = new Vector3 (1648f, 50f, 226f);
		}	
	}
}
