function post (){ 
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    const form = document.getElementById("chat");
    const formData = new FormData(form);
    const XHR = new XMLHttpRequest();
    const url = location.pathname
    XHR.open("POST",url, true );
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      };
      const list = document.getElementById("list");
      const formText = document.getElementById("form-input");
        const message = XHR.response.post;
        const html =`
        <div class="upper-message">
          <div class="message-user">        
          ${message.user.nickname}
          </div>
          <div class="message-date">
          ${message.created_at}
          </div>
        </div>
        <div class="lower-message">
          <div class="message-content">
          ${message.content}
          </div>
        </div>`;
      list.insertAdjacentHTML("afterend", html);
      formText.value = "";
    };
  });
};

window.addEventListener('load', post);