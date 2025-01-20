import Mathlib
import Convex


open Filter Topology Set InnerProductSpace Finset

open Finset

theorem extracted_0 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) : LipschitzWith G f := sorry


theorem extracted_1 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x gx : E) (hx₁ : gx ∈ SubderivAt f x) : ‖gx‖ ≤ ↑G := sorry


theorem extracted_2 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x y gx : E) (hx₁ : gx ∈ SubderivAt f x) (hx₃ : ‖gx‖ ≤ ↑G)
  (hx₂ : f y ≥ f x + ⟪gx, y - x⟫_ℝ) : f x - f y ≤ ⟪gx, x - y⟫_ℝ := sorry


theorem extracted_3 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x y gx : E) (hx₁ : gx ∈ SubderivAt f x) (hx₃ : ‖gx‖ ≤ ↑G)
  (hx₂ : f y ≥ f x + ⟪gx, y - x⟫_ℝ) (hx₄ : f x - f y ≤ ⟪gx, x - y⟫_ℝ) (gy : E) (hy₁ : gy ∈ SubderivAt f y) :
  ‖gy‖ ≤ ↑G := sorry


theorem extracted_4 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x y gx : E) (hx₁ : gx ∈ SubderivAt f x) (hx₃ : ‖gx‖ ≤ ↑G)
  (hx₂ : f y ≥ f x + ⟪gx, y - x⟫_ℝ) (hx₄ : f x - f y ≤ ⟪gx, x - y⟫_ℝ) (gy : E) (hy₁ : gy ∈ SubderivAt f y)
  (hy₃ : ‖gy‖ ≤ ↑G) (hy₂ : f x ≥ f y + ⟪gy, x - y⟫_ℝ) : f x - f y ≥ ⟪gy, x - y⟫_ℝ := sorry


theorem extracted_5 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x y gx : E) (hx₁ : gx ∈ SubderivAt f x) (hx₃ : ‖gx‖ ≤ ↑G)
  (hx₂ : f y ≥ f x + ⟪gx, y - x⟫_ℝ) (hx₄ : f x - f y ≤ ⟪gx, x - y⟫_ℝ) (gy : E) (hy₁ : gy ∈ SubderivAt f y)
  (hy₃ : ‖gy‖ ≤ ↑G) (hy₂ : f x ≥ f y + ⟪gy, x - y⟫_ℝ) : f x - f y ≥ f y + ⟪gy, x - y⟫_ℝ - f y := sorry


theorem extracted_6 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x y gx : E) (hx₁ : gx ∈ SubderivAt f x) (hx₃ : ‖gx‖ ≤ ↑G)
  (hx₂ : f y ≥ f x + ⟪gx, y - x⟫_ℝ) (hx₄ : f x - f y ≤ ⟪gx, x - y⟫_ℝ) (gy : E) (hy₁ : gy ∈ SubderivAt f y)
  (hy₃ : ‖gy‖ ≤ ↑G) (hy₂ : f x ≥ f y + ⟪gy, x - y⟫_ℝ) : f y + ⟪gy, x - y⟫_ℝ - f y = ⟪gy, x - y⟫_ℝ := sorry


theorem extracted_7 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x y gx : E) (hx₁ : gx ∈ SubderivAt f x) (hx₃ : ‖gx‖ ≤ ↑G)
  (hx₂ : f y ≥ f x + ⟪gx, y - x⟫_ℝ) (hx₄ : f x - f y ≤ ⟪gx, x - y⟫_ℝ) (gy : E) (hy₁ : gy ∈ SubderivAt f y)
  (hy₃ : ‖gy‖ ≤ ↑G) (hy₂ : f x ≥ f y + ⟪gy, x - y⟫_ℝ) (hy₄ : f x - f y ≥ ⟪gy, x - y⟫_ℝ) :
  ↑G = ENNReal.ofReal ↑G := sorry


theorem extracted_8 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x y gx : E) (hx₁ : gx ∈ SubderivAt f x) (hx₃ : ‖gx‖ ≤ ↑G)
  (hx₂ : f y ≥ f x + ⟪gx, y - x⟫_ℝ) (hx₄ : f x - f y ≤ ⟪gx, x - y⟫_ℝ) (gy : E) (hy₁ : gy ∈ SubderivAt f y)
  (hy₃ : ‖gy‖ ≤ ↑G) (hy₂ : f x ≥ f y + ⟪gy, x - y⟫_ℝ) (hy₄ : f x - f y ≥ ⟪gy, x - y⟫_ℝ) (hG₁ : ↑G = ENNReal.ofReal ↑G) :
  ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) := sorry


theorem extracted_9 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (hf : ConvexOn ℝ Set.univ f) (hc : ContinuousOn f Set.univ)
  (h : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑G) (x y gx : E) (hx₁ : gx ∈ SubderivAt f x) (hx₃ : ‖gx‖ ≤ ↑G)
  (hx₂ : f y ≥ f x + ⟪gx, y - x⟫_ℝ) (hx₄ : f x - f y ≤ ⟪gx, x - y⟫_ℝ) (gy : E) (hy₁ : gy ∈ SubderivAt f y)
  (hy₃ : ‖gy‖ ≤ ↑G) (hy₂ : f x ≥ f y + ⟪gy, x - y⟫_ℝ) (hy₄ : f x - f y ≥ ⟪gy, x - y⟫_ℝ) (hG₁ : ↑G = ENNReal.ofReal ↑G)
  (hG₂ : ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y)) (hG₃ : 0 ≤ ↑G * dist x y)
  (h₁ : dist (f x) (f y) = |f x - f y|) : ⟪gy, x - y⟫_ℝ ≥ -(‖gy‖ * ‖x - y‖) := sorry


