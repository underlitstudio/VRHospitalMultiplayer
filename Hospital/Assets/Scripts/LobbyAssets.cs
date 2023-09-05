using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LobbyAssets : MonoBehaviour {



    public static LobbyAssets Instance { get; private set; }


    [SerializeField] private Sprite FemaleNurse;
    [SerializeField] private Sprite MaleNurse;


    private void Awake() {
        Instance = this;
    }

    public Sprite GetSprite(LobbyManager.PlayerCharacter playerCharacter) {
        switch (playerCharacter) {
            default:
            case LobbyManager.PlayerCharacter.MaleNurse:   return MaleNurse;
            case LobbyManager.PlayerCharacter.FemaleNurse:    return FemaleNurse;
        }
    }

}