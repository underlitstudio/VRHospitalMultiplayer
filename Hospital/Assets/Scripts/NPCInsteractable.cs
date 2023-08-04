using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class NPCInsteractable : MonoBehaviour
{
    [SerializeField] private string interactText;
    [SerializeField] private string SpeechNPC;
    [SerializeField] private string InteractionSpeech;
    private Animator animator;
    private NavMeshAgent agent;
    private GameObject player;
    public GameObject corePlayer;
    public Quaternion initialPlace;
    private void Awake()
    {
        animator = GetComponent<Animator>();
        player = GameObject.FindGameObjectWithTag("Player");
        corePlayer = FindAnyObjectByType<CharacterMovement>().gameObject;
        initialPlace = gameObject.transform.rotation;

    }
    public void Interact(Transform interactorTransform)
    {
        
        gameObject.transform.LookAt(corePlayer.transform);
        
        ChatBubble.Create(player.transform, new Vector3(0f,0.023f,0.7f), SpeechNPC);
       

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
