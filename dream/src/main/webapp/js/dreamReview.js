/**
* 후기게시판 글쓰기 폼체크
*/ 
function reviewWriteFormCheck(){
	let review_title, review_content;
	review_title = document.getElementById("review_title");
	review_content = document.getElementById("review_content");
	
	if(review_title.value ==""){
		alert("제목을 입력해주세요");
		review_title.focus();
		return false;
	}else if(checkStar("review_star") == 0){
		alert("별점을 선택해주세요");
		return false;
	}else if(review_content.value == ""){
		alert("내용을 입력해주세요");
		review_content.focus();
		return false;
	}else{
		
		reviewWriteForm.submit();
	}
}		
/**
* 글쓰기 별점 체크
*/ 
function checkStar(name){
	let count, result;
	count=0;
	result = document.getElementsByName(name);
	
	for(let i=0; i<result.length; i++){
		if(result[i].checked){
			count++;
		}
	}
	return count;
} 
/**
* 후기게시판-글 수정 폼체크
*/	
function reviewUpdateFormCheck(){
	let review_title, review_content;
	review_title = document.getElementById("review_title");
	review_content = document.getElementById("review_content");
	
	if(review_title.value ==""){
		alert("제목을 입력해주세요");
		review_title.focus();
		return false;
	}else if(checkStar("review_star") == 0){
		alert("별점을 선택해주세요");
		return false;
	}else if(review_content.value == ""){
		alert("내용을 입력해주세요");
		review_content.focus();
		return false;
	}else{
		reviewUpdateForm.submit();
	}
}
/**
* 후기게시판-글 삭제
*/
function reviewDelete() {
	if(confirm("정말로 삭제하시겠습니까?")){
		reviewDeleteForm.submit();
	}
}
/**
* 후기게시판-검색
*/
function searchCheck(){
	let searchText=document.getElementById("searchText");
		if(searchText.value == ""){
			alert("검색어를 입력해주세요");
			return false;
		}else{
			searchForm.submit();
		}
}
/**
* 후기게시판-비회원이 글쓰기 눌렀을 때 alert창 띄우기 
 */
function reviewWriteAlert(){
	alert("글쓰기는 회원만 가능합니다. 로그인페이지로 이동합니다.");
}
