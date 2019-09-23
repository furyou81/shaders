using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class DecalOnOff : MonoBehaviour
{
    Material material;
    bool showDecal = false;

    void OnMouseDown() {
        showDecal = !showDecal;
        if(showDecal) {
            material.SetFloat("_ShowDecal", 1);
        } else {
            material.SetFloat("_ShowDecal", 0);
        }
    }

    void Start() {
        material = this.GetComponent<Renderer>().sharedMaterial;    
    }

    void Update() {

    }
}
