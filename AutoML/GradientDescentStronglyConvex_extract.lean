import Mathlib
import Convex


open Set

theorem extracted_0 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (hsc : StrongConvexOn univ m f)
  (mp : m > 0) (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) :
  ⟪f' x - f' y, x - y⟫_ℝ ≥ m * ↑l / (m + ↑l) * ‖x - y‖ ^ 2 + 1 / (m + ↑l) * ‖f' x - f' y‖ ^ 2 := sorry


theorem extracted_1 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi := sorry


theorem extracted_2 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    ∀ (x : E), HasGradientAt g (g' x) x := sorry


theorem extracted_3 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    (∀ (x : E), HasGradientAt g (g' x) x) → ConvexOn ℝ univ g := sorry


theorem extracted_4 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) → ConvexOn ℝ univ g → ConvexOn ℝ univ h := sorry


theorem extracted_5 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x_1 y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) → ConvexOn ℝ univ g → ∀ (x : E), h x = phi x := sorry


theorem extracted_6 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h → 0 < ↑l - m → ⟪g' x - g' y, x - y⟫_ℝ ≥ 1 / (↑l - m) * ‖g' x - g' y‖ ^ 2 := sorry


theorem extracted_7 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          0 < ↑l - m →
            ⟪g' x - g' y, x - y⟫_ℝ ≥ 1 / (↑l - m) * ‖g' x - g' y‖ ^ 2 →
              let alpha := f' x - f' y;
              let beta := x - y;
              g' x - g' y = alpha - m • beta := sorry


theorem extracted_8 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            ⟪alpha - m • beta, x - y⟫_ℝ ≥ 1 / (↑l - m) * ‖alpha - m • beta‖ ^ 2 →
              g' x - g' y = alpha - m • beta →
                ∀ (u v : E),
                  ⟪u - m • v, v⟫_ℝ ≥ 1 / (↑l - m) * ‖u - m • v‖ ^ 2 →
                    ⟪u, v⟫_ℝ ≥ m * ↑l / (m + ↑l) * ‖v‖ ^ 2 + 1 / (m + ↑l) * ‖u‖ ^ 2 := sorry


theorem extracted_9 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            ⟪alpha - m • beta, x - y⟫_ℝ ≥ 1 / (↑l - m) * ‖alpha - m • beta‖ ^ 2 →
              g' x - g' y = alpha - m • beta →
                ∀ (u v : E), ‖u - m • v‖ ^ 2 = ‖u‖ ^ 2 + m ^ 2 * ‖v‖ ^ 2 - 2 * m * ⟪u, v⟫_ℝ := sorry


theorem extracted_10 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            ⟪alpha - m • beta, x - y⟫_ℝ ≥ 1 / (↑l - m) * ‖alpha - m • beta‖ ^ 2 →
              g' x - g' y = alpha - m • beta →
                ∀ (u v : E),
                  ‖u - m • v‖ ^ 2 = ‖u‖ ^ 2 + m ^ 2 * ‖v‖ ^ 2 - 2 * m * ⟪u, v⟫_ℝ →
                    ‖u‖ ^ 2 + m * ↑l * ‖v‖ ^ 2 ≤ (m + ↑l) * ⟪u, v⟫_ℝ → 0 < m + ↑l := sorry


theorem extracted_11 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            ⟪alpha - m • beta, x - y⟫_ℝ ≥ 1 / (↑l - m) * ‖alpha - m • beta‖ ^ 2 →
              g' x - g' y = alpha - m • beta →
                ∀ (u v : E),
                  ‖u - m • v‖ ^ 2 = ‖u‖ ^ 2 + m ^ 2 * ‖v‖ ^ 2 - 2 * m * ⟪u, v⟫_ℝ →
                    ‖u‖ ^ 2 + m * ↑l * ‖v‖ ^ 2 ≤ (m + ↑l) * ⟪u, v⟫_ℝ →
                      0 < m + ↑l → (‖u‖ ^ 2 + m * ↑l * ‖v‖ ^ 2) / (m + ↑l) ≤ (m + ↑l) * ⟪u, v⟫_ℝ / (m + ↑l) := sorry


theorem extracted_12 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            ⟪alpha - m • beta, x - y⟫_ℝ ≥ 1 / (↑l - m) * ‖alpha - m • beta‖ ^ 2 →
              g' x - g' y = alpha - m • beta →
                ∀ (u v : E),
                  ‖u - m • v‖ ^ 2 = ‖u‖ ^ 2 + m ^ 2 * ‖v‖ ^ 2 - 2 * m * ⟪u, v⟫_ℝ →
                    ‖u‖ ^ 2 + m * ↑l * ‖v‖ ^ 2 ≤ (m + ↑l) * ⟪u, v⟫_ℝ →
                      0 < m + ↑l → (m + ↑l) * ⟪u, v⟫_ℝ / (m + ↑l) = ⟪u, v⟫_ℝ := sorry


theorem extracted_13 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            ⟪alpha, beta⟫_ℝ ≥ m * ‖beta‖ ^ 2 := sorry


theorem extracted_14 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            ⟪alpha, beta⟫_ℝ ≥ m * ‖beta‖ ^ 2 → ⟪alpha, beta⟫_ℝ ≥ 1 / ↑l * ‖alpha‖ ^ 2 := sorry


theorem extracted_15 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            m * ‖beta‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ → 1 / ↑l * ‖alpha‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ → 0 < m + ↑l := sorry


theorem extracted_16 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            m * ‖beta‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
              1 / ↑l * ‖alpha‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
                0 < m + ↑l →
                  ∀ (u v : E),
                    m * ‖v‖ ^ 2 ≤ ⟪u, v⟫_ℝ →
                      1 / ↑l * ‖u‖ ^ 2 ≤ ⟪u, v⟫_ℝ →
                        ⟪u, v⟫_ℝ ≥ m * ↑l / (m + ↑l) * ‖v‖ ^ 2 + 1 / (m + ↑l) * ‖u‖ ^ 2 := sorry


theorem extracted_17 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            m * ‖beta‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
              1 / ↑l * ‖alpha‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
                0 < m + ↑l →
                  ∀ (u v : E),
                    m * ‖v‖ ^ 2 ≤ ⟪u, v⟫_ℝ → 1 / ↑l * ‖u‖ ^ 2 ≤ ⟪u, v⟫_ℝ → m * ↑l * ‖v‖ ^ 2 ≤ m * ⟪u, v⟫_ℝ := sorry


theorem extracted_18 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            m * ‖beta‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
              1 / ↑l * ‖alpha‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
                0 < m + ↑l →
                  ∀ (u v : E),
                    m * ‖v‖ ^ 2 ≤ ⟪u, v⟫_ℝ → 1 / ↑l * ‖u‖ ^ 2 ≤ ⟪u, v⟫_ℝ → m * ↑l * ‖v‖ ^ 2 ≤ m * m * ‖v‖ ^ 2 := sorry


theorem extracted_19 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            m * ‖beta‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
              1 / ↑l * ‖alpha‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
                0 < m + ↑l → ∀ (u v : E), m * ‖v‖ ^ 2 ≤ ⟪u, v⟫_ℝ → 1 / ↑l * ‖u‖ ^ 2 ≤ ⟪u, v⟫_ℝ → 0 ≤ ‖v‖ ^ 2 := sorry


theorem extracted_20 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            m * ‖beta‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
              1 / ↑l * ‖alpha‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
                0 < m + ↑l →
                  ∀ (u v : E),
                    m * ‖v‖ ^ 2 ≤ ⟪u, v⟫_ℝ → 1 / ↑l * ‖u‖ ^ 2 ≤ ⟪u, v⟫_ℝ → m * m * ‖v‖ ^ 2 ≤ m * ⟪u, v⟫_ℝ := sorry


theorem extracted_21 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {x y : E} {l : NNReal} (mp : m > 0)
  (hf : ∀ (x : E), HasGradientAt f (f' x) x) (h₂ : LipschitzWith l f') (hl : ↑l > 0) (cov : Convex ℝ univ (E := E))
  (hsc :
    ∀ ⦃x : E⦄,
      x ∈ univ →
        ∀ ⦃y : E⦄,
          y ∈ univ →
            ∀ ⦃a b : ℝ⦄,
              0 ≤ a → 0 ≤ b → a + b = 1 → f (a • x + b • y) ≤ a • f x + b • f y - a * b * (m / 2 * ‖x - y‖ ^ 2)) :
  let phi := fun x => ↑l / 2 * ‖x‖ ^ 2 - f x;
  ConvexOn ℝ univ phi →
    let g := fun x => f x - m / 2 * ‖x‖ ^ 2;
    let g' := fun x => f' x - m • x;
    let h := fun x => (↑l - m) / 2 * ‖x‖ ^ 2 - g x;
    (∀ (x : E), HasGradientAt g (g' x) x) →
      ConvexOn ℝ univ g →
        ConvexOn ℝ univ h →
          ¬0 < ↑l - m →
            let alpha := f' x - f' y;
            let beta := x - y;
            m * ‖beta‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
              1 / ↑l * ‖alpha‖ ^ 2 ≤ ⟪alpha, beta⟫_ℝ →
                0 < m + ↑l →
                  ∀ (u v : E),
                    m * ‖v‖ ^ 2 ≤ ⟪u, v⟫_ℝ →
                      1 / ↑l * ‖u‖ ^ 2 ≤ ⟪u, v⟫_ℝ → m * ↑l * ‖v‖ ^ 2 ≤ m * ⟪u, v⟫_ℝ → ‖u‖ ^ 2 ≤ ↑l * ⟪u, v⟫_ℝ := sorry


theorem extracted_22 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm : E} {l : NNReal} (h₁ : ∀ (x : E), HasGradientAt f (f' x) x)
  (h₂ : LipschitzWith l f') (min : IsMinOn f univ xm) (hl : ↑l > 0) : f' xm = 0 := sorry


theorem extracted_23 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm : E} {l : NNReal} (h₁ : ∀ (x : E), HasGradientAt f (f' x) x)
  (h₂ : LipschitzWith l f') (min : IsMinOn f univ xm) (hl : ↑l > 0) (x : E) :
  1 / (2 * ↑l) * ‖f' x‖ ^ 2 ≤ f x - f xm := sorry


theorem extracted_24 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm : E} {l : NNReal} (h₁ : ∀ (x : E), HasGradientAt f (f' x) x)
  (h₂ : LipschitzWith l f') (min : IsMinOn f univ xm) (hl : ↑l > 0) (eq1 : ‖f' xm‖ ^ 2 / (2 * ↑l) ≤ 0) :
  0 < 2 * ↑l := sorry


theorem extracted_25 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm : E} {l : NNReal} (h₁ : ∀ (x : E), HasGradientAt f (f' x) x)
  (h₂ : LipschitzWith l f') (min : IsMinOn f univ xm) (hl : ↑l > 0) (eq1 : ‖f' xm‖ ^ 2 / (2 * ↑l) ≤ 0)
  (x : 0 < 2 * ↑l) : 0 ≤ ‖f' xm‖ ^ 2 / (2 * ↑l) := sorry


theorem extracted_26 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {f' : E → E} {xm : E} {l : NNReal} (h₁ : ∀ (x : E), HasGradientAt f (f' x) x)
  (h₂ : LipschitzWith l f') (min : IsMinOn f univ xm) (hl : ↑l > 0) (eq1 : ‖f' xm‖ ^ 2 / (2 * ↑l) ≤ 0) (x : 0 < 2 * ↑l)
  (eq3 : 0 ≤ ‖f' xm‖ ^ 2 / (2 * ↑l)) : ‖f' xm‖ ^ 2 / (2 * ↑l) = 0 := sorry


theorem extracted_27 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))) (k : ℕ) :
  ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 ≤
    (1 -
          Gradient_Descent_fix_stepsize.a f f' x₀ *
            (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
        k *
      ‖x₀ - xm‖ ^ 2 := sorry


theorem extracted_28 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ) :
  ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
    (1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 := sorry


theorem extracted_29 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ) :
  ‖Gradient_Descent_fix_stepsize.x f f' x₀ k -
            Gradient_Descent_fix_stepsize.a f f' x₀ • f' (Gradient_Descent_fix_stepsize.x f f' x₀ k) -
          xm‖ ^
      2 =
    ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm -
          Gradient_Descent_fix_stepsize.a f f' x₀ • f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^
      2 := sorry


theorem extracted_30 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ) :
  ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm -
          Gradient_Descent_fix_stepsize.a f f' x₀ • f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^
      2 =
    ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 -
        2 * Gradient_Descent_fix_stepsize.a f f' x₀ *
          ⟪Gradient_Descent_fix_stepsize.x f f' x₀ k - xm, f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)⟫_ℝ +
      Gradient_Descent_fix_stepsize.a f f' x₀ ^ 2 * ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2 := sorry


theorem extracted_31 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ) :
  ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 -
        2 * Gradient_Descent_fix_stepsize.a f f' x₀ *
          ⟪Gradient_Descent_fix_stepsize.x f f' x₀ k - xm, f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)⟫_ℝ +
      Gradient_Descent_fix_stepsize.a f f' x₀ ^ 2 * ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2 ≤
    (1 -
          Gradient_Descent_fix_stepsize.a f f' x₀ *
            (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
        ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
      Gradient_Descent_fix_stepsize.a f f' x₀ *
          (Gradient_Descent_fix_stepsize.a f f' x₀ - 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))) *
        ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2 := sorry


theorem extracted_32 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ) :
  ⟪Gradient_Descent_fix_stepsize.x f f' x₀ k - xm, f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)⟫_ℝ ≥
    m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) *
        ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
      1 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) *
        ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2 := sorry


theorem extracted_33 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ) :
  f' (Gradient_Descent_fix_stepsize.x f f' x₀ k) = f' (Gradient_Descent_fix_stepsize.x f f' x₀ k) - f' xm := sorry


theorem extracted_34 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this_2 : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ)
  (this :
    ⟪Gradient_Descent_fix_stepsize.x f f' x₀ k - xm, f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)⟫_ℝ ≥
      m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
        1 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) * ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2) :
  Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))) *
        ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
      Gradient_Descent_fix_stepsize.a f f' x₀ * (2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))) *
        ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2 =
    2 * Gradient_Descent_fix_stepsize.a f f' x₀ *
      (m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
        1 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) *
          ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2) := sorry


