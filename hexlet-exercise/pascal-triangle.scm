;; f(n) = n if n < 3, and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.
;; В файле pascal.rkt создайте процедуру, которая принимает координаты в виде пары чисел (строка и колонка)
;; и вычисляет элементы Треугольника Паскаля с помощью рекурсивного процесса. Например, число на третьей строке
;; и второй колонке – 2, так что вызов (pascal-triangle 3 2) должен возвращать 2.

;; My own:
(define (f n)
    (if (< n 3) n
        (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(define (pascal-triangle row element)
  (cond ((or (= element 1) (= element row)) 1)
        ((and (> element 1) (< element row))
              (+ (pascal-triangle (- row 1) (- element 1))
                 (pascal-triangle (- row 1) element)))))


;; Hexlet:
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(define (pascal-triangle row col)
  (cond ((> col row) 0)
    ((< col 0) 0)
      ((= col 1) 1)
        ((+ (pascal-triangle (- row 1) (- col 1))
          (pascal-triangle (- row 1) col)))))
