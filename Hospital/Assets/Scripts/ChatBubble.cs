using TMPro;
using UnityEngine;

public class ChatBubble : MonoBehaviour
{
   
    public static void Create (Transform parent , Vector3 localPosition , string text , string Status , string type )
    {
        
        Transform chatBubbleTransform = Instantiate(GameAssets.i.pfChatBubble,parent);
        //chatBubbleTransform.LookAt(player);
        chatBubbleTransform.localPosition = localPosition;
        chatBubbleTransform.GetComponent<ChatBubble>().setup(text , Status , type);

        Destroy(chatBubbleTransform.gameObject , 6f);
    }

    //private SpriteRenderer backgroundsprite;
    private TextMeshProUGUI textMeshPro;
    private TextMeshProUGUI Status;
    private TextMeshProUGUI Type;
    private void Awake()
    {
        //backgroundsprite = transform.Find("Background").GetComponent<SpriteRenderer>();
        textMeshPro = transform.Find("Text").GetComponent<TextMeshProUGUI>();
        Status = transform.Find("Status").GetComponent<TextMeshProUGUI>();
        Type = transform.Find("Type").GetComponent<TextMeshProUGUI>();
    }

    private void Start()
    {
        
    }

    private void setup(string text ,string status , string type )
    {
        Type.SetText(type);
        Type.ForceMeshUpdate();

        textMeshPro.SetText(text);
        Status.SetText(status);
        textMeshPro.ForceMeshUpdate();
        Status.ForceMeshUpdate();


        //Vector2 textSize = textMeshPro.GetRenderedValues(false);
        //Vector2 padding = new Vector2(0.1f, 0.05f);
        //backgroundsprite.size = textSize  /*padding;*/ ;
        //backgroundsprite.transform.localPosition = new Vector3(backgroundsprite.size.x / 20f, 0f);
    }



}
