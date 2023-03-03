//: [Previous](@previous)
/*:
## STEP 01 _ Git push 오류
과제를 빠르게 제출해보고 싶어서 후다다닥 공부한 내용대로 해보는데 끊임없는 오류가 발생했다!
처음 하나를 해결하나 싶었더니 곧이어 여러개가 돌아가면서!

### 액서스 토큰 오류
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
일단 제일 처음 난 오류는 토큰과 관련된 것이었다. 나는 전에도 뭔가를 따라해본다고 git을 이것저것 만져본 적이 있는데 그때와 엑세스 토큰이 달라서 생긴 오류,, password인증 방식의 오류라고 했다. 개인 엑세스 토큰을 만들어서 해결했다.
 [액세스 토큰 오류 해결 참조 링크](https://hyeo-noo.tistory.com/184)

### 403오류
The requested URL returned error: 403 (fatal: unable to access)
그랬더니 이제는 403오류가 떴다. 찾아보니 push하면서 많이 생기는 오류라고 했다. push 주소에 접근 권한이 없어서 생기는 것이라고. 구글 검색을 통해 또 여러 블로그들의 내용을 따라해보았다.
[403 오류 해결 참조 링크](https://rrecoder.tistory.com/99)

### repository not found
git push ERROR: Repository not found
근데 또 뭔가 해결되나 싶더니 원격 저장소를 찾을 수가 없단다. 이것저것 해보다가 결국 계속해서 403과 repository not found가 반복되면서 나타나길래 조금 더 자세하게 찾아보니 이건 권한이 없어서 생기는 오류였다. 계정이 여러개인 경우에도 생긴다고. 옛날에 깃을 좀 만져보겠다고 하다가 이번에 캠프를 들어오면서 새롭게 만들었는데 그래서 문제가 생긴 것 같아 과거 키체인을 없애고 이번 계정으로 새로운 키체인을 만들었다. (그 과정에서 개인 액세스 토큰 암호 등록도 해서 매번 칠 필요 없게 함)
[not found 해결 참조 링크](https://lesstif.com/gitbook/git-push-error-repository-not-found-129008566.html%E3%85%87)

### again
근데 또 다시 git push ERROR: Repository not found!! 뭐지 싶어 step01을 천천히 읽어보는데 아주 중요한 사실을 깨달았다.. 처음에 마음이 급해서 fork를 건너뛰고 바로 code를;;;; 전부 없애고 새로운 폴더에 fork -> code를 복사해서 git clone 하니까 git push에 성공했다... 기나긴 여정.

### 결론: 기초를 잘 보자.
*/

//: [Next](@next)
