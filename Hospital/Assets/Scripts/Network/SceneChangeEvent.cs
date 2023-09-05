using System.Collections;
using System.Collections.Generic;
using Unity.Netcode;
using Unity.Networking;
using UnityEngine;


public class SceneChangeEvent : MonoBehaviour
{
    public string sceneName; // The name of the scene to load

    public SceneChangeEvent(string sceneName)
    {
        this.sceneName = sceneName;
    }
}
