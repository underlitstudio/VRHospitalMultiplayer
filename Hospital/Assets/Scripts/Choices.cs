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
            setup("I am fine doc");


        }
        if (Input.GetKeyDown(KeyCode.C))
        {

            setup("How do we get out ? I am scared !");

            StartCoroutine(SpeechObjectAfterDelay());

           
               
            
        }
    }

    private void Awake()
    {
        //backgroundsprite = transform.Find("Background").GetComponent<SpriteRenderer>();
        textMeshPro = transform.Find("Text").GetComponent<TextMeshProUGUI>();
        
    }


    private void setup(string text)
    {
        textMeshPro.SetText(text);
        textMeshPro.ForceMeshUpdate();
    }


    private IEnumerator SpeechObjectAfterDelay()
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
