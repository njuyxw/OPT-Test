import Mathlib
import Convex


open Set

theorem extracted_0 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) :
  f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
      (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) := sorry


theorem extracted_1 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E) :
  f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
    ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_2 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) :
  f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k) := sorry


theorem extracted_3 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k)) :
  f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ ≤ f x' := sorry


theorem extracted_4 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k)) :
  Nesterov.y f f' γ x₀ k ∈ univ := sorry


theorem extracted_5 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k)) :
  x' ∈ univ := sorry


theorem extracted_6 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k))
  (t1 : f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ ≤ f x') :
  f (Nesterov.x f f' γ x₀ ↑k) ≤
    f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_7 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k))
  (t1 : f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ ≤ f x') :
  f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 =
    f (Nesterov.y f f' γ x₀ k) +
        ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k + (Nesterov.x f f' γ x₀ ↑k - x')⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_8 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k))
  (t1 : f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ ≤ f x') :
  f (Nesterov.y f f' γ x₀ k) +
        ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k + (Nesterov.x f f' γ x₀ ↑k - x')⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 =
    f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ +
        ⟪f' (Nesterov.y f f' γ x₀ k), Nesterov.x f f' γ x₀ ↑k - x'⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_9 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k))
  (t1 : f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ ≤ f x') :
  f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ +
        ⟪f' (Nesterov.y f f' γ x₀ k), Nesterov.x f f' γ x₀ ↑k - x'⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 ≤
    f x' + ⟪f' (Nesterov.y f f' γ x₀ k), Nesterov.x f f' γ x₀ ↑k - x'⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_10 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k))
  (t1 : f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ ≤ f x') :
  f x' + ⟪f' (Nesterov.y f f' γ x₀ k), Nesterov.x f f' γ x₀ ↑k - x'⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 =
    f x' +
        ⟪↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k), Nesterov.x f f' γ x₀ ↑k - x'⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_11 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (k : ℕ+) (x' : E)
  (this : f' (Nesterov.y f f' γ x₀ k) = ↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k))
  (t1 : f (Nesterov.y f f' γ x₀ k) + ⟪f' (Nesterov.y f f' γ x₀ k), x' - Nesterov.y f f' γ x₀ k⟫_ℝ ≤ f x') :
  f x' +
        ⟪↑(Nesterov.l f f' γ x₀) • (Nesterov.y f f' γ x₀ k - Nesterov.x f f' γ x₀ ↑k), Nesterov.x f f' γ x₀ ↑k - x'⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 =
    f x' +
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_12 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) :
  f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
    ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_13 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) :
  f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
    γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
      (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))) := sorry


theorem extracted_14 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) : γ k ≥ 0 := sorry


theorem extracted_15 : 0 ≤ 2 := sorry


theorem extracted_16 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) (hz : γ k ≥ 0) : γ k ≤ 1 := sorry