theorem extracted_10 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : LipschitzWith G f) ⦃x g : E⦄ :
  g ∈ SubderivAt f x → ‖g‖ ≤ ↑G := sorry


theorem extracted_11 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : LipschitzWith G f) (x g : E) (h₂ : g ∈ SubderivAt f x)
  (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g := sorry


theorem extracted_12 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g → f y ≥ f x + ⟪g, y - x⟫_ℝ → ‖g‖ ≠ 0 := sorry


theorem extracted_13 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g → f y ≥ f x + ⟪g, y - x⟫_ℝ → ‖g‖ ≠ 0 → ⟪g, y - x⟫_ℝ = ‖g‖ := sorry


theorem extracted_14 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g → f y ≥ f x + ‖g‖ → ‖g‖ ≠ 0 → ⟪g, y - x⟫_ℝ = ‖g‖ → f y - f x ≥ ‖g‖ := sorry


theorem extracted_15 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g → f y ≥ f x + ‖g‖ → ‖g‖ ≠ 0 → ⟪g, y - x⟫_ℝ = ‖g‖ → f y - f x ≥ f x + ‖g‖ - f x := sorry


theorem extracted_16 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g → f y ≥ f x + ‖g‖ → ‖g‖ ≠ 0 → ⟪g, y - x⟫_ℝ = ‖g‖ → f x + ‖g‖ - f x = ‖g‖ := sorry


theorem extracted_17 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g →
    f y ≥ f x + ‖g‖ →
      ‖g‖ ≠ 0 →
        ⟪g, y - x⟫_ℝ = ‖g‖ → f y - f x ≥ ‖g‖ → edist (f x) (f y) ≤ ↑G * edist x y → ↑G = ENNReal.ofReal ↑G := sorry


theorem extracted_18 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g →
    f y ≥ f x + ‖g‖ →
      ‖g‖ ≠ 0 →
        ⟪g, y - x⟫_ℝ = ‖g‖ →
          f y - f x ≥ ‖g‖ →
            ENNReal.ofReal (dist (f x) (f y)) ≤ ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) →
              ↑G = ENNReal.ofReal ↑G →
                ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) := sorry


theorem extracted_19 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g →
    f y ≥ f x + ‖g‖ →
      ‖g‖ ≠ 0 →
        ⟪g, y - x⟫_ℝ = ‖g‖ →
          f y - f x ≥ ‖g‖ →
            ENNReal.ofReal (dist (f x) (f y)) ≤ ENNReal.ofReal (↑G * dist x y) →
              ↑G = ENNReal.ofReal ↑G →
                ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) →
                  0 ≤ ↑G * dist x y → dist (f x) (f y) ≤ ↑G * dist x y → dist (f x) (f y) = |f x - f y| := sorry


theorem extracted_20 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g →
    f y ≥ f x + ‖g‖ →
      ‖g‖ ≠ 0 →
        ⟪g, y - x⟫_ℝ = ‖g‖ →
          f y - f x ≥ ‖g‖ →
            ENNReal.ofReal (dist (f x) (f y)) ≤ ENNReal.ofReal (↑G * dist x y) →
              ↑G = ENNReal.ofReal ↑G →
                ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) →
                  0 ≤ ↑G * dist x y →
                    |f y - f x| ≤ ↑G * (‖1 / ‖g‖‖ * ‖g‖) → dist (f x) (f y) = |f x - f y| → f y - f x < ‖g‖ := sorry


theorem extracted_21 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g →
    f y ≥ f x + ‖g‖ →
      ‖g‖ ≠ 0 →
        ⟪g, y - x⟫_ℝ = ‖g‖ →
          f y - f x ≥ ‖g‖ →
            ENNReal.ofReal (dist (f x) (f y)) ≤ ENNReal.ofReal (↑G * dist x y) →
              ↑G = ENNReal.ofReal ↑G →
                ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) →
                  0 ≤ ↑G * dist x y →
                    |f y - f x| ≤ ↑G * (‖1 / ‖g‖‖ * ‖g‖) →
                      dist (f x) (f y) = |f x - f y| → f y - f x ≤ |f y - f x| := sorry


theorem extracted_22 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g →
    f y ≥ f x + ‖g‖ →
      ‖g‖ ≠ 0 →
        ⟪g, y - x⟫_ℝ = ‖g‖ →
          f y - f x ≥ ‖g‖ →
            ENNReal.ofReal (dist (f x) (f y)) ≤ ENNReal.ofReal (↑G * dist x y) →
              ↑G = ENNReal.ofReal ↑G →
                ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) →
                  0 ≤ ↑G * dist x y →
                    |f y - f x| ≤ ↑G * (‖1 / ‖g‖‖ * ‖g‖) →
                      dist (f x) (f y) = |f x - f y| → |f y - f x| ≤ ↑G * (‖1 / ‖g‖‖ * ‖g‖) := sorry


theorem extracted_23 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g →
    f y ≥ f x + ‖g‖ →
      ‖g‖ ≠ 0 →
        ⟪g, y - x⟫_ℝ = ‖g‖ →
          f y - f x ≥ ‖g‖ →
            ENNReal.ofReal (dist (f x) (f y)) ≤ ENNReal.ofReal (↑G * dist x y) →
              ↑G = ENNReal.ofReal ↑G →
                ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) →
                  0 ≤ ↑G * dist x y →
                    |f y - f x| ≤ ↑G * (‖1 / ‖g‖‖ * ‖g‖) →
                      dist (f x) (f y) = |f x - f y| → ↑G * (‖1 / ‖g‖‖ * ‖g‖) = ↑G := sorry


