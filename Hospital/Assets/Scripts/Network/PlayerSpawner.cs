
using System;
using System.Collections;
using System.Collections.Generic;
using Unity.Netcode;
using Unity.VisualScripting;
using UnityEngine;
using Random = UnityEngine.Random;

public class PlayerSpawner : NetworkBehaviour
{
    public GameObject[] playerPrefab;
    public int clientID;
    [SerializeField] private GameObject playerTransform;


    private void Start()
    {



    }
    private void Update()
    {
        if (IsOwner == true)
        {
            gameObject.transform.GetChild(0).gameObject.transform.GetChild(2).gameObject.SetActive(true);
        }
    }
   
    public override void OnNetworkSpawn()
    {
        base.OnNetworkSpawn();
        clientID = (int)OwnerClientId;

        if (IsServer == true)
        {

            GameObject playerk =  SpawnPlayer();
            GameObject playerz = spawnTransform();
            playerz.transform.SetParent(playerk.transform);
            //Debug.Log(playerk.transform.GetChild(2).name.ToString());


            playerk.transform.SetParent(gameObject.transform);
           
          




        }
    }

    
    public GameObject SpawnPlayer()
    {
        GameObject[] spawnPoints = GameObject.FindGameObjectsWithTag("SpawnerPlayer");
        
        int num1 = Random.Range(0, spawnPoints.Length );
        int num2 = Random.Range(0, playerPrefab.Length -1);
        GameObject go = Instantiate(playerPrefab[num2], spawnPoints[num1].transform.position, Quaternion.identity);
       
        //go.transform.SetParent(gameObject.transform);
        go.GetComponent<NetworkObject>().SpawnWithOwnership(OwnerClientId);
        //if (IsOwner == true)
        //{
        //    Debug.Log("player");
        //    go.transform.GetChild(2).gameObject.SetActive(true);
        //}
        return go;
    }


    public GameObject spawnTransform()
    {
        GameObject spawner = Instantiate(playerTransform, transform.position, Quaternion.identity);
        spawner.GetComponent<NetworkObject>().Spawn();
        return spawner;
    }
}
