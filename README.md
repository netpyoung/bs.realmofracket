bs.realmofracket
================

# geiser
http://www.nongnu.org/geiser/

# 환경설정.
참고 : https://github.com/mrBliss/dotfiles/blob/master/.emacs.d/custom-lisp.el

```lisp
(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
```

# 단축키.
- C-M-x : 평가식 실행
- C-c C-r : 파일 로드
- C-c C-d <Tab> : 심볼에 대한 메뉴얼 보기.


# (.4 Where Does Racket Come From?
* 1950s에 위대하신 John McCarthy님께서 Lisp 창시.
* 객채지향 프로그래밍이란 개념이 나오기 시작한 1972년, Guy Steele과 Gerry Sussman 두 프로그래머도 이 개념을 연구하기 시작함.
* 새로운 언어를 프로토타이핑하기 위한 노력으로, Lisp를 차용하여, Scheme이란 언어를 만듬.
* 그후, 여러곳으로 뿌려졌고, Indiana University에 있는 Dan Friedman과 Mitch Wand는 그들이 연구한 것을 모아 Scheme84를 만듬.
* 또, Paul Hudak이 이끄는 Yale 연구팀이, T를 만듬.

* 이러한 Scheme 구현체들이, 텍사스 휴스턴 Rice University(밥대?)에서 하나로 합쳐짐.
 - 맴버 : Matthias Felleisen, Robby Findler, Matthew Flatt, Shriram Krishnamurthi
 - 하고자 했던것 : 중고딩들에게 수학(arithmetic, algebra)을 이용한 컴퓨터 게임을 보다 쉽게 작성할 수 있으면 해서...
 - 기능 추가: structures, a class system, exceptions, fancy loops, modules, custodians, eventspaces, libraries (for building GUI), etc ...
 - 새로운 이름을 붙여줌 : Racket.

# CHAD
* 이 책의 주인공
* 대학 1학년 학생으로, 미래에 대한 확신이 없음.
* "프로그래밍을 즐겁게 할 방법은 없을까?"를 고민하기 시작함.
* 인터넷에서 Racket이란 언어를 발견하고, 프로그램을 다운받는데....

# 느낀점.
- 대충 훝어봤는데 그림이 적어 살작 불안했으나, 읽다보니 적제적소에 깨알같이 자리잡고 있었다..

# Links.
- 책 사이트 : http://realmofracket.com
- 소스 : https://github.com/plt/racket/tree/master/pkgs/realm
- 소스는 DrRacket설치하면 로컬에서도 확인가능(ex) )`C:\Program Files\Racket\collects\realm`)