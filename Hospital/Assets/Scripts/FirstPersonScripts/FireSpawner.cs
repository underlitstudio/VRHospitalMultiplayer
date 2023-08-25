using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting.Antlr3.Runtime.Misc;
using UnityEngine;
using Unity.Netcode;

public class FireSpawner : NetworkBehaviour
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
        
    }

    private void Awake()
    {

        

       // if (!NetworkManager.Singleton.IsServer) return;

    }

    public override void OnNetworkSpawn()
    {
        base.OnNetworkSpawn();
        StartCoroutine(SpawnObjectAfterDelay());
    }

    // Update is called once per frame
    void Update()
    {
      
    }


    private IEnumerator SpawnObjectAfterDelay()
    {
        yield return new WaitForSeconds(20);

        spawnFireServerRPC();
        Signal.gameObject.SetActive(true);
    }

    [ServerRpc]
    public void spawnFireServerRPC()
    {
        int randomIndex = Random.Range(0, FireSpot.Length);

        GameObject spawner = Instantiate(fire, FireSpot[randomIndex].transform.position, Quaternion.identity);
        spawner.GetComponent<NetworkObject>().Spawn(); 
       // Instantiate(vfxFire, FireSpot[randomIndex].transform.position, Quaternion.identity) ;
        


    }
}