theorem extracted_24 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} {G : NNReal} (h : ∀ (x y : E), edist (f x) (f y) ≤ ↑G * edist x y) (x g : E)
  (h₂ : g ∈ SubderivAt f x) (h₃ : ↑G < ‖g‖) :
  let y := x + (1 / ‖g‖) • g;
  y = x + (1 / ‖g‖) • g →
    f y ≥ f x + ‖g‖ →
      ‖g‖ ≠ 0 →
        ⟪g, y - x⟫_ℝ = ‖g‖ →
          f y - f x ≥ ‖g‖ →
            ENNReal.ofReal (dist (f x) (f y)) ≤ ENNReal.ofReal (↑G * dist x y) →
              ↑G = ENNReal.ofReal ↑G →
                ENNReal.ofReal (↑G * dist x y) = ENNReal.ofReal ↑G * ENNReal.ofReal (dist x y) →
                  0 ≤ ↑G * dist x y →
                    |f y - f x| ≤ ↑G * (‖1 / ‖g‖‖ * ‖g‖) → dist (f x) (f y) = |f x - f y| → ↑G < ‖g‖ := sorry


theorem extracted_25 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ) :
  2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    ‖x₀ - xm‖ ^ 2 +
      ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2 := sorry


theorem extracted_26 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀}
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (hk₀ : f xm ≥ f (subgradient_method.x f x₀ 0) + ⟪subgradient_method.g f x₀ 0, xm - subgradient_method.x f x₀ 0⟫_ℝ)
  (h₀' : ‖subgradient_method.g f x₀ 0‖ ≤ ↑(subgradient_method.G f x₀)) :
  f (subgradient_method.x f x₀ 0) - f xm ≤ -⟪subgradient_method.g f x₀ 0, xm - subgradient_method.x f x₀ 0⟫_ℝ := sorry


theorem extracted_27 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0) :
  (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
    {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} := sorry


theorem extracted_28 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  ⦃i : ℕ⦄ :
  i ≥ 0 ∧ i ≤ k →
    ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 := sorry


theorem extracted_29 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k) :
  ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
        2 * subgradient_method.a f x₀ i *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
      ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 =
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
        -(2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
      ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 := sorry


theorem extracted_30 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2) :
  ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 ≤
    ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 := sorry


theorem extracted_31 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (inq₁ :
    ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 ≤
      ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2) :
  2 * subgradient_method.a f x₀ i *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    2 * ⟪subgradient_method.x f x₀ i - xm, subgradient_method.a f x₀ i • subgradient_method.g f x₀ i⟫_ℝ := sorry


theorem extracted_32 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (inq₁ :
    ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 ≤
      ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (hxm : f xm ≥ f (subgradient_method.x f x₀ i) + ⟪subgradient_method.g f x₀ i, xm - subgradient_method.x f x₀ i⟫_ℝ) :
  sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm =
    sInf (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) - f xm := sorry


theorem extracted_33 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (inq₁ :
    ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 ≤
      ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (hxm : f xm ≥ f (subgradient_method.x f x₀ i) + ⟪subgradient_method.g f x₀ i, xm - subgradient_method.x f x₀ i⟫_ℝ) :
  sInf (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) - f xm ≤ f (subgradient_method.x f x₀ i) - f xm := sorry


theorem extracted_34 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (inq₁ :
    ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 ≤
      ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (hxm : f xm ≥ f (subgradient_method.x f x₀ i) + ⟪subgradient_method.g f x₀ i, xm - subgradient_method.x f x₀ i⟫_ℝ) :
  f (subgradient_method.x f x₀ i) ∈ Set.range fun x => f (subgradient_method.x f x₀ ↑x) := sorry


theorem extracted_35 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (inq₁ :
    ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 ≤
      ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (hxm : f xm ≥ f (subgradient_method.x f x₀ i) + ⟪subgradient_method.g f x₀ i, xm - subgradient_method.x f x₀ i⟫_ℝ) :
  f (subgradient_method.x f x₀ i) - f xm ≤ ⟪subgradient_method.x f x₀ i - xm, subgradient_method.g f x₀ i⟫_ℝ := sorry


theorem extracted_36 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  ⦃i : ℕ⦄ :
  i ≥ 0 ∧ i ≤ k →
    subgradient_method.a f x₀ i *
        (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 := sorry


theorem extracted_37 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  ⦃i : ℕ⦄ (hi₁ : i ≥ 0) (hi₂ : i ≤ k)
  (hii :
    ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2) :
  2 * subgradient_method.a f x₀ i *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
      ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2 := sorry


theorem extracted_38 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2) :
  ∑ i ∈ Finset.range (k + 1),
      subgradient_method.a f x₀ i *
        (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
    ∑ i ∈ Finset.range (k + 1),
      (‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
        ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2) := sorry


theorem extracted_39 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (i : ℕ) (hi : i ∈ Finset.range (k + 1)) : i < k + 1 := sorry


theorem extracted_40 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 +
        ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2) :
  2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) =
    (2 * ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x) *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) := sorry


theorem extracted_41 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 +
        ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2) :
  (2 * ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x) *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 +
      ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ^ 2 := sorry


theorem extracted_42 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} (k : ℕ)
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) (k₀ : ¬k = 0)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
            ↑(subgradient_method.G f x₀) ^ 2 * subgradient_method.a f x₀ i ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 +
        ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2) :
  ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 +
      ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ^ 2 ≤
    ‖x₀ - xm‖ ^ 2 +
      ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ^ 2 := sorry


