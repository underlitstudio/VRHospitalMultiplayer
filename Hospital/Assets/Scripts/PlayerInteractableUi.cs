using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
public class PlayerInteractableUi : MonoBehaviour
{
    [SerializeField] private GameObject containerGameObject;
    [SerializeField] private PlayerInteract playerInteract;
    [SerializeField] private TextMeshProUGUI interactTextMeshProUIGUI;

    private void Start()
    {
      playerInteract  = FindObjectOfType<PlayerInteract>();        
    }
    private void Update()
    {
        if(playerInteract.GetInsteractableObject() != null)
        {
            show(playerInteract.GetInsteractableObject());
        }
        else
        {
            Hide();
        }        
    }
    private void show(NPCInsteractable npcinteractable)
    {
        containerGameObject.SetActive(true);
        interactTextMeshProUIGUI.text=npcinteractable.GetInteractText();
    }
    private void Hide()
    {
        containerGameObject.SetActive(false);

    }
}
