using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInteract : MonoBehaviour
{
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            float interactRange = 1.5f;
            Collider[] colliders = Physics.OverlapSphere(transform.position, interactRange);
            foreach(Collider collider in colliders)
            {
                if(collider.TryGetComponent(out NPCInsteractable NPC))
                {
                    NPC.Interact(transform);
                }
            }
        }

        
    }

    public NPCInsteractable GetInsteractableObject()
    {
        List<NPCInsteractable> list = new List<NPCInsteractable>();
        float interactRange = 1.75f;
        Collider[] colliders = Physics.OverlapSphere(transform.position, interactRange);
        foreach (Collider collider in colliders)
        {
            if (collider.TryGetComponent(out NPCInsteractable NPC))
            {
                list.Add(NPC);
                
            }
        }

        NPCInsteractable closestNPCIntractable = null;
        foreach(NPCInsteractable npc in list)
        {
            if(closestNPCIntractable == null)
            {
                closestNPCIntractable = npc;
            }
            else
            {
                if(Vector3.Distance(transform.position,npc.transform.position) < Vector3.Distance(transform.position, closestNPCIntractable.transform.position)) {
                    closestNPCIntractable = npc; 
                }

            }
        }
        return closestNPCIntractable;
    }
}