theorem extracted_17 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) (hz : γ k ≥ 0) (hl : γ k ≤ 1) :
  γ k • (xm - Nesterov.x f f' γ x₀ ↑k) + (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k) =
    (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k := sorry


theorem extracted_18 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this_1 :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) (hz : γ k ≥ 0) (hl : γ k ≤ 1)
  (this :
    γ k • (xm - Nesterov.x f f' γ x₀ ↑k) + (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k) =
      (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k) :
  γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
      (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))) ≤
    γ k *
        (↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2) +
      (1 - γ k) *
        (↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2) := sorry


theorem extracted_19 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this_1 :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) (hz : γ k ≥ 0) (hl : γ k ≤ 1)
  (this :
    γ k • (xm - Nesterov.x f f' γ x₀ ↑k) + (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k) =
      (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k) :
  0 ≤ 1 - γ k := sorry


theorem extracted_20 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this_1 :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) (hz : γ k ≥ 0) (hl : γ k ≤ 1)
  (this :
    γ k • (xm - Nesterov.x f f' γ x₀ ↑k) + (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k) =
      (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k) :
  γ k *
        (↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2) +
      (1 - γ k) *
        (↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2) =
    ↑(Nesterov.l f f' γ x₀) *
          (γ k * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ) +
        ↑(Nesterov.l f f' γ x₀) *
          ((1 - γ k) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k⟫_ℝ) +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_21 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this_1 :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) (hz : γ k ≥ 0) (hl : γ k ≤ 1)
  (this :
    γ k • (xm - Nesterov.x f f' γ x₀ ↑k) + (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k) =
      (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k) :
  ↑(Nesterov.l f f' γ x₀) * (γ k * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ) +
        ↑(Nesterov.l f f' γ x₀) *
          ((1 - γ k) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k⟫_ℝ) +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 =
    ↑(Nesterov.l f f' γ x₀) *
          ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, γ k • (xm - Nesterov.x f f' γ x₀ ↑k)⟫_ℝ +
        ↑(Nesterov.l f f' γ x₀) *
          ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
            (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k)⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_22 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this_1 :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) (hz : γ k ≥ 0) (hl : γ k ≤ 1)
  (this :
    γ k • (xm - Nesterov.x f f' γ x₀ ↑k) + (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k) =
      (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k) :
  ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, γ k • (xm - Nesterov.x f f' γ x₀ ↑k)⟫_ℝ +
        ↑(Nesterov.l f f' γ x₀) *
          ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
            (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k)⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 =
    ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          γ k • (xm - Nesterov.x f f' γ x₀ ↑k) +
            (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k)⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_23 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+)
  (this_1 :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) =
      γ k * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        (1 - γ k) * (f (Nesterov.x f f' γ x₀ ↑k) - f (Nesterov.x f f' γ x₀ (↑k - 1))))
  (lzero : 0 < ↑↑k + 1) (hz : γ k ≥ 0) (hl : γ k ≤ 1)
  (this :
    γ k • (xm - Nesterov.x f f' γ x₀ ↑k) + (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k) =
      (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k) :
  ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          γ k • (xm - Nesterov.x f f' γ x₀ ↑k) +
            (1 - γ k) • (Nesterov.x f f' γ x₀ (↑k - 1) - Nesterov.x f f' γ x₀ ↑k)⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 =
    ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_24 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) : γ k ≥ 0 := sorry


theorem extracted_25 : 0 ≤ 2 := sorry


theorem extracted_26 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) : γ k > 0 := sorry


theorem extracted_27 : 0 < 2 := sorry


theorem extracted_28 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0) :
  ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
      (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
    ↑(Nesterov.l f f' γ x₀) / 2 *
      (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
        ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2) := sorry


theorem extracted_29 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0) :
  ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
      (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
    ↑(Nesterov.l f f' γ x₀) / 2 *
      (γ k ^ 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - γ k ^ 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) := sorry


theorem extracted_30 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0) :
  ↑(Nesterov.l f f' γ x₀) / 2 *
      (γ k ^ 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - γ k ^ 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
    ↑(Nesterov.l f f' γ x₀) / 2 *
      ((‖γ k‖ * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖) ^ 2 - (‖γ k‖ * ‖Nesterov.v f f' γ x₀ ↑k - xm‖) ^ 2) := sorry


theorem extracted_31 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0) :
  ↑(Nesterov.l f f' γ x₀) / 2 *
      ((‖γ k‖ * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖) ^ 2 - (‖γ k‖ * ‖Nesterov.v f f' γ x₀ ↑k - xm‖) ^ 2) =
    ↑(Nesterov.l f f' γ x₀) / 2 *
      (‖γ k • (Nesterov.v f f' γ x₀ (↑k - 1) - xm)‖ ^ 2 - ‖γ k • (Nesterov.v f f' γ x₀ ↑k - xm)‖ ^ 2) := sorry


theorem extracted_32 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0) :
  ↑(Nesterov.l f f' γ x₀) / 2 *
      (‖γ k • (Nesterov.v f f' γ x₀ (↑k - 1) - xm)‖ ^ 2 - ‖γ k • (Nesterov.v f f' γ x₀ ↑k - xm)‖ ^ 2) =
    ↑(Nesterov.l f f' γ x₀) / 2 *
      (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
        ‖γ k • (Nesterov.x f f' γ x₀ (↑k - 1) + (1 / γ k) • (Nesterov.x f f' γ x₀ ↑k - Nesterov.x f f' γ x₀ (↑k - 1))) -
              γ k • xm‖ ^
          2) := sorry


theorem extracted_33 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0) :
  ↑(Nesterov.l f f' γ x₀) / 2 *
      (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
        ‖γ k • (Nesterov.x f f' γ x₀ (↑k - 1) + (1 / γ k) • (Nesterov.x f f' γ x₀ ↑k - Nesterov.x f f' γ x₀ (↑k - 1))) -
              γ k • xm‖ ^
          2) =
    ↑(Nesterov.l f f' γ x₀) / 2 *
      (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
        ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2) := sorry


theorem extracted_34 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0)
  (this1 :
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
        (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
      ↑(Nesterov.l f f' γ x₀) / 2 *
        (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
          ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2)) :
  ↑(Nesterov.l f f' γ x₀) / 2 *
      (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
        ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2) =
    ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2 := sorry


theorem extracted_35 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0)
  (this1 :
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
        (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
      ↑(Nesterov.l f f' γ x₀) / 2 *
        (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
          ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2)) :
  ↑(Nesterov.l f f' γ x₀) / 2 *
      (‖Nesterov.y f f' γ x₀ k‖ ^ 2 -
            2 * ⟪Nesterov.y f f' γ x₀ k, (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm⟫_ℝ +
          ‖(1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm‖ ^ 2 -
        (‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2 -
            2 * ⟪Nesterov.x f f' γ x₀ ↑k, (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm⟫_ℝ +
          ‖(1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm‖ ^ 2)) =
    ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
      ↑(Nesterov.l f f' γ x₀) / 2 * 2 *
        (⟪Nesterov.x f f' γ x₀ ↑k, (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm⟫_ℝ -
          ⟪Nesterov.y f f' γ x₀ k, (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm⟫_ℝ) := sorry


theorem extracted_36 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0)
  (this1 :
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
        (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
      ↑(Nesterov.l f f' γ x₀) / 2 *
        (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
          ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2)) :
  ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
      ↑(Nesterov.l f f' γ x₀) / 2 * 2 *
        (⟪Nesterov.x f f' γ x₀ ↑k, (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm⟫_ℝ -
          ⟪Nesterov.y f f' γ x₀ k, (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm⟫_ℝ) =
    ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
      ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm⟫_ℝ := sorry


theorem extracted_37 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0)
  (this1 :
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
        (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
      ↑(Nesterov.l f f' γ x₀) / 2 *
        (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
          ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2)) :
  ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
      ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm⟫_ℝ =
    ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
      ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k +
            Nesterov.x f f' γ x₀ ↑k⟫_ℝ := sorry


theorem extracted_38 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0)
  (this1 :
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
        (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
      ↑(Nesterov.l f f' γ x₀) / 2 *
        (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
          ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2)) :
  ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
      ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k + Nesterov.x f f' γ x₀ ↑k⟫_ℝ =
    ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ := sorry


theorem extracted_39 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0)
  (this1 :
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
        (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
      ↑(Nesterov.l f f' γ x₀) / 2 *
        (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
          ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2)) :
  ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ =
    ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
          ↑(Nesterov.l f f' γ x₀) * ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2 -
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k, Nesterov.y f f' γ x₀ k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ := sorry


theorem extracted_40 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1))
  (h2 :
    ∀ (k : ℕ+) (x' : E),
      f (Nesterov.x f f' γ x₀ ↑k) - f x' ≤
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k, x' - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (h3 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) *
            ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
              (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k‖ ^ 2)
  (k : ℕ+) (hz : γ k ≥ 0) (hzs : γ k > 0)
  (this1 :
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
        (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) =
      ↑(Nesterov.l f f' γ x₀) / 2 *
        (‖Nesterov.y f f' γ x₀ k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2 -
          ‖Nesterov.x f f' γ x₀ ↑k - (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) - γ k • xm‖ ^ 2)) :
  ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.y f f' γ x₀ k‖ ^ 2 - ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2) +
          ↑(Nesterov.l f f' γ x₀) * ‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2 -
        ↑(Nesterov.l f f' γ x₀) * ⟪Nesterov.x f f' γ x₀ ↑k, Nesterov.y f f' γ x₀ k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ =
    ↑(Nesterov.l f f' γ x₀) *
        ⟪Nesterov.x f f' γ x₀ ↑k - Nesterov.y f f' γ x₀ k,
          (1 - γ k) • Nesterov.x f f' γ x₀ (↑k - 1) + γ k • xm - Nesterov.x f f' γ x₀ ↑k⟫_ℝ +
      ↑(Nesterov.l f f' γ x₀) / 2 *
        (‖Nesterov.x f f' γ x₀ ↑k‖ ^ 2 - 2 * ⟪Nesterov.x f f' γ x₀ ↑k, Nesterov.y f f' γ x₀ k⟫_ℝ +
          ‖Nesterov.y f f' γ x₀ k‖ ^ 2) := sorry


theorem extracted_41 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2) (k : ℕ+) :
  f (Nesterov.x f f' γ x₀ ↑k) - f xm ≤ 2 * ↑(Nesterov.l f f' γ x₀) / (↑↑k + 1) ^ 2 * ‖x₀ - xm‖ ^ 2 := sorry


theorem extracted_42 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2) (k : ℕ+) :
  f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
    ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
      (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) := sorry


theorem extracted_43 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2)
  (h4 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
          (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (k : ℕ+) :
  1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
    1 / γ (k - 1) ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 := sorry


theorem extracted_44 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm) (k : ℕ+)
  (h4 :
    f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
      ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
        (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (con : (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2) : γ k ^ 2 > 0 := sorry


theorem extracted_45 : 0 < 2 ^ 2 := sorry


theorem extracted_46 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm) (k : ℕ+)
  (h4 :
    1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) -
        (1 - γ k) / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
      ↑(Nesterov.l f f' γ x₀) / 2 * (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2) *
        (γ k ^ 2 / γ k ^ 2))
  (con : (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2) (this : γ k ^ 2 > 0) : γ k ^ 2 ≠ 0 := sorry


theorem extracted_47 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm) (k : ℕ+)
  (h4 :
    1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
      (1 - γ k) / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2)
  (con : (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2) (this : γ k ^ 2 > 0) : Nesterov.x f f' γ x₀ (↑k - 1) ∈ univ := sorry


theorem extracted_48 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm) (k : ℕ+)
  (h4 :
    1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
      (1 - γ k) / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2)
  (con : (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2) (this_1 : γ k ^ 2 > 0)
  (this : f xm ≤ f (Nesterov.x f f' γ x₀ (↑k - 1))) : 0 ≤ f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm := sorry


theorem extracted_49 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2)
  (h4 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
          (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (h5 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ (k - 1) ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2)
  (k : ℕ+) :
  1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
    1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2 := sorry


theorem extracted_50 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2)
  (h4 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
          (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (j : ℕ+)
  (IH :
    1 / γ j ^ 2 * (f (Nesterov.x f f' γ x₀ ↑j) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑j - xm‖ ^ 2 ≤
      1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2)
  (h5 :
    1 / γ (j + 1) ^ 2 * (f (Nesterov.x f f' γ x₀ ↑(j + 1)) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑(j + 1) - xm‖ ^ 2 ≤
      1 / γ (j + 1 - 1) ^ 2 * (f (Nesterov.x f f' γ x₀ (↑(j + 1) - 1)) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑(j + 1) - 1) - xm‖ ^ 2) :
  ↑(j + 1) - 1 = ↑j := sorry


theorem extracted_51 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2)
  (h4 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
          (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (j : ℕ+)
  (IH :
    1 / γ j ^ 2 * (f (Nesterov.x f f' γ x₀ ↑j) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑j - xm‖ ^ 2 ≤
      1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2)
  (h5 :
    1 / γ (j + 1) ^ 2 * (f (Nesterov.x f f' γ x₀ ↑(j + 1)) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑(j + 1) - xm‖ ^ 2 ≤
      1 / γ (j + 1 - 1) ^ 2 * (f (Nesterov.x f f' γ x₀ (↑(j + 1) - 1)) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑(j + 1) - 1) - xm‖ ^ 2)
  (y1 : ↑(j + 1) - 1 = ↑j) : j + 1 - 1 = j := sorry


theorem extracted_52 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2)
  (h4 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
          (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (h5 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ (k - 1) ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2)
  (h6 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2) :
  1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) + ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2 ≤
    (1 - γ 1) / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 0) - f xm) +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 0 - xm‖ ^ 2 := sorry


theorem extracted_53 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2)
  (h4 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
          (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (h5 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ (k - 1) ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2)
  (h6 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2)
  (h7 :
    1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2 ≤
      (1 - γ 1) / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 0) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 0 - xm‖ ^ 2)
  (k : ℕ+) :
  1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
    ↑(Nesterov.l f f' γ x₀) / 2 * ‖x₀ - xm‖ ^ 2 := sorry


theorem extracted_54 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2)
  (h4 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
          (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (h5 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ (k - 1) ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2)
  (h6 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2)
  (h7 :
    1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2 ≤
      (1 - γ 1) / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 0) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 0 - xm‖ ^ 2)
  (k : ℕ+)
  (h8 :
    1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖x₀ - xm‖ ^ 2) :
  1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) ≤ ↑(Nesterov.l f f' γ x₀) / 2 * ‖x₀ - xm‖ ^ 2 := sorry


theorem extracted_55 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm x₀ : E} {γ : ℕ+ → ℝ} {alg : Nesterov f f' γ x₀}
  (hfun : ConvexOn ℝ univ f) (hg : ∀ (k : ℕ+), γ k = 2 / (↑↑k + 1)) (min : IsMinOn f univ xm)
  (con : ∀ (k : ℕ+), (1 - γ k) / γ k ^ 2 ≤ 1 / γ (k - 1) ^ 2)
  (h4 :
    ∀ (k : ℕ+),
      f (Nesterov.x f f' γ x₀ ↑k) - f xm - (1 - γ k) * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) ≤
        ↑(Nesterov.l f f' γ x₀) * γ k ^ 2 / 2 *
          (‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2 - ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2))
  (h5 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ (k - 1) ^ 2 * (f (Nesterov.x f f' γ x₀ (↑k - 1)) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ (↑k - 1) - xm‖ ^ 2)
  (h6 :
    ∀ (k : ℕ+),
      1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
        1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
          ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2)
  (h7 :
    1 / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 1) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 1 - xm‖ ^ 2 ≤
      (1 - γ 1) / γ 1 ^ 2 * (f (Nesterov.x f f' γ x₀ 0) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ 0 - xm‖ ^ 2)
  (k : ℕ+)
  (h8 :
    1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) +
        ↑(Nesterov.l f f' γ x₀) / 2 * ‖Nesterov.v f f' γ x₀ ↑k - xm‖ ^ 2 ≤
      ↑(Nesterov.l f f' γ x₀) / 2 * ‖x₀ - xm‖ ^ 2)
  (h9 : 1 / γ k ^ 2 * (f (Nesterov.x f f' γ x₀ ↑k) - f xm) ≤ ↑(Nesterov.l f f' γ x₀) / 2 * ‖x₀ - xm‖ ^ 2) :
  ↑(Nesterov.l f f' γ x₀) / 2 * ‖x₀ - xm‖ ^ 2 / (1 / (2 / (↑↑k + 1)) ^ 2) =
    2 * ↑(Nesterov.l f f' γ x₀) / (↑↑k + 1) ^ 2 * ‖x₀ - xm‖ ^ 2 := sorry