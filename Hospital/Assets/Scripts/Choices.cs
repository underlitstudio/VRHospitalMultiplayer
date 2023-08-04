using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class Choices : MonoBehaviour
{
    private TextMeshProUGUI textMeshPro;
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            setup("I am fine doc");


        }
        if (Input.GetKeyDown(KeyCode.C))
        {

            setup("There is a fire , let's get out !");
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
    }
