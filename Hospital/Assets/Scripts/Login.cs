using UnityEngine;
using TMPro;
using System.Collections;
using UnityEngine.Networking;
using UnityEngine.UI;
using System.Text.RegularExpressions;
using UnityEngine.SceneManagement;
using System.Net;
using UnityEditor.PackageManager.Requests;

public class Login : MonoBehaviour
{

    [SerializeField] private string loginEndpoint = "http://localhost:8000/auth/signin";
    [SerializeField] private string ExitEndpoint = "http://localhost:8000/auth/signout";
    [SerializeField] private string ForgetPasswordEndpoint = "http://localhost:8000/auth/forgot-password";

    [SerializeField] private TextMeshProUGUI alertText;
    [SerializeField] private Button loginButton;
    [SerializeField] private Button SignOut;
    [SerializeField] private TMP_InputField emailInputField;
    [SerializeField] private TMP_InputField passwordInputField;

    public void OnLoginClick()
    {
        alertText.text = "Signing in...";
        ActivateButtons(false);

        StartCoroutine(TryLogin());
    }
    public void onSignOut()
    {
        StartCoroutine(TryExit());
    }
    public void onForgetPasswd()
    {
        StartCoroutine(TryPassword());
    }

    private IEnumerator TryExit()
    {
        UnityWebRequest request = UnityWebRequest.Get(ExitEndpoint);
        var handler = request.SendWebRequest();

        float startTime = 0.0f;
        while (!handler.isDone)
        {
            startTime += Time.deltaTime;

            if (startTime > 10.0f)
            {
                break;
            }

            yield return null;
        }
        alertText.text = request.downloadHandler.text;
    }

    private IEnumerator TryLogin()
    {
        string email = emailInputField.text;
        string password = passwordInputField.text;

        WWWForm form1 = new WWWForm();
        form1.AddField("email", email);
        form1.AddField("password", password);
        //shortenedText = emailInputField.text.Substring(0, Math.Min(emailInputField.text.Length, 7));
        using (UnityWebRequest request = UnityWebRequest.Post(loginEndpoint, form1))
        {

            DownloadHandlerBuffer handler = new DownloadHandlerBuffer();
            request.downloadHandler = handler;
            yield return request.SendWebRequest();
            if ((request.result == UnityWebRequest.Result.Success))
            {
                // Request completed successfully
                string response = handler.text;
                Debug.Log(request.responseCode);
                Debug.Log("Response received: " + response);

                if (handler.isDone)
                {

                    alertText.text = "Welcome";

                    SceneManager.LoadScene("Multiplayer");

                }


            }
            else
            {

                Debug.Log("Request failed: " + request.error);
                alertText.text = "Wrong Login";

            }
            //Debug.Log("signed");
            //    alertText.text = "Welcome";
            //    SceneManager.LoadScene("StartGame");

            //    //ActivateButtons(false);

            //   

        }
    }

    private IEnumerator TryPassword()
    {
        string email = emailInputField.text;
        string jsonPayload = "{\"email\": \"" + email + "\"}";

        byte[] bodyRaw = new System.Text.UTF8Encoding().GetBytes(jsonPayload);

        using (UnityWebRequest request = UnityWebRequest.Put(ForgetPasswordEndpoint, bodyRaw))
        {
            //request.method = UnityWebRequest.kHttpVerbPUT;
            request.SetRequestHeader("Content-Type", "application/json");

            yield return request.SendWebRequest();

            if (request.result == UnityWebRequest.Result.Success)
            {
                alertText.text = "Check your mail";
                SceneManager.LoadScene("LoginScene");
            }


            //ActivateButtons(false);
        }

    }

    private void ActivateButtons(bool toggle)
    {
        loginButton.interactable = toggle;
        
    }
}