theorem extracted_35 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this_2 : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ)
  (this :
    ⟪Gradient_Descent_fix_stepsize.x f f' x₀ k - xm, f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)⟫_ℝ ≥
      m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
        1 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) * ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2) :
  2 * Gradient_Descent_fix_stepsize.a f f' x₀ *
      (m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
        1 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) * ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2) ≤
    2 * Gradient_Descent_fix_stepsize.a f f' x₀ *
      ⟪Gradient_Descent_fix_stepsize.x f f' x₀ k - xm, f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)⟫_ℝ := sorry


theorem extracted_36 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this_2 : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ)
  (this :
    m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
        1 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) * ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2 ≤
      ⟪Gradient_Descent_fix_stepsize.x f f' x₀ k - xm, f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)⟫_ℝ) :
  0 < 2 * Gradient_Descent_fix_stepsize.a f f' x₀ := sorry


theorem extracted_37 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ) :
  (1 -
          Gradient_Descent_fix_stepsize.a f f' x₀ *
            (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
        ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 +
      Gradient_Descent_fix_stepsize.a f f' x₀ *
          (Gradient_Descent_fix_stepsize.a f f' x₀ - 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))) *
        ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2 ≤
    (1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2 := sorry


theorem extracted_38 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) :
  Gradient_Descent_fix_stepsize.a f f' x₀ *
      (Gradient_Descent_fix_stepsize.a f f' x₀ - 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))) ≤
    0 := sorry


theorem extracted_39 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0) (k : ℕ)
  (eq2 :
    Gradient_Descent_fix_stepsize.a f f' x₀ *
        (Gradient_Descent_fix_stepsize.a f f' x₀ - 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))) ≤
      0) :
  0 ≤ ‖f' (Gradient_Descent_fix_stepsize.x f f' x₀ k)‖ ^ 2 := sorry


theorem extracted_40 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2) :
  0 ≤
    1 -
      Gradient_Descent_fix_stepsize.a f f' x₀ *
        (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))) := sorry


