<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Start of UiPath Chatbot widget -->
    <script>
  window.addEventListener("message", function (event) {
      if (event.data.hasOwnProperty("frameSize")) {
          const size = event.data.frameSize;
          document.getElementById("uipath-chatbot-iframe").style.height = size.height;
          document.getElementById("uipath-chatbot-iframe").style.width = size.width;
      }
  });
</script>
<iframe src="https://chatbot.uipath.com/web-channel?connectionId=058b734c-abbb-4acb-b9d6-8976248ebae5"
  id="uipath-chatbot-iframe"
  style="
      z-index: 9999;
      position: fixed;
      bottom: 0;
      right: 0;
      height: 112px;
      width: 120px;
      border: 0;">
</iframe>
<!-- End of UiPath Chatbot widget -->
</body>
</html>