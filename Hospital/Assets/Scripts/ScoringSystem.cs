using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SocialPlatforms.Impl;

public class ScoringSystem : MonoBehaviour
{
    public TextMeshProUGUI Scores;
   

    public static int Score = 0;
    
    
    void Start()
    {
        Scores = transform.Find("ScoreFeedBack").GetComponent<TextMeshProUGUI>();
        //FeedBackScore = transform.Find("Score").GetComponent<TextMeshProUGUI>();
        //FeedScore = transform.Find("ScoreFeedBack").gameObject;
        
    }



    private void Update()
    {
        
     

        

        Scores.SetText(Score.ToString());
        Scores.ForceMeshUpdate();

       

    }

    
}

