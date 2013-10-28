using UnityEngine;
using System.Collections;

public class TriggerScript : MonoBehaviour {
	
	public Light light;
	public Light light2;
	public Light light3;
	
	
	// Use this for initialization
	void Start () {
		light.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnTriggerEnter() {
		light.enabled = true;
		light2.enabled = false;
		light3.enabled = false;
	}
}
