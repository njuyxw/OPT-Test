import Mathlib
import Convex


open Set Real

open Set Real PNat

theorem extracted_0 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  f (Nesterov_first.x f h f' x0 (k + 1)) + h (Nesterov_first.x f h f' x0 (k + 1)) - f xm - h xm ≤
    Nesterov_first.γ f h f' x0 k ^ 2 / (2 * Nesterov_first.t f h f' x0 k) * ‖x0 - xm‖ ^ 2 := sorry


theorem extracted_1 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
      Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
    SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)) := sorry


theorem extracted_2 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (z : E) (k : ℕ) :
  Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
      ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
        z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
    Nesterov_first.t f h f' x0 k * h z := sorry


theorem extracted_3 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (z : E) (k : ℕ) :
  h (Nesterov_first.x f h f' x0 (k + 1)) ≤
    h z +
      ⟪f' (Nesterov_first.y f h f' x0 k) +
          (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
        z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ := sorry


theorem extracted_4 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (z : E) (k : ℕ) :
  h (Nesterov_first.x f h f' x0 (k + 1)) =
    1 / Nesterov_first.t f h f' x0 k *
      (Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ -
        ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
            Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
          z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ) := sorry


theorem extracted_5 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (z : E) (k : ℕ) :
  1 / Nesterov_first.t f h f' x0 k *
      (Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ -
        ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
            Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
          z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ) ≤
    1 / Nesterov_first.t f h f' x0 k *
      (Nesterov_first.t f h f' x0 k * h z -
        ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
            Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
          z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ) := sorry


theorem extracted_6 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (z : E) (k : ℕ) :
  1 / Nesterov_first.t f h f' x0 k *
      (Nesterov_first.t f h f' x0 k * h z -
        ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
            Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
          z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ) =
    h z +
      ⟪f' (Nesterov_first.y f h f' x0 k) +
          (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
        z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ := sorry


theorem extracted_7 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (k : ℕ) (x y : E) : f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2 := sorry


theorem extracted_8 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (x y : E) : f x ≤ f y + ⟪f' y, x - y⟫_ℝ + ↑(Nesterov_first.l f h f' x0) / 2 * ‖x - y‖ ^ 2 := sorry


theorem extracted_9 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (k : ℕ) (x y : E) :
  f y + ⟪f' y, x - y⟫_ℝ + ↑(Nesterov_first.l f h f' x0) / 2 * ‖x - y‖ ^ 2 ≤
    f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2 := sorry


