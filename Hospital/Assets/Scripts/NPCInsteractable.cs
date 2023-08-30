using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Unity.Netcode;

public class NPCInsteractable : NetworkBehaviour
{
    [SerializeField] private string interactText;
    [SerializeField] private string SpeechNPC;
    [SerializeField] private string InteractionSpeech;
    [SerializeField] private string EmergencySpeech;
    [SerializeField] private string EmergencyVoice;
    [SerializeField] private string[] Status;
    [SerializeField] public string StatusChoice;
    [SerializeField] private string[] Types;
    [SerializeField] public string type;
    [SerializeField] public GameObject[] Npcs;
    private Animator animator;
    private NavMeshAgent agent;
    public GameObject[] player;
    public GameObject[] corePlayer;
    private Quaternion initialPlace;

    private void Start()
    {
        
        
        int randomStatus = Random.Range(0, Status.Length);
        StatusChoice = Status[randomStatus];

        
    }
    private void Awake()
    {
       

        animator = GetComponent<Animator>();
        for (int i = 0; i < Npcs.Length; i++)
        {
            if(gameObject == Npcs[i])
            {
                animator.SetBool("Sit", true);
            }
            
        }
        initialPlace = gameObject.transform.rotation;

        Npcs = GameObject.FindGameObjectsWithTag("Npc");


        int randomType = Random.Range(0, Types.Length);
        type = Types[randomType];
    }

    private void Update()
    {




        //player1 = FindObjectsOfType<CharacterMovement>();

        if (player != null)
        {
             player = GameObject.FindGameObjectsWithTag("Player");

        }

        if (corePlayer != null)
        {
            corePlayer = GameObject.FindGameObjectsWithTag("PlayerCore");

        }
        for (int i = 0; i < Npcs.Length; i++)
        { 
            if ((CharacterMovement.EmergencyTrigger != 0) && (gameObject == Npcs[i]))
            {

                animator.SetTrigger("Emergency");
            }
         }
        if (!gameObject.GetComponent<EmergencyFollow>())
        {
            return;
        }

        //if (Choices.emergencyEscape != 0)
        //{
        //    gameObject.GetComponent<EmergencyFollow>().enabled = true;
        //}
        


    }
    public void Interact(Transform interactorTransform)
    {
        if (corePlayer != null)
        {
            corePlayer = GameObject.FindGameObjectsWithTag("PlayerCore");

        }

        Collider[] colliders = Physics.OverlapSphere(transform.position, 1.5f);
        foreach (Collider collider in colliders)
        {
            for (int i = 0; i < corePlayer.Length; i++)
            {
                for(int j = 0; j < player.Length; j++)
                {
                    if (collider.gameObject == player[i])
                    {
                        Debug.Log("here");
                        gameObject.transform.LookAt(collider.gameObject.transform);
                        ChatBubble.Create(collider.gameObject.transform, new Vector3(0f, 1.594f, 0.578f), SpeechNPC, StatusChoice, type);
                    }
                }
              

                
                    
            }
        }

        if (StatusChoice == "Calm")
        {
            SpeechNPC = "Living with my illness is a journey, but I've learned ways to handle it and find moments of calm amidst it all.";
        }

        if (StatusChoice == "Anxious")
        {
            SpeechNPC = "My condition makes me worry a lot and feel really tense, like my mind is always running in circles";
        }

        if (StatusChoice == "Depressed")
        {
            SpeechNPC = "I've been dealing with this illness that just weighs me down all the time, making it hard to find any joy";
        }

       

        //animator.SetTrigger("Talk");
        StartCoroutine(ResetRotationNpc());
    }
    public string GetInteractText()
    {
        return interactText;
    }

    
        private IEnumerator ResetRotationNpc()
    {
        yield return new WaitForSeconds(6f);
        gameObject.transform.rotation = initialPlace;


    }

    //public GameObject FindClosest()
    //{
    //    GameObject[] gos;
    //    gos = GameObject.FindGameObjectsWithTag("Player");
    //    GameObject closest = null;
    //    float distance = Mathf.Infinity;
    //    Vector3 position = transform.position;
    //    foreach (GameObject go in gos)
    //    {
    //        Vector3 diff = go.transform.position - position;
    //        float curDistance = diff.sqrMagnitude;
    //        if (curDistance < distance)
    //        {
    //            closest = go;
    //            distance = curDistance;
    //        }
    //    }
    //    return closest;
    //}
}