theorem extracted_41 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2) :
  0 < m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀) := sorry


theorem extracted_42 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this_2 : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (this : 0 < m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) :
  Gradient_Descent_fix_stepsize.a f f' x₀ * (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) ≤
    2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) * (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) := sorry


theorem extracted_43 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this_2 : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (this : 0 < m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) :
  2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) * (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) ≤
    (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) ^ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) := sorry


theorem extracted_44 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this_2 : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (this : 0 < m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) :
  m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) * 4 ≤
    m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) * 4 + (m - ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) ^ 2 := sorry


theorem extracted_45 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this_2 : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (this : 0 < m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) :
  m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) * 4 + (m - ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) ^ 2 =
    m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) * 2 + m ^ 2 + ↑(Gradient_Descent_fix_stepsize.l f f' x₀) ^ 2 := sorry


theorem extracted_46 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this_2 : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (this : 0 < m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) :
  (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) ^ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)) =
    m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀) := sorry


theorem extracted_47 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (eq :
    0 ≤
      1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))))
  (q : ℕ)
  (IH1 :
    ‖Gradient_Descent_fix_stepsize.x f f' x₀ q - xm‖ ^ 2 ≤
      (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
          q *
        ‖x₀ - xm‖ ^ 2) :
  ‖Gradient_Descent_fix_stepsize.x f f' x₀ (q + 1) - xm‖ ^ 2 =
    ‖Gradient_Descent_fix_stepsize.x f f' x₀ (q + 1) - xm‖ ^ 2 := sorry


theorem extracted_48 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (eq :
    0 ≤
      1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))))
  (q : ℕ)
  (IH1 :
    ‖Gradient_Descent_fix_stepsize.x f f' x₀ q - xm‖ ^ 2 ≤
      (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
          q *
        ‖x₀ - xm‖ ^ 2) :
  ‖Gradient_Descent_fix_stepsize.x f f' x₀ (q + 1) - xm‖ ^ 2 ≤
    (1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ q - xm‖ ^ 2 := sorry


theorem extracted_49 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (eq :
    0 ≤
      1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))))
  (q : ℕ)
  (IH1 :
    ‖Gradient_Descent_fix_stepsize.x f f' x₀ q - xm‖ ^ 2 ≤
      (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
          q *
        ‖x₀ - xm‖ ^ 2) :
  (1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ q - xm‖ ^ 2 ≤
    (1 -
          Gradient_Descent_fix_stepsize.a f f' x₀ *
            (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
          q *
      ‖x₀ - xm‖ ^ 2 := sorry


theorem extracted_50 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (eq :
    0 ≤
      1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))))
  (q : ℕ)
  (IH1 :
    ‖Gradient_Descent_fix_stepsize.x f f' x₀ q - xm‖ ^ 2 ≤
      (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
          q *
        ‖x₀ - xm‖ ^ 2) :
  (1 -
          Gradient_Descent_fix_stepsize.a f f' x₀ *
            (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
          q *
      ‖x₀ - xm‖ ^ 2 =
    (1 -
          Gradient_Descent_fix_stepsize.a f f' x₀ *
            (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
        (q + 1) *
      ‖x₀ - xm‖ ^ 2 := sorry


theorem extracted_51 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {m : ℝ} {f' : E → E} {xm x₀ : E} (hsc : StrongConvexOn univ m f)
  {alg : Gradient_Descent_fix_stepsize f f' x₀} (hm : m > 0) (min : IsMinOn f univ xm)
  (step₂ : Gradient_Descent_fix_stepsize.a f f' x₀ ≤ 2 / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))
  (this_1 : LipschitzWith (Gradient_Descent_fix_stepsize.l f f' x₀) f')
  (this : ↑(Gradient_Descent_fix_stepsize.l f f' x₀) > 0)
  (reduction :
    ∀ (k : ℕ),
      ‖Gradient_Descent_fix_stepsize.x f f' x₀ (k + 1) - xm‖ ^ 2 ≤
        (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) *
          ‖Gradient_Descent_fix_stepsize.x f f' x₀ k - xm‖ ^ 2)
  (eq :
    0 ≤
      1 -
        Gradient_Descent_fix_stepsize.a f f' x₀ *
          (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀))))
  (q : ℕ)
  (IH1 :
    ‖Gradient_Descent_fix_stepsize.x f f' x₀ q - xm‖ ^ 2 ≤
      (1 -
            Gradient_Descent_fix_stepsize.a f f' x₀ *
              (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
          q *
        ‖x₀ - xm‖ ^ 2) :
  (1 -
          Gradient_Descent_fix_stepsize.a f f' x₀ *
            (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
        (q + 1) *
      ‖x₀ - xm‖ ^ 2 =
    (1 -
          Gradient_Descent_fix_stepsize.a f f' x₀ *
            (2 * m * ↑(Gradient_Descent_fix_stepsize.l f f' x₀) / (m + ↑(Gradient_Descent_fix_stepsize.l f f' x₀)))) ^
        q.succ *
      ‖x₀ - xm‖ ^ 2 := sorry
