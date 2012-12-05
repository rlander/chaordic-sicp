
;;
;; 1.3

(defn my-sqr [n]
    (* n n))

(defn sum-of-sqrs [x y]
    (+ (my-sqr x) (my-sqr y)))

(defn one-three-basic [x y z] 
    (cond
        (and (<= x y) (<= x z)) (sum-of-sqrs y z)
        (and (<= y x) (<= y z)) (sum-of-sqrs x z)
        :else (sum-of-sqrs x y)))

;;
;; Shorter version

(defn one-three [x y z]
    (reduce + (map #(* %1 %1) (rest (sort [x y z])))))

