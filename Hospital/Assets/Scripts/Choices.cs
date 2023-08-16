using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class Choices : MonoBehaviour
{
    private TextMeshProUGUI textMeshPro;
    
    public int emergencyEscape = 0;
    private void Start()
    {
       
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {


            Confort();
        }
        if (Input.GetKeyDown(KeyCode.C))
        {


            Rescue();





        }
    }

    private void Awake()
    {
        //backgroundsprite = transform.Find("Background").GetComponent<SpriteRenderer>();
        textMeshPro = transform.Find("Text").GetComponent<TextMeshProUGUI>();
        
    }



    public void Rescue()
    {
       

        Collider[] colliders = Physics.OverlapSphere(transform.position, 1);
        foreach (Collider collider in colliders)
        {
            if (collider.TryGetComponent(out NPCInsteractable NPC))
            {
                string text = NPC.GetComponent<NPCInsteractable>().StatusChoice.ToString().Trim();
                if (text == "Calm")
                {
                    setup("There's a fire, but let's stay composed. We need to find the nearest exit calmly and follow the emergency procedures. Staying focused is key right now.");

                    StartCoroutine(Follow());
                }
                if (text == "Anxious")
                {
                    setup("I-I can't believe there's a fire! This is so overwhelming. What if we can't get out? I'm really scared.");

                    //StartCoroutine(Follow());
                }
                if (text == "Depressed")
                {
                    setup("I...I can't believe there's a fire. It's like even the world is against me. What's the point of escaping? Everything just feels so heavy and pointless.");

                    //StartCoroutine(Follow());
                }
            }
        }
    }
    private void setup(string text)
    {
        textMeshPro.SetText(text);
        textMeshPro.ForceMeshUpdate();
    }


    public void Confort()
    {
        Collider[] colliders = Physics.OverlapSphere(transform.position, 1);
        foreach (Collider collider in colliders)
        {
            if (collider.TryGetComponent(out NPCInsteractable NPC))
            {
                string text = NPC.GetComponent<NPCInsteractable>().StatusChoice.ToString().Trim();
                //Debug.Log(text);

                if (text == "Calm" )
                {
                    // Debug.Log("here 1");
                    setup("In this hospital, I'm feeling peaceful, like a calm breeze helping me heal");
                   

                }
                if (text == "Anxious" )
                {
                    //Debug.Log("here 2");
                    setup("Taking a deep breath does help. It's like my mind is always racing, but maybe focusing on the present can quiet some of the chaos. Thanks for being here.");
                    NPC.GetComponent<NPCInsteractable>().StatusChoice = "Calm";
                   

                }
                if (text == "Depressed")
                {
                   // Debug.Log("here 3");
                    setup("Thank you for trying to understand. It's just tough to believe in anything positive right now. But maybe, as you said, there's a small glimmer of hope somewhere.");
                    
                    NPC.GetComponent<NPCInsteractable>().StatusChoice = "Anxious";

                }
            }


        }
    }

    private IEnumerator Follow()
    {
        yield return new WaitForSeconds(3);

        setup("I will follow you");
        
        Collider[] colliders = Physics.OverlapSphere(transform.position, 1);
        foreach (Collider collider in colliders)
        {
            if (collider.TryGetComponent(out NPCInsteractable NPC))
            {
               
                NPC.gameObject.GetComponent<EmergencyFollow>().enabled=true;
            }
        }


    }
}
