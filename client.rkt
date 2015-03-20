;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname client) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(require picturing-programs)
(require 2htdp/universe)

(define WIDTH 800)
(define HEIGHT 500)
(define BACKGROUND (rectangle WIDTH HEIGHT "solid" "white"))

; model is a list of characters
(define clist (list))

; animation will turn the characters into strings 
; will allow the user to see what he types

;HANDlERS

;DRAW HANDLER
; will display the characters as strings in the animation window
; goes through the entire list turning the characters into strings
;handle-draw: list(old model)
;          -> list(new model)
(define (handle-draw model)
  (cond [(empty? model) 
         (overlay
          (text "Nothing typed yet" 25 "black")
          BACKGROUND)]
        [else 
         (overlay 
          ; model -> string
          BACKGROUND)]))

;KEY HANDLER
; will add a pressed key to the list
;handle-key: list(old model)
;            key
;         -> list(new model)
(define (handle-key model key)