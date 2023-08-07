using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMovement : MonoBehaviour
{
    public float speed = 5f;

    private Rigidbody rb;
    private Animator animator;

    public Camera Camera;
    public float range = 3f;
    public AudioClip FireAlarm;
    private AudioSource AudioSource;
    //private GameObject[] Npcs;
    public static int EmergencyTrigger = 0 ;
    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        animator = GetComponent<Animator>();
        AudioSource = GetComponent<AudioSource>();
        //EmergencyTrigger = 0;
        StartCoroutine(AlarmWithDelay());
        //Npcs = GameObject.FindGameObjectsWithTag("npc");
    }

    private void Update()
    {
        float horizontalInput = Input.GetAxis("Horizontal"); 
        float verticalInput = Input.GetAxis("Vertical"); 

        Vector3 movement = new Vector3(horizontalInput, 0f, verticalInput); 

        if (movement != Vector3.zero)
        {
            Quaternion toRotation = Quaternion.LookRotation(movement, Vector3.up); 
            transform.rotation = Quaternion.RotateTowards(transform.rotation, toRotation, Time.deltaTime * 200f); 
        }

        animator.SetFloat("Speed", movement.magnitude); 

        rb.velocity = movement * speed;

        /* if (Input.GetKey("f")&&(!isAnimating))
         {
             AlarmFire();
             isAnimating = true;
         }*/
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("FireAlarm"))
        {
            //animator.SetTrigger("FireAlarm");
            //animator.SetBool("FireAlarm", true);
             //animator.SetBool("FireAlarm", true);
            AudioSource.clip = FireAlarm;
            AudioSource.Play();
            EmergencyTrigger = 1;
        }
     }

    /*void AlarmFire()
    {
        RaycastHit hit;
        if (Physics.Raycast(Camera.transform.position, Camera.transform.forward, out hit, range))
        {

            FireAlarm firealarm = hit.transform.GetComponent<FireAlarm>();
            if (firealarm != null)
            {
                animator.SetTrigger("FireAlarm");
               // animator.SetBool("Fire", true);
                AudioSource.clip = FireAlarm;
                AudioSource.Play();
                isAnimating = false;
            }
            
        }
    }*/



    private IEnumerator AlarmWithDelay()
    {
        yield return new WaitForSeconds(50);

        AudioSource.clip = FireAlarm;
        AudioSource.Play();
    }
}