theorem extracted_43 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} {t : ℝ}
  (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n = t) (k : ℕ) :
  sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm ≤
    ‖x₀ - xm‖ ^ 2 / (2 * (↑k + 1) * t) + ↑(subgradient_method.G f x₀) ^ 2 * t / 2 := sorry


theorem extracted_44 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} {t : ℝ}
  (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n = t) : t > 0 := sorry


theorem extracted_45 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} {t : ℝ}
  (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n = t) (ht : t > 0) (k : ℕ) :
  2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    ‖x₀ - xm‖ ^ 2 +
      ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2 := sorry


theorem extracted_46 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} {t : ℝ}
  (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n = t) (k : ℕ) (ht : t > 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hk :
    2 * ((↑k + 1) * t) * (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ((↑k + 1) * t ^ 2)) :
  2 * ((↑k + 1) * t) > 0 := sorry


theorem extracted_47 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} {t : ℝ}
  (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n = t) (k : ℕ) (ht : t > 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hk :
    2 * ((↑k + 1) * t) * (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ((↑k + 1) * t ^ 2))
  (hpos : 2 * ((↑k + 1) * t) > 0) :
  2 * ((↑k + 1) * t) * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) =
    2 * ((↑k + 1) * t) * (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) := sorry


theorem extracted_48 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} {t : ℝ}
  (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n = t) (k : ℕ) (ht : t > 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hk :
    2 * ((↑k + 1) * t) * (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ((↑k + 1) * t ^ 2))
  (hpos : 2 * ((↑k + 1) * t) > 0) :
  2 * ((↑k + 1) * t) * (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ((↑k + 1) * t ^ 2) := sorry


theorem extracted_49 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) {alg : subgradient_method f x₀} {t : ℝ}
  (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n = t) (k : ℕ) (ht : t > 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hk :
    2 * ((↑k + 1) * t) * (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ((↑k + 1) * t ^ 2))
  (hpos : 2 * ((↑k + 1) * t) > 0) :
  ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ((↑k + 1) * t ^ 2) =
    2 * ((↑k + 1) * t) * (‖x₀ - xm‖ ^ 2 / (2 * (↑k + 1) * t) + ↑(subgradient_method.G f x₀) ^ 2 * t / 2) := sorry


theorem extracted_50 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ) :
  sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm ≤
    ↑(subgradient_method.G f x₀) * ‖x₀ - xm‖ ^ 2 / (2 * (↑k + 1) * s) + ↑(subgradient_method.G f x₀) * s / 2 := sorry


theorem extracted_51 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ) :
  (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
    {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} := sorry


theorem extracted_52 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x}) :
  Nonempty { x // x ∈ Finset.range (k + 1) } := sorry


theorem extracted_53 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) ⦃i : ℕ⦄ :
  i ≥ 0 ∧ i ≤ k →
    ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 := sorry


theorem extracted_54 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k) :
  ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
        2 * subgradient_method.a f x₀ i *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
      ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 =
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
        -(2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
      ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 := sorry


theorem extracted_55 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2) :
  2 * subgradient_method.a f x₀ i *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    2 * ⟪subgradient_method.x f x₀ i - xm, subgradient_method.a f x₀ i • subgradient_method.g f x₀ i⟫_ℝ := sorry


theorem extracted_56 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (hxm : f xm ≥ f (subgradient_method.x f x₀ i) + ⟪subgradient_method.g f x₀ i, xm - subgradient_method.x f x₀ i⟫_ℝ) :
  sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm =
    sInf (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) - f xm := sorry


theorem extracted_57 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (hxm : f xm ≥ f (subgradient_method.x f x₀ i) + ⟪subgradient_method.g f x₀ i, xm - subgradient_method.x f x₀ i⟫_ℝ) :
  sInf (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) - f xm ≤ f (subgradient_method.x f x₀ i) - f xm := sorry


theorem extracted_58 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (hxm : f xm ≥ f (subgradient_method.x f x₀ i) + ⟪subgradient_method.g f x₀ i, xm - subgradient_method.x f x₀ i⟫_ℝ) :
  f (subgradient_method.x f x₀ i) ∈ Set.range fun x => f (subgradient_method.x f x₀ ↑x) := sorry


