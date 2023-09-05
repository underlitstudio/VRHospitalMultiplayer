using Unity.Netcode;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace QuickStart
{
    public class SceneScript : NetworkBehaviour
    {
        public Text canvasStatusText;
  

       // [SyncVar(hook = nameof(OnStatusTextChanged))]
        public string statusText;
        public SceneReference sceneReference;
        void OnStatusTextChanged(string _Old, string _New)
        {
            //called from sync var hook, to update info on screen for all players
            canvasStatusText.text = statusText;
        }

     
        public void ButtonChangeScene()
        {
            if (!IsServer) return;
            var scene = SceneManager.GetActiveScene();
            NetworkManager.Singleton.SceneManager.LoadScene("soloPlayer" , LoadSceneMode.Single);
        }
    }
}