using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
public class PlayerInteractableUi : MonoBehaviour
{
    [SerializeField] private GameObject containerGameObject;
    [SerializeField] private PlayerInteract[] playerInteract;
    [SerializeField] private TextMeshProUGUI interactTextMeshProUIGUI;

    private void Start()
    {
       
         
    }
    private void Update()
    {
        playerInteract = FindObjectsOfType<PlayerInteract>();
        for (int i = 0; i < playerInteract.Length; i++)
        {
            if (playerInteract[i].GetInsteractableObject() != null)
            {
                show(playerInteract[i].GetInsteractableObject());
            }
            else
            {
                Hide();
            }
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