theorem extracted_59 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀)) ⦃i : ℕ⦄ (left : i ≥ 0) (hi₂ : i ≤ k)
  (this :
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 =
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 +
          -(2 * subgradient_method.a f x₀ i *
              (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (hxm : f xm ≥ f (subgradient_method.x f x₀ i) + ⟪subgradient_method.g f x₀ i, xm - subgradient_method.x f x₀ i⟫_ℝ) :
  f (subgradient_method.x f x₀ i) - f xm ≤ ⟪subgradient_method.x f x₀ i - xm, subgradient_method.g f x₀ i⟫_ℝ := sorry


theorem extracted_60 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  ⦃i : ℕ⦄ :
  i ≥ 0 ∧ i ≤ k →
    subgradient_method.a f x₀ i *
        (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2 := sorry


theorem extracted_61 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  ⦃i : ℕ⦄ (hi₁ : i ≥ 0) (hi₂ : i ≤ k)
  (hii :
    ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2) :
  subgradient_method.a f x₀ i *
      (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
      ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 := sorry


theorem extracted_62 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  ⦃i : ℕ⦄ (hi₁ : i ≥ 0) (hi₂ : i ≤ k)
  (hii :
    ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
      ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
          2 * subgradient_method.a f x₀ i *
            (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
        ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2) :
  ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 +
      ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2 =
    ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2 := sorry


theorem extracted_63 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2) :
  ∑ i ∈ Finset.range (k + 1),
      subgradient_method.a f x₀ i *
        (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
    ∑ i ∈ Finset.range (k + 1),
      (‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2) := sorry


theorem extracted_64 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2) :
  ↑(subgradient_method.G f x₀) > 0 := sorry


theorem extracted_65 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2) :
  subgradient_method.a f x₀ 0 * ‖subgradient_method.g f x₀ 0‖ > 0 := sorry


theorem extracted_66 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0) :
  ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ≥ (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) := sorry


theorem extracted_67 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0) :
  ∑ x ∈ Finset.range (k + 1), s / ↑(subgradient_method.G f x₀) = (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) := sorry


theorem extracted_68 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0)
  (inq₁ : ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ≥ (↑k + 1) * (s / ↑(subgradient_method.G f x₀))) :
  (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0 := sorry


theorem extracted_69 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0)
  (inq₁ : ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ≥ (↑k + 1) * (s / ↑(subgradient_method.G f x₀)))
  (hpos₁ : (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0) :
  2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0 := sorry


theorem extracted_70 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0)
  (inq₁ : ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ≥ (↑k + 1) * (s / ↑(subgradient_method.G f x₀)))
  (hpos₁ : (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (hpos₁' : 2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0) :
  2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) *
      (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2 := sorry


theorem extracted_71 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0)
  (inq₁ : ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ≥ (↑k + 1) * (s / ↑(subgradient_method.G f x₀)))
  (hpos₁ : (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (hpos₁' : 2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (h₂' :
    2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2) :
  sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm =
    sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm := sorry


theorem extracted_72 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0)
  (inq₁ : ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ≥ (↑k + 1) * (s / ↑(subgradient_method.G f x₀)))
  (hpos₁ : (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (hpos₁' : 2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (h₂' :
    2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2) :
  sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≤
    (‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2) /
      (2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀))) := sorry


theorem extracted_73 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0)
  (inq₁ : ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ≥ (↑k + 1) * (s / ↑(subgradient_method.G f x₀)))
  (hpos₁ : (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (hpos₁' : 2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (h₂' :
    2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2) :
  (‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2) /
      (2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀))) ≤
    (‖x₀ - xm‖ ^ 2 + (↑k + 1) * s ^ 2) / (2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀))) := sorry


theorem extracted_74 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  {s : ℝ} (ha' : ∀ (n : ℕ), subgradient_method.a f x₀ n * ‖subgradient_method.g f x₀ n‖ = s) (hs : s > 0) (k : ℕ)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x})
  (hnek : Nonempty { x // x ∈ Finset.range (k + 1) })
  (h' : ∀ ⦃x g : E⦄, g ∈ SubderivAt f x → ‖g‖ ≤ ↑(subgradient_method.G f x₀))
  (h₁ :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 -
              2 * subgradient_method.a f x₀ i *
                (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) +
            ‖subgradient_method.a f x₀ i‖ ^ 2 * ‖subgradient_method.g f x₀ i‖ ^ 2)
  (h₁' :
    ∀ ⦃i : ℕ⦄,
      i ≥ 0 ∧ i ≤ k →
        subgradient_method.a f x₀ i *
            (2 * (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm)) ≤
          ‖subgradient_method.x f x₀ i - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (i + 1) - xm‖ ^ 2 + s ^ 2)
  (h₂ :
    (2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2)
  (hG : ↑(subgradient_method.G f x₀) > 0)
  (inq₁ : ∑ x ∈ Finset.range (k + 1), subgradient_method.a f x₀ x ≥ (↑k + 1) * (s / ↑(subgradient_method.G f x₀)))
  (hpos₁ : (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (hpos₁' : 2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) > 0)
  (h₂' :
    2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀)) *
        (sInf {x | ∃ i < k + 1, f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 - ‖subgradient_method.x f x₀ (k + 1) - xm‖ ^ 2 + (↑k + 1) * s ^ 2) :
  (‖x₀ - xm‖ ^ 2 + (↑k + 1) * s ^ 2) / (2 * (↑k + 1) * (s / ↑(subgradient_method.G f x₀))) =
    ↑(subgradient_method.G f x₀) * ‖x₀ - xm‖ ^ 2 / (2 * (↑k + 1) * s) + ↑(subgradient_method.G f x₀) * s / 2 := sorry


theorem extracted_75 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha' : Tendsto (subgradient_method.a f x₀) atTop (𝓝 0))
  (ha'' : Tendsto (fun k => (Finset.range (k + 1)).sum (subgradient_method.a f x₀)) atTop atTop) :
  Tendsto (fun k => sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x}) atTop
    (𝓝 (f xm)) := sorry


theorem extracted_76 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha' : Tendsto (subgradient_method.a f x₀) atTop (𝓝 0))
  (ha'' : Tendsto (fun k => (Finset.range (k + 1)).sum (subgradient_method.a f x₀)) atTop atTop) :
  Tendsto (fun k => sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) atTop
    (𝓝 0) := sorry


theorem extracted_77 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) :
  ∃ a₁,
    ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2 := sorry


theorem extracted_78 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s_1 : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s_1) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) :
  let A := ‖x₀ - xm‖ ^ 2 / ε + 1;
  let s := {x | x > ‖x₀ - xm‖ ^ 2 / ε};
  ∀ (b : ℝ), A ≤ b → b ∈ s := sorry


theorem extracted_79 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s_1 : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s_1) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) :
  let A := ‖x₀ - xm‖ ^ 2 / ε + 1;
  let s := {x | x > ‖x₀ - xm‖ ^ 2 / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s) →
    ∀ (a_1 : ℕ),
      (∀ (b : ℕ), a_1 ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s) →
        ∀ (b : ℕ),
          a_1 ≤ b →
            ‖x₀ - xm‖ ^ 2 / ε < (Finset.range (b + 1)).sum (subgradient_method.a f x₀) →
              ‖x₀ - xm‖ ^ 2 < (Finset.range (b + 1)).sum (subgradient_method.a f x₀) * ε →
                2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 := sorry


theorem extracted_80 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s_1 : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s_1) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) :
  let A := ‖x₀ - xm‖ ^ 2 / ε + 1;
  let s := {x | x > ‖x₀ - xm‖ ^ 2 / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s) →
    ∀ (a_1 : ℕ),
      (∀ (b : ℕ), a_1 ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s) →
        ∀ (b : ℕ),
          a_1 ≤ b →
            ‖x₀ - xm‖ ^ 2 / ε < (Finset.range (b + 1)).sum (subgradient_method.a f x₀) →
              ‖x₀ - xm‖ ^ 2 < (Finset.range (b + 1)).sum (subgradient_method.a f x₀) * ε →
                2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                  ‖x₀ - xm‖ ^ 2 < (Finset.range (b + 1)).sum (subgradient_method.a f x₀) * ε := sorry


theorem extracted_81 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s_1 : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s_1) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) :
  let A := ‖x₀ - xm‖ ^ 2 / ε + 1;
  let s := {x | x > ‖x₀ - xm‖ ^ 2 / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s) →
    ∀ (a_1 : ℕ),
      (∀ (b : ℕ), a_1 ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s) →
        ∀ (b : ℕ),
          a_1 ≤ b →
            ‖x₀ - xm‖ ^ 2 / ε < (Finset.range (b + 1)).sum (subgradient_method.a f x₀) →
              ‖x₀ - xm‖ ^ 2 < (Finset.range (b + 1)).sum (subgradient_method.a f x₀) * ε →
                2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                  (Finset.range (b + 1)).sum (subgradient_method.a f x₀) * ε =
                    2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) * (ε / 2) := sorry


