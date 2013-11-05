using UnityEngine;
using System.Collections;

public class WaterDeform : MonoBehaviour {
	
	
	MeshFilter mf;
	public float waveHeight = 0.003f;
	public float waveFrequency = 6f;
	
	Vector3[] baseVertices;
	Vector3[] workingCopy;
	
	
	
	
	// Use this for initialization
	void Start () {
	
		mf = GetComponent<MeshFilter>();
		baseVertices = mf.mesh.vertices;
		
	}
	
	// Update is called once per frame
	void Update () {
	
		// every frame, start with a fresh copy of the untouched plane
		workingCopy = baseVertices;
		
		for ( int i=0; i < workingCopy.Length; i++ ) {
			// go through every vertex in this model
			// and move it either up or down according to the sine wave
			workingCopy[i] = baseVertices[i] + Vector3.up * Mathf.Sin( ( Time.time + i ) * waveFrequency )* waveHeight;
		}
		
		//stuff data back into meshFilter
		mf.mesh.vertices = workingCopy;
		
		// recalculate normals
		mf.mesh.RecalculateNormals ();
		
		// visualize normals
		for ( int i = 0; i < mf.mesh.vertices.Length; i ++ ) {
			Debug.DrawRay( mf.mesh.vertices[i], mf.mesh.normals[i] );
		}
	}
}
