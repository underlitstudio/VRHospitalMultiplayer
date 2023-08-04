using System.Collections;
using System.Collections.Generic;
using System.IO;
using TMPro;
using UnityEditor.VersionControl;
using UnityEngine;

public class ChatBubble : MonoBehaviour
{
   
    public static void Create (Transform parent , Vector3 localPosition , string text )
    {
        
        Transform chatBubbleTransform = Instantiate(GameAssets.i.pfChatBubble,parent);
        //chatBubbleTransform.LookAt(player);
        chatBubbleTransform.localPosition = localPosition;
        chatBubbleTransform.GetComponent<ChatBubble>().setup(text);
        Destroy(chatBubbleTransform.gameObject , 6f);
    }

    //private SpriteRenderer backgroundsprite;
    private TextMeshProUGUI textMeshPro;
    

    private void Awake()
    {
        //backgroundsprite = transform.Find("Background").GetComponent<SpriteRenderer>();
        textMeshPro = transform.Find("Text").GetComponent<TextMeshProUGUI>();
        
    }

    private void Start()
    {
        
    }

    private void setup(string text)
    {
        textMeshPro.SetText(text);
        textMeshPro.ForceMeshUpdate();
        

        //Vector2 textSize = textMeshPro.GetRenderedValues(false);
        //Vector2 padding = new Vector2(0.1f, 0.05f);
        //backgroundsprite.size = textSize  /*padding;*/ ;
       //backgroundsprite.transform.localPosition = new Vector3(backgroundsprite.size.x / 20f, 0f);
    }



}