theorem extracted_82 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ :
    ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2) :
  ∃ a₂,
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2 := sorry


theorem extracted_83 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) : ↑(subgradient_method.G f x₀) ^ 2 > 0 := sorry


theorem extracted_84 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s_1 : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s_1) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) :
  let s := {x | |x| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)};
  ∀ x_1 ∈ s, x_1 ∈ s := sorry


theorem extracted_85 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s_1 : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s_1) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) :
  let s := {x | |x| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)};
  (∀ x_1 ∈ s, x_1 ∈ s) → ∀ x_1 ∈ s, ∃ ε, 0 < ε ∧ ∀ (x_2 : ℝ), dist x_2 x_1 < ε → x_2 ∈ s := sorry


theorem extracted_86 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (x₁ : ℝ)
  (hx₁ : |x₁| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) (x₂ : ℝ)
  (hx₂ : dist x₂ x₁ < (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) - |x₁|) / 2) : |x₂| ≤ |x₁| + dist x₂ x₁ := sorry


theorem extracted_87 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (x₁ : ℝ)
  (hx₁ : |x₁| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) (x₂ : ℝ)
  (hx₂ : dist x₂ x₁ < (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) - |x₁|) / 2) :
  |x₁| + dist x₂ x₁ < |x₁| + (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) - |x₁|) / 2 := sorry


theorem extracted_88 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (x₁ : ℝ)
  (hx₁ : |x₁| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) (x₂ : ℝ)
  (hx₂ : dist x₂ x₁ < (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) - |x₁|) / 2) :
  |x₁| + (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) - |x₁|) / 2 =
    (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) + |x₁|) / 2 := sorry


theorem extracted_89 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (x₁ : ℝ)
  (hx₁ : |x₁| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) (x₂ : ℝ)
  (hx₂ : dist x₂ x₁ < (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) - |x₁|) / 2) :
  (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) + |x₁|) / 2 <
    (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) + ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) / 2 := sorry


theorem extracted_90 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (x₁ : ℝ)
  (hx₁ : |x₁| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) (x₂ : ℝ)
  (hx₂ : dist x₂ x₁ < (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) - |x₁|) / 2) :
  (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) + ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) / 2 =
    ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) := sorry


theorem extracted_91 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s_1 : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s_1) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) :
  let s := {x | |x| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)};
  (∀ x_1 ∈ s, x_1 ∈ s) → (∀ x_1 ∈ s, ∃ ε, 0 < ε ∧ ∀ (x_2 : ℝ), dist x_2 x_1 < ε → x_2 ∈ s) → 0 ∈ s := sorry


theorem extracted_92 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  ∀ (b : ℝ), A ≤ b → b ∈ s₁ := sorry


theorem extracted_93 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ), max a₁ (a₂ + 1) ≤ b → b ≥ a₁ := sorry


theorem extracted_94 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ), max a₁ (a₂ + 1) ≤ b → b ≥ a₁ → b ≥ a₂ + 1 := sorry


theorem extracted_95 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ), max a₁ (a₂ + 1) ≤ b → b ≥ a₁ → b ≥ a₂ + 1 → b ≥ a₂ := sorry


theorem extracted_96 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ → b ≥ a₂ + 1 → b ≥ a₂ → 2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 := sorry


theorem extracted_97 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 := sorry


theorem extracted_98 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 := sorry


