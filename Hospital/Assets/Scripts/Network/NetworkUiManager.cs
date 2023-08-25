using Unity.Netcode;
using UnityEngine;
using UnityEngine.UI;

public class NetworkUiManager : MonoBehaviour
{
    [SerializeField] private Button serverbtn;
    [SerializeField] private Button clientbtn;
    [SerializeField] private Button hostbtn;

    private void Awake()
    {
        serverbtn.onClick.AddListener(() =>
        {
            NetworkManager.Singleton.StartServer();
        }
        );

        hostbtn.onClick.AddListener(() =>
        {
            NetworkManager.Singleton.StartHost();
        }
       );
        clientbtn.onClick.AddListener(() =>
        {
            NetworkManager.Singleton.StartClient();
        }
       );
    }
}
