using UnityEngine;
using System.Collections;

public class WaterSomething : MonoBehaviour {
	
	public float scrollSpeed = 0.05f;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		float offset = Time.time * scrollSpeed;
		renderer.material.mainTextureOffset = new Vector2 ( -offset, -offset);
	}
}
