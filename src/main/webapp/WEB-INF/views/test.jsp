<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
search : <input type="text" id="dSearch">
<button onclick="search()">search</button>
<div id="rDiv"></div>
<script>
function search(){
   var dSearch = document.querySelector("#dSearch").value
   var query = 'query='+dSearch;
   var xhr = new XMLHttpRequest();
   xhr.open('GET','https://dapi.kakao.com/v2/search/vclip?sort=recency&size=10&'+query);
   xhr.setRequestHeader('Authorization','KakaoAK 1154e8db91fb2866edd2933ada6f60bc');
   xhr.onreadystatechange = function(){
      if(xhr.readyState==4){
         if(xhr.status==200){
            var res= JSON.parse(xhr.response);
            var html = '<ul>'; 
            for(var idx in res.documents){
               var data = res.documents[idx];
               html += '<img src='+data.thumbnail+ '>';
               html += '<li>' +data.title +'</li>';
            }
            html += '</ul>';
            document.querySelector('#rDiv').innerHTML = html;
         }
      }
   }
   xhr.send();
}
</script>
</body>
</html>