theorem extracted_99 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        (↑(subgradient_method.G f x₀) ^ 2 *
                              ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
                            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) =
                          (↑(subgradient_method.G f x₀) ^ 2 *
                                ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                              (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) +
                            (↑(subgradient_method.G f x₀) ^ 2 *
                                ∑ x ∈ Finset.range (b - a₂), subgradient_method.a f x₀ (a₂ + 1 + x) ^ 2) /
                              (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) := sorry


theorem extracted_100 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ∑ x ∈ Finset.range (a₂ + 1 + (b - a₂)), subgradient_method.a f x₀ x ^ 2 =
                            ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2 +
                              ∑ x ∈ Finset.range (b - a₂), subgradient_method.a f x₀ (a₂ + 1 + x) ^ 2 →
                          b + 1 = a₂ + 1 + (b - a₂) := sorry


theorem extracted_101 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        (↑(subgradient_method.G f x₀) ^ 2 *
                                ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                              (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) +
                            (↑(subgradient_method.G f x₀) ^ 2 *
                                ∑ x ∈ Finset.range (b - a₂), subgradient_method.a f x₀ (a₂ + 1 + x) ^ 2) /
                              (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
                          ε / 4 + ε / 4 := sorry


theorem extracted_102 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        (2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                              ε <
                            (Finset.range (b + 1)).sum (subgradient_method.a f x₀) →
                          2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2 <
                              (Finset.range (b + 1)).sum (subgradient_method.a f x₀) * ε →
                            (2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                    ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                                  (Finset.range (b + 1)).sum (subgradient_method.a f x₀) <
                                ε →
                              (2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                        ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                                      (Finset.range (b + 1)).sum (subgradient_method.a f x₀) /
                                    4 <
                                  ε / 4 →
                                (↑(subgradient_method.G f x₀) ^ 2 *
                                      ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                                    (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) =
                                  (2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                        ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                                      (Finset.range (b + 1)).sum (subgradient_method.a f x₀) /
                                    4 := sorry


theorem extracted_103 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        (2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                              ε <
                            (Finset.range (b + 1)).sum (subgradient_method.a f x₀) →
                          2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2 <
                              (Finset.range (b + 1)).sum (subgradient_method.a f x₀) * ε →
                            (2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                    ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                                  (Finset.range (b + 1)).sum (subgradient_method.a f x₀) <
                                ε →
                              (2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                        ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                                      (Finset.range (b + 1)).sum (subgradient_method.a f x₀) /
                                    4 <
                                  ε / 4 →
                                (2 * ↑(subgradient_method.G f x₀) ^ 2 *
                                        ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) /
                                      (Finset.range (b + 1)).sum (subgradient_method.a f x₀) /
                                    4 <
                                  ε / 4 := sorry


theorem extracted_104 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ↑(subgradient_method.G f x₀) ^ 2 *
                            ∑ x ∈ Finset.range (b - a₂), subgradient_method.a f x₀ (a₂ + 1 + x) ^ 2 ≤
                          ↑(subgradient_method.G f x₀) ^ 2 *
                            ∑ x ∈ Finset.range (b - a₂),
                              ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) *
                                subgradient_method.a f x₀ (a₂ + 1 + x) := sorry


theorem extracted_105 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ∀ i ∈ Finset.range (b - a₂), subgradient_method.a f x₀ (a₂ + 1 + i) > 0 := sorry


theorem extracted_106 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ∀ i ∈ Finset.range (b - a₂),
                          subgradient_method.a f x₀ (a₂ + 1 + i) > 0 → a₂ + 1 + i ≥ a₂ := sorry


theorem extracted_107 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ↑(subgradient_method.G f x₀) ^ 2 *
                            ∑ x ∈ Finset.range (b - a₂),
                              ε / (2 * ↑(subgradient_method.G f x₀) ^ 2) * subgradient_method.a f x₀ (a₂ + 1 + x) =
                          ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) *
                            ∑ x ∈ Finset.range (b - a₂), subgradient_method.a f x₀ (a₂ + 1 + x) := sorry


theorem extracted_108 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) *
                            ∑ x ∈ Finset.range (b - a₂), subgradient_method.a f x₀ (a₂ + 1 + x) <
                          ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) *
                            ∑ x ∈ Finset.range (b + 1), subgradient_method.a f x₀ x := sorry


theorem extracted_109 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ∑ x ∈ Finset.range (a₂ + 1 + (b - a₂)), subgradient_method.a f x₀ x =
                            ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x +
                              ∑ x ∈ Finset.range (b - a₂), subgradient_method.a f x₀ (a₂ + 1 + x) →
                          b + 1 = a₂ + 1 + (b - a₂) := sorry


theorem extracted_110 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) *
                            ∑ x ∈ Finset.range (b + 1), subgradient_method.a f x₀ x =
                          ε / 4 * (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) := sorry


theorem extracted_111 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t)
  (ha₁ : ∃ a₁, ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hG : ¬subgradient_method.G f x₀ = 0) (hpos' : ↑(subgradient_method.G f x₀) ^ 2 > 0) (a₂ : ℕ)
  (ha₂ : ∀ (b : ℕ), a₂ ≤ b → |subgradient_method.a f x₀ b| < ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) :
  let A :=
    (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε + 1;
  let s₁ :=
    {x | x > (2 * ↑(subgradient_method.G f x₀) ^ 2 * ∑ x ∈ Finset.range (a₂ + 1), subgradient_method.a f x₀ x ^ 2) / ε};
  (∀ (b : ℝ), A ≤ b → b ∈ s₁) →
    ∀ (a₁ : ℕ),
      (∀ (b : ℕ), a₁ ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s₁) →
        ∀ (b : ℕ),
          max a₁ (a₂ + 1) ≤ b →
            b ≥ a₁ →
              b ≥ a₂ + 1 →
                b ≥ a₂ →
                  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                    (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 →
                      ↑(subgradient_method.G f x₀) ^ 2 * (ε / (2 * ↑(subgradient_method.G f x₀) ^ 2)) > 0 →
                        ε / 4 + ε / 4 = ε / 2 := sorry


theorem extracted_112 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) : b ≥ a₁ := sorry


theorem extracted_113 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) : b ≥ a₂ := sorry


theorem extracted_114 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂) :
  sInf {x | ∃ i < b + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≥ 0 := sorry


theorem extracted_115 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂) :
  (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
    {x | ∃ i ∈ Finset.range (b + 1), f (subgradient_method.x f x₀ i) = x} := sorry


theorem extracted_116 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂)
  (heq :
    (Set.range fun x => f (subgradient_method.x f x₀ ↑x)) =
      {x | ∃ i ∈ Finset.range (b + 1), f (subgradient_method.x f x₀ i) = x}) :
  Nonempty { x // x ∈ Finset.range (b + 1) } := sorry


theorem extracted_117 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂)
  (hne : sInf {x | ∃ i < b + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≥ 0) (k : ℕ) :
  2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
      (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
    ‖x₀ - xm‖ ^ 2 +
      ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2 := sorry


theorem extracted_118 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂)
  (hne : sInf {x | ∃ i < b + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≥ 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hb₁ :
    2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) *
        (sInf {x | ∃ i ∈ Finset.range (b + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2)
  (hba₁' : ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hba₂' :
    (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
        (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
      ε / 2) :
  2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0 := sorry


theorem extracted_119 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂)
  (hne : sInf {x | ∃ i < b + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≥ 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hb₁ :
    2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) *
        (sInf {x | ∃ i ∈ Finset.range (b + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2)
  (hba₁' : ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hba₂' :
    (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
        (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
      ε / 2)
  (hpos : 2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0) :
  sInf {x | ∃ i < b + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≤
    (‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
      (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) := sorry


theorem extracted_120 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂)
  (hne : sInf {x | ∃ i < b + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≥ 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hb₁ :
    2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) *
        (sInf {x | ∃ i ∈ Finset.range (b + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2)
  (hba₁' : ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hba₂' :
    (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
        (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
      ε / 2)
  (hpos : 2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0) :
  (‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
      (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) =
    ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) +
      (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
        (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) := sorry


theorem extracted_121 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂)
  (hne : sInf {x | ∃ i < b + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≥ 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hb₁ :
    2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) *
        (sInf {x | ∃ i ∈ Finset.range (b + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2)
  (hba₁' : ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hba₂' :
    (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
        (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
      ε / 2)
  (hpos : 2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0) :
  ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) +
      (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
        (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
    ε / 2 + ε / 2 := sorry


theorem extracted_122 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] {f : E → ℝ} (xm x₀ : E) (hm : IsMinOn f Set.univ xm) {alg : subgradient_method f x₀}
  (ha'' :
    ∀ (s : Set ℝ) (x : ℝ),
      (∀ (b : ℝ), x ≤ b → b ∈ s) → ∃ a, ∀ (b : ℕ), a ≤ b → (Finset.range (b + 1)).sum (subgradient_method.a f x₀) ∈ s)
  (s : Set ℝ)
  (ha' :
    ∀ (s x : Set ℝ),
      x ⊆ s →
        (∀ x_1 ∈ x, ∃ ε, 0 < ε ∧ Metric.ball x_1 ε ⊆ x) →
          0 ∈ x → ∃ a, ∀ (b : ℕ), a ≤ b → subgradient_method.a f x₀ b ∈ s)
  (t : Set ℝ) (hs₁ : t ⊆ s) (hs₂ : ∀ x ∈ t, ∃ ε, 0 < ε ∧ Metric.ball x ε ⊆ t) (hs₀ : 0 ∈ t) (ε : ℝ) (εpos : 0 < ε)
  (hs₂₀ : Metric.ball 0 ε ⊆ t) (a₁ : ℕ)
  (ha₁ : ∀ (b : ℕ), a₁ ≤ b → ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (a₂ : ℕ)
  (ha₂ :
    ∀ (b : ℕ),
      a₂ ≤ b →
        (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
            (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
          ε / 2)
  (b : ℕ) (hb : max a₁ a₂ ≤ b) (hba₁ : b ≥ a₁) (hba₂ : b ≥ a₂)
  (hne : sInf {x | ∃ i < b + 1, f (subgradient_method.x f x₀ i) = x} - f xm ≥ 0)
  (h₁ :
    ∀ (k : ℕ),
      2 * (Finset.range (k + 1)).sum (subgradient_method.a f x₀) *
          (sInf {x | ∃ i ∈ Finset.range (k + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
        ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (k + 1), subgradient_method.a f x₀ i ^ 2)
  (hb₁ :
    2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) *
        (sInf {x | ∃ i ∈ Finset.range (b + 1), f (subgradient_method.x f x₀ i) = x} - f xm) ≤
      ‖x₀ - xm‖ ^ 2 + ↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2)
  (hba₁' : ‖x₀ - xm‖ ^ 2 / (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) < ε / 2)
  (hba₂' :
    (↑(subgradient_method.G f x₀) ^ 2 * ∑ i ∈ Finset.range (b + 1), subgradient_method.a f x₀ i ^ 2) /
        (2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀)) <
      ε / 2)
  (hpos : 2 * (Finset.range (b + 1)).sum (subgradient_method.a f x₀) > 0) : ε / 2 + ε / 2 = ε := sorry