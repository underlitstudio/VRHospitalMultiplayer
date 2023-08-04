using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting.Antlr3.Runtime.Misc;
using UnityEngine;

public class FireSpawner : MonoBehaviour
{
   // public GameObject vfxFire;
    public GameObject[] FireSpot;
    //public static FireSpawner instance;
    public GameObject fire;
    public GameObject Signal;
    //private void Awake()
    //{
    //    instance = this;
    //}
    // Start is called before the first frame update
    void Start()
    {
        FireSpot = GameObject.FindGameObjectsWithTag("FireSpots");
        StartCoroutine(SpawnObjectAfterDelay());
        
    }


    // Update is called once per frame
    void Update()
    {

    }


    private IEnumerator SpawnObjectAfterDelay()
    {
        yield return new WaitForSeconds(20);

        spawnFire();
        Signal.gameObject.SetActive(true);
    }

    public void spawnFire()
    {
        int randomIndex = Random.Range(0, FireSpot.Length);
        Instantiate(fire, FireSpot[randomIndex].transform.position, Quaternion.identity);
       // Instantiate(vfxFire, FireSpot[randomIndex].transform.position, Quaternion.identity) ;
        


    }
}