theorem extracted_10 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  ∀ (z : E) (k : ℕ),
    φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
      φ z +
          1 / Nesterov_first.t f h f' x0 k *
            ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
              z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
        1 / (2 * Nesterov_first.t f h f' x0 k) *
          ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 := sorry


theorem extracted_11 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  ∀ (k : ℕ),
    φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
      f (Nesterov_first.y f h f' x0 k) +
            ⟪f' (Nesterov_first.y f h f' x0 k), Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 +
        h (Nesterov_first.x f h f' x0 (k + 1)) := sorry


theorem extracted_12 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2)
  (z : E) (k : ℕ) :
  f (Nesterov_first.y f h f' x0 k) +
          ⟪f' (Nesterov_first.y f h f' x0 k), Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k⟫_ℝ +
        1 / (2 * Nesterov_first.t f h f' x0 k) *
          ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 +
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
    f (Nesterov_first.y f h f' x0 k) +
            ⟪f' (Nesterov_first.y f h f' x0 k), Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 +
        h z +
      ⟪f' (Nesterov_first.y f h f' x0 k) +
          (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
        z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ := sorry


theorem extracted_13 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2)
  (z : E) (k : ℕ) :
  f (Nesterov_first.y f h f' x0 k) +
            ⟪f' (Nesterov_first.y f h f' x0 k), Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 +
        h z +
      ⟪f' (Nesterov_first.y f h f' x0 k) +
          (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
        z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ =
    f (Nesterov_first.y f h f' x0 k) + ⟪f' (Nesterov_first.y f h f' x0 k), z - Nesterov_first.y f h f' x0 k⟫_ℝ +
          1 / Nesterov_first.t f h f' x0 k *
            ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
              z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
        1 / (2 * Nesterov_first.t f h f' x0 k) *
          ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 +
      h z := sorry


theorem extracted_14 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  ∀ (z : E) (k : ℕ),
    f (Nesterov_first.y f h f' x0 k) + ⟪f' (Nesterov_first.y f h f' x0 k), z - Nesterov_first.y f h f' x0 k⟫_ℝ +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 +
        h z ≤
      φ z +
          1 / Nesterov_first.t f h f' x0 k *
            ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
              z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
        1 / (2 * Nesterov_first.t f h f' x0 k) *
          ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 := sorry


theorem extracted_15 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    ∀ (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
          (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
        1 / Nesterov_first.t f h f' x0 k *
            ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
              (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 := sorry


theorem extracted_16 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    ∀ (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ (Nesterov_first.x f h f' x0 k) +
            (1 / Nesterov_first.t f h f' x0 k) •
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 := sorry


theorem extracted_17 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    ∀ (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
          φ (Nesterov_first.x f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) •
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
        φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
          φ xm +
              (1 / Nesterov_first.t f h f' x0 k) •
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 := sorry


theorem extracted_18 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    ∀ (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) - φ (Nesterov_first.x f h f' x0 k) ≤
          (1 / Nesterov_first.t f h f' x0 k) •
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm ≤
            (1 / Nesterov_first.t f h f' x0 k) •
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
          φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
              (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) =
            Nesterov_first.γ f h f' x0 k * (φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm) +
              (1 - Nesterov_first.γ f h f' x0 k) *
                (φ (Nesterov_first.x f h f' x0 (k + 1)) - φ (Nesterov_first.x f h f' x0 k)) := sorry


theorem extracted_19 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    ∀ (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) - φ (Nesterov_first.x f h f' x0 k) ≤
          (1 / Nesterov_first.t f h f' x0 k) •
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm ≤
            (1 / Nesterov_first.t f h f' x0 k) •
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
          Nesterov_first.γ f h f' x0 k * (φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm) +
              (1 - Nesterov_first.γ f h f' x0 k) *
                (φ (Nesterov_first.x f h f' x0 (k + 1)) - φ (Nesterov_first.x f h f' x0 k)) ≤
            Nesterov_first.γ f h f' x0 k *
                ((1 / Nesterov_first.t f h f' x0 k) •
                    ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                      xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                  1 / (2 * Nesterov_first.t f h f' x0 k) *
                    ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) +
              (1 - Nesterov_first.γ f h f' x0 k) *
                ((1 / Nesterov_first.t f h f' x0 k) •
                    ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                      Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                  1 / (2 * Nesterov_first.t f h f' x0 k) *
                    ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) := sorry


theorem extracted_20 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    ∀ (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) - φ (Nesterov_first.x f h f' x0 k) ≤
          (1 / Nesterov_first.t f h f' x0 k) •
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm ≤
            (1 / Nesterov_first.t f h f' x0 k) •
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
          Nesterov_first.γ f h f' x0 k *
                ((1 / Nesterov_first.t f h f' x0 k) •
                    ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                      xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                  1 / (2 * Nesterov_first.t f h f' x0 k) *
                    ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) +
              (1 - Nesterov_first.γ f h f' x0 k) *
                ((1 / Nesterov_first.t f h f' x0 k) •
                    ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                      Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                  1 / (2 * Nesterov_first.t f h f' x0 k) *
                    ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) =
            Nesterov_first.γ f h f' x0 k * (1 / Nesterov_first.t f h f' x0 k) *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                (1 - Nesterov_first.γ f h f' x0 k) * (1 / Nesterov_first.t f h f' x0 k) *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 := sorry


theorem extracted_21 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    ∀ (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) - φ (Nesterov_first.x f h f' x0 k) ≤
          (1 / Nesterov_first.t f h f' x0 k) •
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm ≤
            (1 / Nesterov_first.t f h f' x0 k) •
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 →
          Nesterov_first.γ f h f' x0 k * (1 / Nesterov_first.t f h f' x0 k) *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    xm - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                (1 - Nesterov_first.γ f h f' x0 k) * (1 / Nesterov_first.t f h f' x0 k) *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    Nesterov_first.x f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
            1 / Nesterov_first.t f h f' x0 k *
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                      Nesterov_first.γ f h f' x0 k • xm -
                    Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 := sorry


theorem extracted_22 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      ∀ (k : ℕ+),
        Nesterov_first.y f h f' x0 ↑k =
          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k +
            Nesterov_first.γ f h f' x0 ↑k • v k := sorry


theorem extracted_23 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      ∀ (k : ℕ+),
        ((1 - Nesterov_first.γ f h f' x0 (↑k - 1)) / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1)) =
          Nesterov_first.x f h f' x0 (↑k - 1) +
              (Nesterov_first.γ f h f' x0 (↑k - 1))⁻¹ •
                (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1)) -
            Nesterov_first.x f h f' x0 ↑k := sorry


theorem extracted_24 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        ∀ (k : ℕ),
          1 / Nesterov_first.t f h f' x0 k *
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                      Nesterov_first.γ f h f' x0 k • xm -
                    Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2 -
                ‖Nesterov_first.x f h f' x0 (k + 1) -
                        (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2) := sorry


theorem extracted_25 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        ∀ (k : ℕ) (a b : E),
          1 / Nesterov_first.t f h f' x0 k * ⟪a - b, -a⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖a - b‖ ^ 2 =
            1 / (2 * Nesterov_first.t f h f' x0 k) * (‖b‖ ^ 2 - ‖a‖ ^ 2) := sorry


theorem extracted_26 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        ∀ (k : ℕ), 0 < 2 * Nesterov_first.t f h f' x0 k := sorry


theorem extracted_27 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        ∀ (k : ℕ), 0 < 2 * Nesterov_first.t f h f' x0 k → 2 * Nesterov_first.t f h f' x0 k ≠ 0 := sorry


theorem extracted_28 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        ∀ (k : ℕ),
          0 < 2 * Nesterov_first.t f h f' x0 k →
            2 * Nesterov_first.t f h f' x0 k ≠ 0 → Nesterov_first.t f h f' x0 k ≠ 0 := sorry


theorem extracted_29 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        ∀ (k : ℕ),
          (∀ (a b : E),
              1 / Nesterov_first.t f h f' x0 k * ⟪a - b, -a⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖a - b‖ ^ 2 =
                1 / (2 * Nesterov_first.t f h f' x0 k) * (‖b‖ ^ 2 - ‖a‖ ^ 2)) →
            let a :=
              Nesterov_first.x f h f' x0 (k + 1) - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                Nesterov_first.γ f h f' x0 k • xm;
            let b :=
              Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                Nesterov_first.γ f h f' x0 k • xm;
            Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k = a - b := sorry


theorem extracted_30 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        ∀ (k : ℕ),
          (∀ (a b : E),
              1 / Nesterov_first.t f h f' x0 k * ⟪a - b, -a⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖a - b‖ ^ 2 =
                1 / (2 * Nesterov_first.t f h f' x0 k) * (‖b‖ ^ 2 - ‖a‖ ^ 2)) →
            let a :=
              Nesterov_first.x f h f' x0 (k + 1) - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                Nesterov_first.γ f h f' x0 k • xm;
            let b :=
              Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                Nesterov_first.γ f h f' x0 k • xm;
            Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k = a - b →
              (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1) =
                -a := sorry


theorem extracted_31 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          ∀ (k : ℕ+),
            φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
              Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2) := sorry


theorem extracted_32 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    let v := fun k =>
      Nesterov_first.x f h f' x0 (↑k - 1) +
        (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
          (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
    (∀ (k : ℕ+),
        Nesterov_first.y f h f' x0 ↑k =
          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
      (∀ (k : ℕ),
          1 / Nesterov_first.t f h f' x0 k *
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                      Nesterov_first.γ f h f' x0 k • xm -
                    Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2 -
                ‖Nesterov_first.x f h f' x0 (k + 1) -
                        (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2)) →
        ∀ (k : ℕ+),
          φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
              1 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖Nesterov_first.y f h f' x0 ↑k - (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k -
                        Nesterov_first.γ f h f' x0 ↑k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (↑k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k -
                        Nesterov_first.γ f h f' x0 ↑k • xm‖ ^
                    2) →
            1 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖Nesterov_first.y f h f' x0 ↑k - (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k -
                        Nesterov_first.γ f h f' x0 ↑k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (↑k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k -
                        Nesterov_first.γ f h f' x0 ↑k • xm‖ ^
                    2) =
              Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2) := sorry


theorem extracted_33 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    let v := fun k =>
      Nesterov_first.x f h f' x0 (↑k - 1) +
        (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
          (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
    (∀ (k : ℕ+),
        Nesterov_first.y f h f' x0 ↑k =
          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
      (∀ (k : ℕ),
          1 / Nesterov_first.t f h f' x0 k *
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                      Nesterov_first.γ f h f' x0 k • xm -
                    Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2 -
                ‖Nesterov_first.x f h f' x0 (k + 1) -
                        (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2)) →
        ∀ (k : ℕ+),
          φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
              1 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖Nesterov_first.y f h f' x0 ↑k - (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k -
                        Nesterov_first.γ f h f' x0 ↑k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (↑k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k -
                        Nesterov_first.γ f h f' x0 ↑k • xm‖ ^
                    2) →
            1 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                ‖Nesterov_first.x f h f' x0 (↑k + 1) -
                        (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k -
                      Nesterov_first.γ f h f' x0 ↑k • xm‖ ^
                  2 =
              Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) * ‖v (k + 1) - xm‖ ^ 2 := sorry


theorem extracted_34 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            ∀ (n : ℕ), 0 < α n := sorry


theorem extracted_35 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) → ∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1) := sorry


theorem extracted_36 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                ∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1 := sorry


theorem extracted_37 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  ∀ (n : ℕ+),
                    α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                      α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2 := sorry


theorem extracted_38 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  ∀ (n : ℕ+),
                    α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 =
                      α ↑n *
                          (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm -
                              (1 - Nesterov_first.γ f h f' x0 ↑n) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) +
                            (1 - Nesterov_first.γ f h f' x0 ↑n) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm)) +
                        ‖v (n + 1) - xm‖ ^ 2 := sorry


theorem extracted_39 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  ∀ (n : ℕ+),
                    α ↑n *
                          (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm -
                              (1 - Nesterov_first.γ f h f' x0 ↑n) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) +
                            (1 - Nesterov_first.γ f h f' x0 ↑n) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm)) +
                        ‖v (n + 1) - xm‖ ^ 2 ≤
                      α ↑n *
                            (Nesterov_first.γ f h f' x0 ↑n ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑n) *
                              (‖v n - xm‖ ^ 2 - ‖v (n + 1) - xm‖ ^ 2)) +
                          α ↑n * ((1 - Nesterov_first.γ f h f' x0 ↑n) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm)) +
                        ‖v (n + 1) - xm‖ ^ 2 := sorry


theorem extracted_40 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  ∀ (n : ℕ+),
                    α ↑n *
                            (Nesterov_first.γ f h f' x0 ↑n ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑n) *
                              (‖v n - xm‖ ^ 2 - ‖v (n + 1) - xm‖ ^ 2)) +
                          α ↑n * ((1 - Nesterov_first.γ f h f' x0 ↑n) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm)) +
                        ‖v (n + 1) - xm‖ ^ 2 =
                      ‖v n - xm‖ ^ 2 - ‖v (n + 1) - xm‖ ^ 2 +
                          α ↑n * ((1 - Nesterov_first.γ f h f' x0 ↑n) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm)) +
                        ‖v (n + 1) - xm‖ ^ 2 := sorry


theorem extracted_41 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  ∀ (n : ℕ+),
                    ‖v n - xm‖ ^ 2 - ‖v (n + 1) - xm‖ ^ 2 +
                          α ↑n * ((1 - Nesterov_first.γ f h f' x0 ↑n) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm)) +
                        ‖v (n + 1) - xm‖ ^ 2 ≤
                      ‖v n - xm‖ ^ 2 - ‖v (n + 1) - xm‖ ^ 2 + α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) +
                        ‖v (n + 1) - xm‖ ^ 2 := sorry


theorem extracted_42 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  ∀ (n : ℕ+),
                    ‖v n - xm‖ ^ 2 - ‖v (n + 1) - xm‖ ^ 2 + α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) +
                        ‖v (n + 1) - xm‖ ^ 2 =
                      α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2 := sorry


theorem extracted_43 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  (∀ (n : ℕ+),
                      α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                        α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                    let nr := fun n =>
                      α n * (φ (Nesterov_first.x f h f' x0 (n + 1)) - φ xm) + ‖v (n + 1).toPNat' - xm‖ ^ 2;
                    ∀ (n : ℕ+), nr ↑n - nr (↑n - 1) ≤ 0 := sorry


theorem extracted_44 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  (∀ (n : ℕ+),
                      α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                        α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                    let nr := fun n =>
                      α n * (φ (Nesterov_first.x f h f' x0 (n + 1)) - φ xm) + ‖v (n + 1).toPNat' - xm‖ ^ 2;
                    (∀ (n : ℕ+), nr ↑n - nr (↑n - 1) ≤ 0) → ∀ (k : ℕ), nr k - nr 0 ≤ 0 := sorry


theorem extracted_45 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  (∀ (n : ℕ+),
                      α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                        α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                    let nr := fun n =>
                      α n * (φ (Nesterov_first.x f h f' x0 (n + 1)) - φ xm) + ‖v (n + 1).toPNat' - xm‖ ^ 2;
                    (∀ (n : ℕ+), nr ↑n - nr (↑n - 1) ≤ 0) →
                      ∀ (k : ℕ),
                        nr k ≤ nr 0 →
                          f (Nesterov_first.x f h f' x0 (k + 1)) + h (Nesterov_first.x f h f' x0 (k + 1)) - f xm -
                              h xm =
                            Nesterov_first.γ f h f' x0 k ^ 2 / (2 * Nesterov_first.t f h f' x0 k) *
                              (α k * (φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm)) := sorry


theorem extracted_46 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  (∀ (n : ℕ+),
                      α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                        α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                    let nr := fun n =>
                      α n * (φ (Nesterov_first.x f h f' x0 (n + 1)) - φ xm) + ‖v (n + 1).toPNat' - xm‖ ^ 2;
                    (∀ (n : ℕ+), nr ↑n - nr (↑n - 1) ≤ 0) →
                      ∀ (k : ℕ),
                        nr k ≤ nr 0 →
                          Nesterov_first.γ f h f' x0 k ^ 2 / (2 * Nesterov_first.t f h f' x0 k) *
                              (α k * (φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm)) ≤
                            Nesterov_first.γ f h f' x0 k ^ 2 / (2 * Nesterov_first.t f h f' x0 k) * nr k := sorry


theorem extracted_47 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  (∀ (n : ℕ+),
                      α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                        α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                    let nr := fun n =>
                      α n * (φ (Nesterov_first.x f h f' x0 (n + 1)) - φ xm) + ‖v (n + 1).toPNat' - xm‖ ^ 2;
                    (∀ (n : ℕ+), nr ↑n - nr (↑n - 1) ≤ 0) →
                      ∀ (k : ℕ),
                        nr k ≤ nr 0 →
                          Nesterov_first.γ f h f' x0 k ^ 2 / (2 * Nesterov_first.t f h f' x0 k) * nr k ≤
                            Nesterov_first.γ f h f' x0 k ^ 2 / (2 * Nesterov_first.t f h f' x0 k) * nr 0 := sorry


theorem extracted_48 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    (∀ (k : ℕ),
        φ (Nesterov_first.x f h f' x0 (k + 1)) - φ xm -
            (1 - Nesterov_first.γ f h f' x0 k) * (φ (Nesterov_first.x f h f' x0 k) - φ xm) ≤
          1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k + Nesterov_first.γ f h f' x0 k • xm -
                  Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
      let v := fun k =>
        Nesterov_first.x f h f' x0 (↑k - 1) +
          (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
            (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
      (∀ (k : ℕ+),
          Nesterov_first.y f h f' x0 ↑k =
            (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
        (∀ (k : ℕ),
            1 / Nesterov_first.t f h f' x0 k *
                  ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                    (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                        Nesterov_first.γ f h f' x0 k • xm -
                      Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
                1 / (2 * Nesterov_first.t f h f' x0 k) *
                  ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2 -
                  ‖Nesterov_first.x f h f' x0 (k + 1) -
                          (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                        Nesterov_first.γ f h f' x0 k • xm‖ ^
                    2)) →
          (∀ (k : ℕ+),
              φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                  (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
                Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                  (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
            let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
            (∀ (n : ℕ), 0 < α n) →
              (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
                (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                  (∀ (n : ℕ+),
                      α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                        α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                    let nr := fun n =>
                      α n * (φ (Nesterov_first.x f h f' x0 (n + 1)) - φ xm) + ‖v (n + 1).toPNat' - xm‖ ^ 2;
                    (∀ (n : ℕ+), nr ↑n - nr (↑n - 1) ≤ 0) →
                      ∀ (k : ℕ),
                        nr k ≤ nr 0 →
                          Nesterov_first.γ f h f' x0 k ^ 2 / (2 * Nesterov_first.t f h f' x0 k) * nr 0 ≤
                            Nesterov_first.γ f h f' x0 k ^ 2 / (2 * Nesterov_first.t f h f' x0 k) *
                              ‖x0 - xm‖ ^ 2 := sorry


theorem extracted_49 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    let v := fun k =>
      Nesterov_first.x f h f' x0 (↑k - 1) +
        (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
          (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
    (∀ (k : ℕ+),
        Nesterov_first.y f h f' x0 ↑k =
          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
      (∀ (k : ℕ),
          1 / Nesterov_first.t f h f' x0 k *
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                      Nesterov_first.γ f h f' x0 k • xm -
                    Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2 -
                ‖Nesterov_first.x f h f' x0 (k + 1) -
                        (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2)) →
        (∀ (k : ℕ+),
            φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
              Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
          let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
          (∀ (n : ℕ), 0 < α n) →
            (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
              (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                (∀ (n : ℕ+),
                    α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                      α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                  φ (Nesterov_first.x f h f' x0 1) ≤
                      (Nesterov_first.t f h f' x0 0)⁻¹ *
                            ⟪Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0,
                              xm - Nesterov_first.x f h f' x0 1⟫_ℝ +
                          (Nesterov_first.t f h f' x0 0)⁻¹ * 2⁻¹ *
                            ‖Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0‖ ^ 2 +
                        φ xm →
                    2 * Nesterov_first.t f h f' x0 0 * (φ (Nesterov_first.x f h f' x0 1) - φ xm) +
                        ‖Nesterov_first.x f h f' x0 1 - xm‖ ^ 2 ≤
                      2 * Nesterov_first.t f h f' x0 0 *
                          ((Nesterov_first.t f h f' x0 0)⁻¹ *
                                  ⟪Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0,
                                    xm - Nesterov_first.x f h f' x0 1⟫_ℝ +
                                (Nesterov_first.t f h f' x0 0)⁻¹ * 2⁻¹ *
                                  ‖Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0‖ ^ 2 +
                              φ xm -
                            φ xm) +
                        ‖Nesterov_first.x f h f' x0 1 - xm‖ ^ 2 := sorry


theorem extracted_50 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    let v := fun k =>
      Nesterov_first.x f h f' x0 (↑k - 1) +
        (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
          (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
    (∀ (k : ℕ+),
        Nesterov_first.y f h f' x0 ↑k =
          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
      (∀ (k : ℕ),
          1 / Nesterov_first.t f h f' x0 k *
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                      Nesterov_first.γ f h f' x0 k • xm -
                    Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2 -
                ‖Nesterov_first.x f h f' x0 (k + 1) -
                        (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2)) →
        (∀ (k : ℕ+),
            φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
              Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
          let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
          (∀ (n : ℕ), 0 < α n) →
            (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
              (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                (∀ (n : ℕ+),
                    α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                      α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                  φ (Nesterov_first.x f h f' x0 1) ≤
                      (Nesterov_first.t f h f' x0 0)⁻¹ *
                            ⟪Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0,
                              xm - Nesterov_first.x f h f' x0 1⟫_ℝ +
                          (Nesterov_first.t f h f' x0 0)⁻¹ * 2⁻¹ *
                            ‖Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0‖ ^ 2 +
                        φ xm →
                    2 * Nesterov_first.t f h f' x0 0 *
                          ((Nesterov_first.t f h f' x0 0)⁻¹ *
                                  ⟪Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0,
                                    xm - Nesterov_first.x f h f' x0 1⟫_ℝ +
                                (Nesterov_first.t f h f' x0 0)⁻¹ * 2⁻¹ *
                                  ‖Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0‖ ^ 2 +
                              φ xm -
                            φ xm) +
                        ‖Nesterov_first.x f h f' x0 1 - xm‖ ^ 2 =
                      ‖Nesterov_first.x f h f' x0 0 - xm‖ ^ 2 := sorry


theorem extracted_51 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    let v := fun k =>
      Nesterov_first.x f h f' x0 (↑k - 1) +
        (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
          (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
    (∀ (k : ℕ+),
        Nesterov_first.y f h f' x0 ↑k =
          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
      (∀ (k : ℕ),
          1 / Nesterov_first.t f h f' x0 k *
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                      Nesterov_first.γ f h f' x0 k • xm -
                    Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2 -
                ‖Nesterov_first.x f h f' x0 (k + 1) -
                        (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2)) →
        (∀ (k : ℕ+),
            φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
              Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
          let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
          (∀ (n : ℕ), 0 < α n) →
            (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
              (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                (∀ (n : ℕ+),
                    α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                      α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                  φ (Nesterov_first.x f h f' x0 1) ≤
                      (Nesterov_first.t f h f' x0 0)⁻¹ *
                            ⟪Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0,
                              xm - Nesterov_first.x f h f' x0 1⟫_ℝ +
                          (Nesterov_first.t f h f' x0 0)⁻¹ * 2⁻¹ *
                            ‖Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0‖ ^ 2 +
                        φ xm →
                    Nesterov_first.t f h f' x0 0 ≠ 0 := sorry


theorem extracted_52 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm)
  (h1 :
    ∀ (k : ℕ),
      Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
          Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k) ∈
        SubderivAt (Nesterov_first.t f h f' x0 k • h) (Nesterov_first.x f h f' x0 (k + 1)))
  (hieq1 :
    ∀ (z : E) (k : ℕ),
      Nesterov_first.t f h f' x0 k * h (Nesterov_first.x f h f' x0 (k + 1)) +
          ⟪Nesterov_first.y f h f' x0 k - Nesterov_first.x f h f' x0 (k + 1) -
              Nesterov_first.t f h f' x0 k • f' (Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ ≤
        Nesterov_first.t f h f' x0 k * h z)
  (hieq2 :
    ∀ (z : E) (k : ℕ),
      h (Nesterov_first.x f h f' x0 (k + 1)) ≤
        h z +
          ⟪f' (Nesterov_first.y f h f' x0 k) +
              (1 / Nesterov_first.t f h f' x0 k) • (Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k),
            z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ)
  (fieq1 : ∀ (k : ℕ) (x y : E), f x ≤ f y + ⟪f' y, x - y⟫_ℝ + 1 / (2 * Nesterov_first.t f h f' x0 k) * ‖x - y‖ ^ 2) :
  let φ := fun z => f z + h z;
  (∀ (z : E) (k : ℕ),
      φ (Nesterov_first.x f h f' x0 (k + 1)) ≤
        φ z +
            1 / Nesterov_first.t f h f' x0 k *
              ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                z - Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
          1 / (2 * Nesterov_first.t f h f' x0 k) *
            ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2) →
    let v := fun k =>
      Nesterov_first.x f h f' x0 (↑k - 1) +
        (1 / Nesterov_first.γ f h f' x0 (↑k - 1)) •
          (Nesterov_first.x f h f' x0 ↑k - Nesterov_first.x f h f' x0 (↑k - 1));
    (∀ (k : ℕ+),
        Nesterov_first.y f h f' x0 ↑k =
          (1 - Nesterov_first.γ f h f' x0 ↑k) • Nesterov_first.x f h f' x0 ↑k + Nesterov_first.γ f h f' x0 ↑k • v k) →
      (∀ (k : ℕ),
          1 / Nesterov_first.t f h f' x0 k *
                ⟪Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k,
                  (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k +
                      Nesterov_first.γ f h f' x0 k • xm -
                    Nesterov_first.x f h f' x0 (k + 1)⟫_ℝ +
              1 / (2 * Nesterov_first.t f h f' x0 k) *
                ‖Nesterov_first.x f h f' x0 (k + 1) - Nesterov_first.y f h f' x0 k‖ ^ 2 =
            1 / (2 * Nesterov_first.t f h f' x0 k) *
              (‖Nesterov_first.y f h f' x0 k - (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2 -
                ‖Nesterov_first.x f h f' x0 (k + 1) -
                        (1 - Nesterov_first.γ f h f' x0 k) • Nesterov_first.x f h f' x0 k -
                      Nesterov_first.γ f h f' x0 k • xm‖ ^
                  2)) →
        (∀ (k : ℕ+),
            φ (Nesterov_first.x f h f' x0 (↑k + 1)) - φ xm -
                (1 - Nesterov_first.γ f h f' x0 ↑k) * (φ (Nesterov_first.x f h f' x0 ↑k) - φ xm) ≤
              Nesterov_first.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_first.t f h f' x0 ↑k) *
                (‖v k - xm‖ ^ 2 - ‖v (k + 1) - xm‖ ^ 2)) →
          let α := fun k => 2 * Nesterov_first.t f h f' x0 k / Nesterov_first.γ f h f' x0 k ^ 2;
          (∀ (n : ℕ), 0 < α n) →
            (∀ (n : ℕ+), (1 - Nesterov_first.γ f h f' x0 ↑n) * α ↑n ≤ α (↑n - 1)) →
              (∀ (n : ℕ), α n * (Nesterov_first.γ f h f' x0 n ^ 2 / (2 * Nesterov_first.t f h f' x0 n)) = 1) →
                (∀ (n : ℕ+),
                    α ↑n * (φ (Nesterov_first.x f h f' x0 (↑n + 1)) - φ xm) + ‖v (n + 1) - xm‖ ^ 2 ≤
                      α (↑n - 1) * (φ (Nesterov_first.x f h f' x0 ↑n) - φ xm) + ‖v n - xm‖ ^ 2) →
                  φ (Nesterov_first.x f h f' x0 1) ≤
                      (Nesterov_first.t f h f' x0 0)⁻¹ *
                            ⟪Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0,
                              xm - Nesterov_first.x f h f' x0 1⟫_ℝ +
                          (Nesterov_first.t f h f' x0 0)⁻¹ * 2⁻¹ *
                            ‖Nesterov_first.x f h f' x0 1 - Nesterov_first.y f h f' x0 0‖ ^ 2 +
                        φ xm →
                    Nesterov_first.t f h f' x0 0 ≠ 0 →
                      Nesterov_first.t f h f' x0 0 * (Nesterov_first.t f h f' x0 0)⁻¹ = 1 := sorry


theorem extracted_53 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_first_fix_stepsize f h f' x0] : Nesterov_first_fix_stepsize.γ f h f' x0 0 = 1 := sorry


theorem extracted_54 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_first_fix_stepsize f h f' x0] (n : ℕ+) :
  (1 - Nesterov_first_fix_stepsize.γ f h f' x0 ↑n) * Nesterov_first_fix_stepsize.t f h f' x0 ↑n /
      Nesterov_first_fix_stepsize.γ f h f' x0 ↑n ^ 2 ≤
    Nesterov_first_fix_stepsize.t f h f' x0 (↑n - 1) / Nesterov_first_fix_stepsize.γ f h f' x0 (↑n - 1) ^ 2 := sorry


theorem extracted_55 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_first_fix_stepsize f h f' x0] (k : ℕ) :
  0 < Nesterov_first_fix_stepsize.t f h f' x0 k ∧
    Nesterov_first_fix_stepsize.t f h f' x0 k ≤ 1 / ↑(Nesterov_first_fix_stepsize.l f h f' x0) := sorry


theorem extracted_56 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_first_fix_stepsize f h f' x0] (n : ℕ) :
  0 < Nesterov_first_fix_stepsize.γ f h f' x0 n ∧ Nesterov_first_fix_stepsize.γ f h f' x0 n ≤ 1 := sorry


theorem extracted_57 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first_fix_stepsize f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  f (Nesterov_first_fix_stepsize.x f h f' x0 (k + 1)) + h (Nesterov_first_fix_stepsize.x f h f' x0 (k + 1)) - f xm -
      h xm ≤
    2 * ↑(Nesterov_first_fix_stepsize.l f h f' x0) / (↑k + 2) ^ 2 * ‖x0 - xm‖ ^ 2 := sorry


theorem extracted_58 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first_fix_stepsize f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  f (Nesterov_first_fix_stepsize.x f h f' x0 (k + 1)) + h (Nesterov_first_fix_stepsize.x f h f' x0 (k + 1)) - f xm -
      h xm ≤
    Nesterov_first_fix_stepsize.γ f h f' x0 k ^ 2 / (2 * Nesterov_first_fix_stepsize.t f h f' x0 k) *
      ‖x0 - xm‖ ^ 2 := sorry


theorem extracted_59 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_first_fix_stepsize f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  Nesterov_first_fix_stepsize.γ f h f' x0 k ^ 2 / (2 * Nesterov_first_fix_stepsize.t f h f' x0 k) * ‖x0 - xm‖ ^ 2 ≤
    2 * ↑(Nesterov_first_fix_stepsize.l f h f' x0) / (↑k + 2) ^ 2 * ‖x0 - xm‖ ^ 2 := sorry