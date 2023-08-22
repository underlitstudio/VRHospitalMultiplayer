using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HoldItems : MonoBehaviour
{
    public GameObject[] Object;
    public Transform PlayerTransform;
    public float range = 3f;
    public float Go = 100f;
    public Camera Camera;


    void Start()
    {
        Object = GameObject.FindGameObjectsWithTag("FireExten");
    }

    void Update()
    {
        if (Input.GetKey("f"))
        {
            StartPickUp();
            ScoringSystem.Score += 1;
        }

        if (Input.GetKeyUp("f"))
        {
            Drop();
        }
    }

    void StartPickUp()
    {
        RaycastHit hit;
        if (Physics.Raycast(Camera.transform.position, Camera.transform.forward, out hit, range))
        {
            //Debug.Log(hit.transform.name);

            Target target = hit.transform.GetComponent<Target>();
            if (target != null)
            {
                PickUp();
            }
        }
    }

    void PickUp()
    {
        
         for(int i = 0; i < Object.Length; i++)
         {
             Object[i].transform.SetParent(PlayerTransform);
            Object[i].GetComponent<Rigidbody>().isKinematic = true;
        }

        
    }

    void Drop()
    {
        PlayerTransform.DetachChildren();
        for (int i = 0; i < Object.Length; i++)
        {
            Object[i].GetComponent<Rigidbody>().isKinematic = false;
        }
    }

}
