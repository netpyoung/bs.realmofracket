#lang racket

(require 2htdp/image 2htdp/universe)


(struct pit (snake goos) #:transparent)

(struct snake (dir segs) #:transparent)

(struct posn (x y) #:transparent)

(struct goo (loc expire) #:transparent)

(define snake-example
  (snake "up" (list (posn 1 1) (posn 1 2) (posn 1 3))))

(define goo-example
  (list (goo (posn 1 0) 3) (goo (posn 5 8) 15)))

(define pit-example
  (pit snake-example goo-example))

(define (start-snake)
  (big-bang (pit (snake "right" (list (posn 1 1)))
                 (list (fresh-goo)
                       (fresh-goo)
                       (fresh-goo)
                       (fresh-goo)
                       (fresh-goo)))
            (on-tick next-pit TICK-RATE)
            (on-key direct-snake)
            (to-draw render-pit)
            (stop-when dead? render-end)))

(define (can-eat snake goos)
  (cond [(empty? goos) #f]
        [else (if (close? (snake-head snake) (first goos))
                  (first goos)
                  (can-eat snake (rest gooes)))]))

(define (close? s g)
  (posn=? s (goo-loc g)))

(define (eat goos goo-to-eat)
  (cons (fresh-goo) (remove goo-to-eat goos)))

(define (grow sn)
  (snake (snake-dir sn)
         (cons (next-head sn) (snake-segs sn))))

(define w 1)
(define fresh-goo  1)
(define render-pit 1)
(define direct-snake 1)
(define dead? 1)
(define render-end 1)
(define next-pit 1)
(define TICK-RATE 1)