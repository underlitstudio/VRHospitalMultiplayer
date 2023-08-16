using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class NPCInsteractable : MonoBehaviour
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
    private Animator animator;
    private NavMeshAgent agent;
    private GameObject player;
    public GameObject corePlayer;
    public Quaternion initialPlace;

    private void Start()
    {
        int randomStatus = Random.Range(0, Status.Length);
        StatusChoice = Status[randomStatus];
    }
    private void Awake()
    {
        animator = GetComponent<Animator>();
        player = GameObject.FindGameObjectWithTag("Player");
        corePlayer = FindAnyObjectByType<CharacterMovement>().gameObject;
        initialPlace = gameObject.transform.rotation;


       

        int randomType = Random.Range(0, Types.Length);
        type = Types[randomType];
    }
    private void Update()
    {
        if(CharacterMovement.EmergencyTrigger != 0)
        {
            
            animator.SetTrigger("Emergency");
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
        
        gameObject.transform.LookAt(corePlayer.transform);
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

        ChatBubble.Create(player.transform, new Vector3(0f,0.023f,0.7f), SpeechNPC, StatusChoice , type);
       

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
