using System.Collections;
using System.Collections.Generic;
using Unity.Netcode;
using UnityEngine;

public class FireAlarm : NetworkBehaviour
{
    public GameObject vfx;
    private AudioSource AudioSource;
    public AudioClip FireExten;
    public GameObject fireExtenPoint;
    // Start is called before the first frame update
    void Start()
    {
        AudioSource = GetComponent<AudioSource>();

    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Fire"))
        {
            AudioSource.clip = FireExten;
            AudioSource.Play();
            spawnAntiFireServerRpc();
            Destroy(other.gameObject,3f);
            other.GetComponent<NetworkObject>().Despawn(true);
            ScoringSystem.Score += 1;
        }
        }

    [ServerRpc]
    private void spawnAntiFireServerRpc() {
        GameObject vfxInstance = Instantiate(vfx, fireExtenPoint.transform.position, Quaternion.identity) as GameObject;
        Destroy(vfxInstance, 5f);
    }
}
