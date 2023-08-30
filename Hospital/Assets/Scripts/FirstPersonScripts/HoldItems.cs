using System.Collections;
using System.Collections.Generic;
using Unity.Burst.CompilerServices;
using Unity.Netcode;
using UnityEngine;
using UnityEngine.AI;

public class HoldItems : NetworkBehaviour
{
    public GameObject[] Object;
    public Transform PlayerTransform;
    private float range = 1f;
    // public float Go = 100f;
    public Camera Camera;


    void Start()
    {
        Object = GameObject.FindGameObjectsWithTag("FireExten");
    }
   
    void Update()
    {
        
        PlayerTransform = gameObject.transform.GetChild(3);
        
        Collider[] colliders = Physics.OverlapSphere(transform.position, 1.5f);
        foreach (Collider collider in colliders)
        {
            for (int i = 0; i < Object.Length; i++)
            {
                if (collider.gameObject == Object[i])
                {
                    if (Input.GetKey("f"))
                    {

                        collider.gameObject.transform.SetParent(PlayerTransform);
                        collider.gameObject.transform.GetComponent<Rigidbody>().isKinematic = true;
                    }

                    if (Input.GetKeyUp("f"))
                    {
                        PlayerTransform.DetachChildren();

                        collider.gameObject.transform.GetComponent<Rigidbody>().isKinematic = false;
                        collider.gameObject.transform.GetComponent<Rigidbody>().useGravity = true;
                        //collider.gameObject.transform.GetComponent<Rigidbody>().free
                    }

                }
            }
        }

        //void StartPickUp()
        //{



        //        //Target target = hit.transform.GetComponent<Target>();
        //        PickUp();




        //}

        //void PickUp()
        //{
        //    Debug.Log("first");


        //    Collider[] colliders = Physics.OverlapSphere(transform.position, 1.5f);
        //    foreach (Collider collider in colliders)
        //    {
        //        for(int i = 0; i < Object.Length; i++)
        //        {
        //            if (collider.gameObject == Object[i])
        //            {
        //                collider.gameObject.transform.SetParent(PlayerTransform);
        //                collider.gameObject.transform.GetComponent<Rigidbody>().isKinematic = true;
        //                Debug.Log("first");

        //            }
        //        }




        //    }





        //    ScoringSystem.Score += 1;
        //}

        //void Drop()
        //{
        //    Collider[] colliders = Physics.OverlapSphere(transform.position, 1.5f);
        //    foreach (Collider collider in colliders)
        //    {
        //        for (int i = 0; i < Object.Length; i++)
        //        {
        //            if (collider.gameObject == Object[i])
        //            {
        //                collider.gameObject.transform.DetachChildren();
        //                collider.gameObject.transform.GetComponent<Rigidbody>().isKinematic = false;

        //            }
        //        }
        //    }


        //}

    }
}
