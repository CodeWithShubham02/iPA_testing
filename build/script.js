let recognition;
let isListening = false;

function startListening() {
  const status = document.getElementById("status");

  recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();
  recognition.lang = "en-IN";

  recognition.start();
  isListening = true;
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
  status.innerText = "Listening...";

  recognition.onresult = async function(event) {
    const text = event.results[0][0].transcript;
    status.innerText = "You: " + text;

    const response = await getAIResponse(text);

    speak(response);
    status.innerText = "AI: " + response;
  };

  recognition.onerror = function() {
    status.innerText = "Error occurred";
  };
}

function stopListening() {
  if (recognition && isListening) {
    recognition.stop();
    document.getElementById("status").innerText = "Stopped";
    isListening = false;
  }
}

async function getAIResponse(message) {
  const res = await fetch("https://api.openai.com/v1/chat/completions", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer YOUR_API_KEY"
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      messages: [{ role: "user", content: message }]
    })
  });

  const data = await res.json();
  return data.choices[0].message.content;
}

function speak(text) {
  const speech = new SpeechSynthesisUtterance(text);
  speech.lang = "en-IN";
  window.speechSynthesis.speak(speech);
}