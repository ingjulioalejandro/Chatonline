const form = document.querySelector(".typing-area"),
incoming_id = form.querySelector(".incoming_id").value,
inputField = form.querySelector(".input-field"),
sendBtn = form.querySelector(".send-message-btn"),
attachmentInput = form.querySelector("#attachment"),
chatBox = document.querySelector(".chat-box");

form.onsubmit = (e) => {
    e.preventDefault();
};

// Manejar cuando el campo de texto o el archivo se seleccionen
inputField.onkeyup = () => {
    if (inputField.value.trim() != "" || attachmentInput.files.length > 0) {
        sendBtn.classList.add("active");
    } else {
        sendBtn.classList.remove("active");
    }
};

// Manejar la apertura del input de archivos
form.querySelector(".attachment-label").onclick = () => {
    attachmentInput.click();
};

// Cuando se selecciona un archivo
attachmentInput.onchange = () => {
    if (attachmentInput.files.length > 0) {
        sendBtn.classList.add("active");
    }
};

// Enviar el mensaje o archivo al hacer clic en el botón de enviar
sendBtn.onclick = () => {
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/insert_group_message.php", true);
    let formData = new FormData(form); // Crear un objeto FormData para enviar texto y archivos
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                inputField.value = ""; // Limpiar el campo de texto
                attachmentInput.value = ""; // Limpiar el archivo adjunto
                sendBtn.classList.remove("active"); // Desactivar el botón
                scrollToBottom(); // Desplazar hacia abajo el chat
            }
        }
    };
    xhr.send(formData); // Enviar el formulario con texto y archivo
};

// Obtener mensajes del chat grupal
setInterval(() => {
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/get_group_chat.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onload = () => {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                chatBox.innerHTML = xhr.response;
                if (!chatBox.classList.contains("active")) {
                    scrollToBottom();
                }
            }
        }
    };
    xhr.send("room_id=" + incoming_id);
}, 500);

function scrollToBottom() {
    chatBox.scrollTop = chatBox.scrollHeight;
}

chatBox.onmouseenter = () => {
    chatBox.classList.add("active");
};

chatBox.onmouseleave = () => {
    chatBox.classList.remove("active");
};
