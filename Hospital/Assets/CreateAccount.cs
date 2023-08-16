
using System.Collections;
using System.Collections.Generic;
using System.Net.Http;
using TMPro;
using Unity.VisualScripting;
using UnityEditor.PackageManager.Requests;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

using System.Text;

public class CreateAccount : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI alertText;
    [SerializeField] private string CreateEndpoint = "http://localhost:8000/auth/signup";
    [SerializeField] private TMP_InputField usernameInputField;
    [SerializeField] private TMP_InputField emailInputField;
    [SerializeField] private TMP_InputField passwordInputField;
    [SerializeField] private Button createButton;
    [SerializeField] private Button SignOutButton;

    public void OnCreateAccountClick()
    {
        //alertText.text = "Creating account...";
        //ActivateButtons(false);

        StartCoroutine(TryCreate());
       // StartCoroutine(PostRequest());

    }
    



    private IEnumerator TryCreate()
    {
        string name = usernameInputField.text;
        string password = passwordInputField.text;
        string email = emailInputField.text;
        /*if (email.Length < 7 || email.Length > 28)
        {
            alertText.text = "Invalid email";
            ActivateButtons(true);
            yield break;
        }
        /if (password.Length < 4 || email.Length > 10)
        {
            alertText.text = "Invalid password";
            ActivateButtons(true);
            yield break;
        }*/
        WWWForm form = new WWWForm();
        
        form.AddField("name", name);
        form.AddField("email", email);
        form.AddField("password", password);

        
       
        using (UnityWebRequest request = UnityWebRequest.Post(CreateEndpoint, form))
        {
            yield return request.SendWebRequest();
           
            //Debug.Log("here");
            alertText.text = "Welcome";
            
            SceneManager.LoadScene("LoginScene");
            ActivateButtons(false);
        }
    }
    private void ActivateButtons(bool toggle)
    {
        createButton.interactable = toggle;

    }

    
}
