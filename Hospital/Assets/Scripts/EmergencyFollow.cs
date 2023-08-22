using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EmergencyFollow : MonoBehaviour
{
    
    public float followDistance = 5f; // Desired distance between the AI and the player
    private NavMeshAgent navMeshAgent;
    private GameObject player;
    private Animator animator;
    
    private void Start()
    {
        animator = GetComponent<Animator>();
        player = GameObject.FindGameObjectWithTag("Player");
        navMeshAgent = GetComponent<NavMeshAgent>();
        if (!player)
        {
            Debug.LogWarning("Player reference not set for AI.");
        }
        animator.SetBool("Sit", false);
    }

    private void Update()
    {
        

        if (!player)
        {
            return;
        }

        // Calculate the distance between the AI and the player
        float distanceToPlayer = Vector3.Distance(transform.position, player.transform.position);

        // If the distance is greater than the follow distance, move towards the player
        if (distanceToPlayer > followDistance)
        {
            navMeshAgent.SetDestination(player.transform.position);
            animator.SetTrigger("Follow");
        }
        else
        {
            // If the AI is too close, stop moving (you can add other behaviors here)
            navMeshAgent.SetDestination(transform.position);
            animator.SetTrigger("StandBy");

        }
    }
}
