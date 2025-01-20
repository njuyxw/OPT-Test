import Mathlib
import Convex


open Set Real

open Set Real PNat

theorem NesterovAccelerationSecond_extracted_0 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  f (Nesterov_second.x f h f' x0 (k + 1)) + h (Nesterov_second.x f h f' x0 (k + 1)) - f xm - h xm ≤
    Nesterov_second.γ f h f' x0 (k + 1) ^ 2 / (2 * Nesterov_second.t f h f' x0 (k + 1)) * ‖x0 - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_1 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  ∀ (z : E), φ z = f z + h z := sorry


theorem NesterovAccelerationSecond_extracted_2 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    ∀ (k : ℕ+),
      Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
        SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k) := sorry


theorem NesterovAccelerationSecond_extracted_3 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      ∀ (w : E) (k : ℕ+),
        Nesterov_second.t f h f' x0 ↑k * h w ≥
          Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
            ⟪Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
              w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ := sorry


theorem NesterovAccelerationSecond_extracted_4 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        ∀ (k : ℕ+),
          h (Nesterov_second.x f h f' x0 ↑k) ≤
            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
              Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) := sorry


theorem NesterovAccelerationSecond_extracted_5 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        ∀ (k : ℕ+),
          Convex ℝ univ (E := E) →
            (∀ ⦃x : E⦄,
                x ∈ univ →
                  ∀ ⦃y : E⦄,
                    y ∈ univ → ∀ ⦃a b : ℝ⦄, 0 < a → 0 < b → a + b = 1 → h (a • x + b • y) ≤ a • h x + b • h y) →
              Nesterov_second.x f h f' x0 (↑k - 1) ∈ univ := sorry


theorem NesterovAccelerationSecond_extracted_6 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        ∀ (k : ℕ+),
          Convex ℝ univ (E := E) →
            (∀ ⦃x : E⦄,
                x ∈ univ →
                  ∀ ⦃y : E⦄,
                    y ∈ univ → ∀ ⦃a b : ℝ⦄, 0 < a → 0 < b → a + b = 1 → h (a • x + b • y) ≤ a • h x + b • h y) →
              Nesterov_second.x f h f' x0 (↑k - 1) ∈ univ → Nesterov_second.y f h f' x0 ↑k ∈ univ := sorry


theorem NesterovAccelerationSecond_extracted_7 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        ∀ (k : ℕ+),
          Convex ℝ univ (E := E) →
            (∀ ⦃x : E⦄,
                x ∈ univ →
                  ∀ ⦃y : E⦄,
                    y ∈ univ → ∀ ⦃a b : ℝ⦄, 0 < a → 0 < b → a + b = 1 → h (a • x + b • y) ≤ a • h x + b • h y) →
              Nesterov_second.x f h f' x0 (↑k - 1) ∈ univ →
                Nesterov_second.y f h f' x0 ↑k ∈ univ →
                  Nesterov_second.γ f h f' x0 ↑k ≠ 1 → 1 - Nesterov_second.γ f h f' x0 ↑k > 0 := sorry


theorem NesterovAccelerationSecond_extracted_8 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        ∀ (k : ℕ+),
          Convex ℝ univ (E := E) →
            (∀ ⦃x : E⦄,
                x ∈ univ →
                  ∀ ⦃y : E⦄,
                    y ∈ univ → ∀ ⦃a b : ℝ⦄, 0 < a → 0 < b → a + b = 1 → h (a • x + b • y) ≤ a • h x + b • h y) →
              Nesterov_second.x f h f' x0 (↑k - 1) ∈ univ →
                Nesterov_second.y f h f' x0 ↑k ∈ univ →
                  Nesterov_second.γ f h f' x0 ↑k ≠ 1 →
                    1 - Nesterov_second.γ f h f' x0 ↑k > 0 →
                      1 - Nesterov_second.γ f h f' x0 ↑k + Nesterov_second.γ f h f' x0 ↑k = 1 := sorry


theorem NesterovAccelerationSecond_extracted_9 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          ∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0 := sorry


theorem NesterovAccelerationSecond_extracted_10 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            ∀ (w : E) (k : ℕ+),
              Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                Nesterov_second.γ f h f' x0 ↑k * h w -
                  Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                    ⟪Nesterov_second.γ f h f' x0 ↑k •
                          (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                        Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                      w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ := sorry


theorem NesterovAccelerationSecond_extracted_11 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              ∀ (w : E) (k : ℕ+),
                h (Nesterov_second.x f h f' x0 ↑k) ≤
                  (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                      Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ := sorry


theorem NesterovAccelerationSecond_extracted_12 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                ∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_13 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  ∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_14 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  ∀ (k : ℕ+),
                    ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2 ≠ 0 →
                      ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2 > 0 := sorry


theorem NesterovAccelerationSecond_extracted_15 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  ∀ (k : ℕ+),
                    ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2 ≠ 0 →
                      ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2 > 0 →
                        ↑(Nesterov_second.l f h f' x0) / 2 > 0 := sorry


theorem NesterovAccelerationSecond_extracted_16 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  ∀ (k : ℕ+),
                    ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2 ≠ 0 →
                      ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2 > 0 →
                        ↑(Nesterov_second.l f h f' x0) / 2 > 0 → 2 * Nesterov_second.t f h f' x0 ↑k > 0 := sorry


theorem NesterovAccelerationSecond_extracted_17 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                          1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                    ∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_18 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                          1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                    ∀ (k : ℕ+),
                      Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k =
                        Nesterov_second.γ f h f' x0 ↑k •
                          (Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)) := sorry


theorem NesterovAccelerationSecond_extracted_19 (xl : ℝ) : |xl| ^ 2 = xl ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_20 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                          1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          f (Nesterov_second.z f h f' x0 k) +
                              ⟪f' (Nesterov_second.z f h f' x0 k),
                                (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                    Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                  Nesterov_second.z f h f' x0 k⟫_ℝ +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      ∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_21 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                          1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          f (Nesterov_second.z f h f' x0 k) +
                              ⟪f' (Nesterov_second.z f h f' x0 k),
                                (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                    Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                  Nesterov_second.z f h f' x0 k⟫_ℝ +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      ∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          f (Nesterov_second.z f h f' x0 k) +
                              ⟪f' (Nesterov_second.z f h f' x0 k),
                                (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                    Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                  Nesterov_second.z f h f' x0 k⟫_ℝ +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_22 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                          1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          f (Nesterov_second.z f h f' x0 k) +
                              ⟪f' (Nesterov_second.z f h f' x0 k),
                                (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                    Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                  Nesterov_second.z f h f' x0 k⟫_ℝ +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      ∀ (k : ℕ+),
                        f (Nesterov_second.z f h f' x0 k) +
                              ⟪f' (Nesterov_second.z f h f' x0 k),
                                (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                    Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                  Nesterov_second.z f h f' x0 k⟫_ℝ +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 =
                          (1 - Nesterov_second.γ f h f' x0 ↑k) *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.x f h f' x0 (↑k - 1) - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_23 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                          1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          f (Nesterov_second.z f h f' x0 k) +
                              ⟪f' (Nesterov_second.z f h f' x0 k),
                                (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                    Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                  Nesterov_second.z f h f' x0 k⟫_ℝ +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      ∀ (k : ℕ+),
                        (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                              Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                            Nesterov_second.z f h f' x0 k =
                          (1 - Nesterov_second.γ f h f' x0 ↑k) •
                              (Nesterov_second.x f h f' x0 (↑k - 1) - Nesterov_second.z f h f' x0 k) +
                            Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k) := sorry


theorem NesterovAccelerationSecond_extracted_24 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                          1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          f (Nesterov_second.z f h f' x0 k) +
                              ⟪f' (Nesterov_second.z f h f' x0 k),
                                (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                    Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                  Nesterov_second.z f h f' x0 k⟫_ℝ +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      ∀ (k : ℕ+),
                        (1 - Nesterov_second.γ f h f' x0 ↑k) *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.x f h f' x0 (↑k - 1) - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_25 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (w : E) (k : ℕ+),
                  h (Nesterov_second.x f h f' x0 ↑k) ≤
                    (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                        Nesterov_second.γ f h f' x0 ↑k * h w -
                      Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                        ⟪Nesterov_second.γ f h f' x0 ↑k •
                              (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                          w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        ↑(Nesterov_second.l f h f' x0) / 2 *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                          1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          f (Nesterov_second.z f h f' x0 k) +
                              ⟪f' (Nesterov_second.z f h f' x0 k),
                                (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                    Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                  Nesterov_second.z f h f' x0 k⟫_ℝ +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      ∀ (k : ℕ+), Nesterov_second.γ f h f' x0 ↑k ≠ 1 → 1 - Nesterov_second.γ f h f' x0 ↑k > 0 := sorry


theorem NesterovAccelerationSecond_extracted_26 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        ∀ (k : ℕ+),
                          φ (Nesterov_second.x f h f' x0 ↑k) - φ xm -
                              (1 - Nesterov_second.γ f h f' x0 ↑k) * (φ (Nesterov_second.x f h f' x0 (↑k - 1)) - φ xm) ≤
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              (‖Nesterov_second.y f h f' x0 (↑k - 1) - xm‖ ^ 2 -
                                ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2) := sorry


theorem NesterovAccelerationSecond_extracted_27 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    ∀ (k : ℕ+),
                      h (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k * h xm -
                            Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                              ⟪Nesterov_second.γ f h f' x0 ↑k •
                                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ →
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 →
                          φ (Nesterov_second.x f h f' x0 ↑k) - φ xm -
                              (1 - Nesterov_second.γ f h f' x0 ↑k) * (φ (Nesterov_second.x f h f' x0 (↑k - 1)) - φ xm) =
                            φ (Nesterov_second.x f h f' x0 ↑k) -
                                (1 - Nesterov_second.γ f h f' x0 ↑k) * φ (Nesterov_second.x f h f' x0 (↑k - 1)) -
                              Nesterov_second.γ f h f' x0 ↑k * φ xm := sorry


theorem NesterovAccelerationSecond_extracted_28 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    ∀ (k : ℕ+),
                      h (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k * h xm -
                            Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                              ⟪Nesterov_second.γ f h f' x0 ↑k •
                                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ →
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 →
                          φ (Nesterov_second.x f h f' x0 ↑k) -
                                (1 - Nesterov_second.γ f h f' x0 ↑k) * φ (Nesterov_second.x f h f' x0 (↑k - 1)) -
                              Nesterov_second.γ f h f' x0 ↑k * φ xm ≤
                            Nesterov_second.γ f h f' x0 ↑k * h xm -
                                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                        xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ +
                                  Nesterov_second.γ f h f' x0 ↑k *
                                    (f (Nesterov_second.z f h f' x0 k) +
                                      ⟪f' (Nesterov_second.z f h f' x0 k),
                                        Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                                Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                  ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 -
                              Nesterov_second.γ f h f' x0 ↑k * φ xm := sorry


theorem NesterovAccelerationSecond_extracted_29 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    ∀ (k : ℕ+),
                      h (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k * h xm -
                            Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                              ⟪Nesterov_second.γ f h f' x0 ↑k •
                                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ →
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 →
                          Nesterov_second.γ f h f' x0 ↑k * h xm -
                                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                        xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ +
                                  Nesterov_second.γ f h f' x0 ↑k *
                                    (f (Nesterov_second.z f h f' x0 k) +
                                      ⟪f' (Nesterov_second.z f h f' x0 k),
                                        Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                                Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                  ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 -
                              Nesterov_second.γ f h f' x0 ↑k * φ xm =
                            -Nesterov_second.γ f h f' x0 ↑k * f xm -
                                  Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                    ⟪Nesterov_second.γ f h f' x0 ↑k •
                                          (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                        Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                      xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_30 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    ∀ (k : ℕ+),
                      h (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k * h xm -
                            Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                              ⟪Nesterov_second.γ f h f' x0 ↑k •
                                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ →
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 →
                          -Nesterov_second.γ f h f' x0 ↑k * f xm -
                                  Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                    ⟪Nesterov_second.γ f h f' x0 ↑k •
                                          (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                        Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                      xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 ≤
                            -Nesterov_second.γ f h f' x0 ↑k *
                                    (f (Nesterov_second.z f h f' x0 k) +
                                      ⟪f' (Nesterov_second.z f h f' x0 k), xm - Nesterov_second.z f h f' x0 k⟫_ℝ) -
                                  Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                    ⟪Nesterov_second.γ f h f' x0 ↑k •
                                          (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                        Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                      xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_31 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    ∀ (k : ℕ+),
                      h (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k * h xm -
                            Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                              ⟪Nesterov_second.γ f h f' x0 ↑k •
                                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ →
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 →
                          Nesterov_second.γ f h f' x0 ↑k > 0 := sorry


theorem NesterovAccelerationSecond_extracted_32 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    ∀ (k : ℕ+),
                      h (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k * h xm -
                            Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                              ⟪Nesterov_second.γ f h f' x0 ↑k •
                                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ →
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 →
                          -Nesterov_second.γ f h f' x0 ↑k *
                                    (f (Nesterov_second.z f h f' x0 k) +
                                      ⟪f' (Nesterov_second.z f h f' x0 k), xm - Nesterov_second.z f h f' x0 k⟫_ℝ) -
                                  Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                    ⟪Nesterov_second.γ f h f' x0 ↑k •
                                          (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                        Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                      xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 =
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              (‖Nesterov_second.y f h f' x0 (↑k - 1) - xm‖ ^ 2 -
                                ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2) := sorry


theorem NesterovAccelerationSecond_extracted_33 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    ∀ (k : ℕ+),
                      h (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k * h xm -
                            Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                              ⟪Nesterov_second.γ f h f' x0 ↑k •
                                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ →
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 →
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / Nesterov_second.t f h f' x0 ↑k =
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) * 2 := sorry


theorem NesterovAccelerationSecond_extracted_34 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    ∀ (k : ℕ+),
                      h (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k * h xm -
                            Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                              ⟪Nesterov_second.γ f h f' x0 ↑k •
                                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ →
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k *
                                  (f (Nesterov_second.z f h f' x0 k) +
                                    ⟪f' (Nesterov_second.z f h f' x0 k),
                                      Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2 →
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / Nesterov_second.t f h f' x0 ↑k =
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) * 2 →
                            ∀ (a b : E), ‖a‖ ^ 2 - ‖b‖ ^ 2 = ⟪-a - b, b - a⟫_ℝ := sorry


theorem NesterovAccelerationSecond_extracted_35 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            φ (Nesterov_second.x f h f' x0 ↑k) - φ xm -
                                (1 - Nesterov_second.γ f h f' x0 ↑k) *
                                  (φ (Nesterov_second.x f h f' x0 (↑k - 1)) - φ xm) ≤
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                (‖Nesterov_second.y f h f' x0 (↑k - 1) - xm‖ ^ 2 -
                                  ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2)) →
                          ∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2 ≤
                              Nesterov_second.t f h f' x0 ↑k / Nesterov_second.γ f h f' x0 ↑k ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_36 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            φ (Nesterov_second.x f h f' x0 ↑k) - φ xm -
                                (1 - Nesterov_second.γ f h f' x0 ↑k) *
                                  (φ (Nesterov_second.x f h f' x0 (↑k - 1)) - φ xm) ≤
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                (‖Nesterov_second.y f h f' x0 (↑k - 1) - xm‖ ^ 2 -
                                  ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2)) →
                          ∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) -
                                Nesterov_second.t f h f' x0 ↑k / Nesterov_second.γ f h f' x0 ↑k ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) ≤
                              Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) -
                                (1 - Nesterov_second.γ f h f' x0 (↑k + 1)) * Nesterov_second.t f h f' x0 (↑k + 1) /
                                    Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) := sorry


theorem NesterovAccelerationSecond_extracted_37 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            φ (Nesterov_second.x f h f' x0 ↑k) - φ xm -
                                (1 - Nesterov_second.γ f h f' x0 ↑k) *
                                  (φ (Nesterov_second.x f h f' x0 (↑k - 1)) - φ xm) ≤
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                (‖Nesterov_second.y f h f' x0 (↑k - 1) - xm‖ ^ 2 -
                                  ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2)) →
                          ∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) -
                                (1 - Nesterov_second.γ f h f' x0 (↑k + 1)) * Nesterov_second.t f h f' x0 (↑k + 1) /
                                    Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) =
                              Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm -
                                  (1 - Nesterov_second.γ f h f' x0 (↑k + 1)) *
                                    (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm)) := sorry


theorem NesterovAccelerationSecond_extracted_38 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            φ (Nesterov_second.x f h f' x0 ↑k) - φ xm -
                                (1 - Nesterov_second.γ f h f' x0 ↑k) *
                                  (φ (Nesterov_second.x f h f' x0 (↑k - 1)) - φ xm) ≤
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                (‖Nesterov_second.y f h f' x0 (↑k - 1) - xm‖ ^ 2 -
                                  ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2)) →
                          ∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm -
                                  (1 - Nesterov_second.γ f h f' x0 (↑k + 1)) *
                                    (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm)) ≤
                              1 / 2 * ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2 -
                                1 / 2 * ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_39 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        ∀ (k : ℕ+),
                          φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm -
                                (1 - Nesterov_second.γ f h f' x0 (↑k + 1)) *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) ≤
                              Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 / (2 * Nesterov_second.t f h f' x0 (↑k + 1)) *
                                (‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2 -
                                  ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2) →
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 > 0 := sorry


theorem NesterovAccelerationSecond_extracted_40 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            φ (Nesterov_second.x f h f' x0 ↑k) - φ xm -
                                (1 - Nesterov_second.γ f h f' x0 ↑k) *
                                  (φ (Nesterov_second.x f h f' x0 (↑k - 1)) - φ xm) ≤
                              Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                                (‖Nesterov_second.y f h f' x0 (↑k - 1) - xm‖ ^ 2 -
                                  ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2)) →
                          (∀ (k : ℕ+),
                              Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2 ≤
                                Nesterov_second.t f h f' x0 ↑k / Nesterov_second.γ f h f' x0 ↑k ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2) →
                            ∀ (k : ℕ),
                              Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 (k + 1) - xm‖ ^ 2 ≤
                                Nesterov_second.t f h f' x0 1 / Nesterov_second.γ f h f' x0 1 ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 1) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_41 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2 ≤
                              Nesterov_second.t f h f' x0 ↑k / Nesterov_second.γ f h f' x0 ↑k ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2) →
                          (∀ (k : ℕ),
                              Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 (k + 1) - xm‖ ^ 2 ≤
                                Nesterov_second.t f h f' x0 1 / Nesterov_second.γ f h f' x0 1 ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 1) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                            φ (Nesterov_second.x f h f' x0 ↑1) - φ xm -
                                  (1 - Nesterov_second.γ f h f' x0 ↑1) *
                                    (φ (Nesterov_second.x f h f' x0 (↑1 - 1)) - φ xm) ≤
                                Nesterov_second.γ f h f' x0 ↑1 ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑1) *
                                  (‖Nesterov_second.y f h f' x0 (↑1 - 1) - xm‖ ^ 2 -
                                    ‖Nesterov_second.y f h f' x0 ↑1 - xm‖ ^ 2) →
                              ∀ (n : ℕ),
                                Nesterov_second.t f h f' x0 (n + 1) / Nesterov_second.γ f h f' x0 (n + 1) ^ 2 >
                                  0 := sorry


theorem NesterovAccelerationSecond_extracted_42 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2 ≤
                              Nesterov_second.t f h f' x0 ↑k / Nesterov_second.γ f h f' x0 ↑k ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2) →
                          (∀ (k : ℕ),
                              Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 (k + 1) - xm‖ ^ 2 ≤
                                Nesterov_second.t f h f' x0 1 / Nesterov_second.γ f h f' x0 1 ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 1) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                            ∀ (k : ℕ),
                              (∀ (n : ℕ),
                                  Nesterov_second.t f h f' x0 (n + 1) / Nesterov_second.γ f h f' x0 (n + 1) ^ 2 > 0) →
                                φ (Nesterov_second.x f h f' x0 1) - φ xm ≤
                                    1 ^ 2 / (2 * Nesterov_second.t f h f' x0 1) *
                                      (‖Nesterov_second.y f h f' x0 0 - xm‖ ^ 2 -
                                        ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                                  Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                      (f (Nesterov_second.x f h f' x0 (k + 1)) +
                                            h (Nesterov_second.x f h f' x0 (k + 1)) -
                                          f xm -
                                        h xm) =
                                    Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                      (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) := sorry


theorem NesterovAccelerationSecond_extracted_43 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2 ≤
                              Nesterov_second.t f h f' x0 ↑k / Nesterov_second.γ f h f' x0 ↑k ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2) →
                          (∀ (k : ℕ),
                              Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 (k + 1) - xm‖ ^ 2 ≤
                                Nesterov_second.t f h f' x0 1 / Nesterov_second.γ f h f' x0 1 ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 1) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                            ∀ (k : ℕ),
                              (∀ (n : ℕ),
                                  Nesterov_second.t f h f' x0 (n + 1) / Nesterov_second.γ f h f' x0 (n + 1) ^ 2 > 0) →
                                φ (Nesterov_second.x f h f' x0 1) - φ xm ≤
                                    1 ^ 2 / (2 * Nesterov_second.t f h f' x0 1) *
                                      (‖Nesterov_second.y f h f' x0 0 - xm‖ ^ 2 -
                                        ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                                  Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                      (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) ≤
                                    Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                        (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) +
                                      1 / 2 * ‖Nesterov_second.y f h f' x0 (k + 1) - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_44 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2 ≤
                              Nesterov_second.t f h f' x0 ↑k / Nesterov_second.γ f h f' x0 ↑k ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2) →
                          (∀ (k : ℕ),
                              Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 (k + 1) - xm‖ ^ 2 ≤
                                Nesterov_second.t f h f' x0 1 / Nesterov_second.γ f h f' x0 1 ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 1) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                            ∀ (k : ℕ),
                              (∀ (n : ℕ),
                                  Nesterov_second.t f h f' x0 (n + 1) / Nesterov_second.γ f h f' x0 (n + 1) ^ 2 > 0) →
                                φ (Nesterov_second.x f h f' x0 1) - φ xm ≤
                                    1 ^ 2 / (2 * Nesterov_second.t f h f' x0 1) *
                                      (‖Nesterov_second.y f h f' x0 0 - xm‖ ^ 2 -
                                        ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                                  Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                        (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) +
                                      1 / 2 * ‖Nesterov_second.y f h f' x0 (k + 1) - xm‖ ^ 2 ≤
                                    Nesterov_second.t f h f' x0 1 / Nesterov_second.γ f h f' x0 1 ^ 2 *
                                        (φ (Nesterov_second.x f h f' x0 1) - φ xm) +
                                      1 / 2 * ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_45 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x0 : E} {f h : E → ℝ} {f' : E → E}
  {alg : Nesterov_second f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) :
  let φ := fun z => f z + h z;
  (∀ (z : E), φ z = f z + h z) →
    (∀ (k : ℕ+),
        Nesterov_second.γ f h f' x0 ↑k • (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
            Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k) ∈
          SubderivAt (Nesterov_second.t f h f' x0 ↑k • h) (Nesterov_second.y f h f' x0 ↑k)) →
      (∀ (w : E) (k : ℕ+),
          Nesterov_second.t f h f' x0 ↑k * h w ≥
            Nesterov_second.t f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) +
              ⟪Nesterov_second.γ f h f' x0 ↑k •
                    (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                  Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
        (∀ (k : ℕ+),
            h (Nesterov_second.x f h f' x0 ↑k) ≤
              (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k)) →
          (∀ (k : ℕ), Nesterov_second.t f h f' x0 k / Nesterov_second.γ f h f' x0 k > 0) →
            (∀ (w : E) (k : ℕ+),
                Nesterov_second.γ f h f' x0 ↑k * h (Nesterov_second.y f h f' x0 ↑k) ≤
                  Nesterov_second.γ f h f' x0 ↑k * h w -
                    Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                      ⟪Nesterov_second.γ f h f' x0 ↑k •
                            (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                          Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                        w - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
              (∀ (k : ℕ+),
                  f (Nesterov_second.x f h f' x0 ↑k) ≤
                    f (Nesterov_second.z f h f' x0 k) +
                        ⟪f' (Nesterov_second.z f h f' x0 k),
                          Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                      ↑(Nesterov_second.l f h f' x0) / 2 *
                        ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                (∀ (k : ℕ+),
                    f (Nesterov_second.x f h f' x0 ↑k) ≤
                      f (Nesterov_second.z f h f' x0 k) +
                          ⟪f' (Nesterov_second.z f h f' x0 k),
                            Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ +
                        1 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                          ‖Nesterov_second.x f h f' x0 ↑k - Nesterov_second.z f h f' x0 k‖ ^ 2) →
                  (∀ (k : ℕ+),
                      f (Nesterov_second.x f h f' x0 ↑k) ≤
                        f (Nesterov_second.z f h f' x0 k) +
                            ⟪f' (Nesterov_second.z f h f' x0 k),
                              (1 - Nesterov_second.γ f h f' x0 ↑k) • Nesterov_second.x f h f' x0 (↑k - 1) +
                                  Nesterov_second.γ f h f' x0 ↑k • Nesterov_second.y f h f' x0 ↑k -
                                Nesterov_second.z f h f' x0 k⟫_ℝ +
                          Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                            ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                    (∀ (k : ℕ+),
                        f (Nesterov_second.x f h f' x0 ↑k) ≤
                          (1 - Nesterov_second.γ f h f' x0 ↑k) * f (Nesterov_second.x f h f' x0 (↑k - 1)) +
                              Nesterov_second.γ f h f' x0 ↑k *
                                (f (Nesterov_second.z f h f' x0 k) +
                                  ⟪f' (Nesterov_second.z f h f' x0 k),
                                    Nesterov_second.y f h f' x0 ↑k - Nesterov_second.z f h f' x0 k⟫_ℝ) +
                            Nesterov_second.γ f h f' x0 ↑k ^ 2 / (2 * Nesterov_second.t f h f' x0 ↑k) *
                              ‖Nesterov_second.y f h f' x0 ↑k - Nesterov_second.y f h f' x0 (↑k - 1)‖ ^ 2) →
                      (∀ (k : ℕ+),
                          h (Nesterov_second.x f h f' x0 ↑k) ≤
                            (1 - Nesterov_second.γ f h f' x0 ↑k) * h (Nesterov_second.x f h f' x0 (↑k - 1)) +
                                Nesterov_second.γ f h f' x0 ↑k * h xm -
                              Nesterov_second.γ f h f' x0 ↑k / Nesterov_second.t f h f' x0 ↑k *
                                ⟪Nesterov_second.γ f h f' x0 ↑k •
                                      (Nesterov_second.y f h f' x0 (↑k - 1) - Nesterov_second.y f h f' x0 ↑k) -
                                    Nesterov_second.t f h f' x0 ↑k • f' (Nesterov_second.z f h f' x0 k),
                                  xm - Nesterov_second.y f h f' x0 ↑k⟫_ℝ) →
                        (∀ (k : ℕ+),
                            Nesterov_second.t f h f' x0 (↑k + 1) / Nesterov_second.γ f h f' x0 (↑k + 1) ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 (↑k + 1)) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 (↑k + 1) - xm‖ ^ 2 ≤
                              Nesterov_second.t f h f' x0 ↑k / Nesterov_second.γ f h f' x0 ↑k ^ 2 *
                                  (φ (Nesterov_second.x f h f' x0 ↑k) - φ xm) +
                                1 / 2 * ‖Nesterov_second.y f h f' x0 ↑k - xm‖ ^ 2) →
                          (∀ (k : ℕ),
                              Nesterov_second.t f h f' x0 (k + 1) / Nesterov_second.γ f h f' x0 (k + 1) ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 (k + 1)) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 (k + 1) - xm‖ ^ 2 ≤
                                Nesterov_second.t f h f' x0 1 / Nesterov_second.γ f h f' x0 1 ^ 2 *
                                    (φ (Nesterov_second.x f h f' x0 1) - φ xm) +
                                  1 / 2 * ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                            (∀ (n : ℕ),
                                Nesterov_second.t f h f' x0 (n + 1) / Nesterov_second.γ f h f' x0 (n + 1) ^ 2 > 0) →
                              φ (Nesterov_second.x f h f' x0 1) - φ xm ≤
                                  1 ^ 2 / (2 * Nesterov_second.t f h f' x0 1) *
                                    (‖Nesterov_second.y f h f' x0 0 - xm‖ ^ 2 -
                                      ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2) →
                                Nesterov_second.t f h f' x0 1 / Nesterov_second.γ f h f' x0 1 ^ 2 *
                                      (φ (Nesterov_second.x f h f' x0 1) - φ xm) +
                                    1 / 2 * ‖Nesterov_second.y f h f' x0 1 - xm‖ ^ 2 ≤
                                  1 / 2 * ‖x0 - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_46 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_second_fix_stepsize f h f' x0] : Nesterov_second_fix_stepsize.γ f h f' x0 1 = 1 := sorry


theorem NesterovAccelerationSecond_extracted_47 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_second_fix_stepsize f h f' x0] (n : ℕ+) :
  (1 - Nesterov_second_fix_stepsize.γ f h f' x0 (↑n + 1)) * Nesterov_second_fix_stepsize.t f h f' x0 (↑n + 1) /
      Nesterov_second_fix_stepsize.γ f h f' x0 (↑n + 1) ^ 2 ≤
    Nesterov_second_fix_stepsize.t f h f' x0 ↑n / Nesterov_second_fix_stepsize.γ f h f' x0 ↑n ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_48 : 0 ≤ 2 ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_49 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_second_fix_stepsize f h f' x0] : 0 ≤ ↑(Nesterov_second_fix_stepsize.l f h f' x0) := sorry


theorem NesterovAccelerationSecond_extracted_50 (n : ℕ+) : (1 + (↑↑n + 1) - 2) * (1 + (↑↑n + 1)) = ↑↑n ^ 2 + 2 * ↑↑n := sorry


theorem NesterovAccelerationSecond_extracted_51 (n : ℕ+) : ↑↑n ^ 2 + 2 * ↑↑n ≤ 1 + 2 * ↑↑n + ↑↑n ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_52 (n : ℕ+) : 1 + 2 * ↑↑n + ↑↑n ^ 2 = (1 + ↑↑n) ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_53 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_second_fix_stepsize f h f' x0] (k : ℕ) :
  0 < Nesterov_second_fix_stepsize.t f h f' x0 k ∧
    Nesterov_second_fix_stepsize.t f h f' x0 k ≤ 1 / ↑(Nesterov_second_fix_stepsize.l f h f' x0) := sorry


theorem NesterovAccelerationSecond_extracted_54 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  [p : Nesterov_second_fix_stepsize f h f' x0] (n : ℕ) :
  0 < Nesterov_second_fix_stepsize.γ f h f' x0 n ∧ Nesterov_second_fix_stepsize.γ f h f' x0 n ≤ 1 := sorry


theorem NesterovAccelerationSecond_extracted_55 (k : ℕ) (hk : k ≠ 0) : 0 < 1 + ↑k := sorry


theorem NesterovAccelerationSecond_extracted_56 (k : ℕ) (hk : k ≠ 0) : ↑k ≥ 1 := sorry


theorem NesterovAccelerationSecond_extracted_57 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_second_fix_stepsize f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  f (Nesterov_second_fix_stepsize.x f h f' x0 (k + 1)) + h (Nesterov_second_fix_stepsize.x f h f' x0 (k + 1)) - f xm -
      h xm ≤
    2 * ↑(Nesterov_second_fix_stepsize.l f h f' x0) / (↑k + 2) ^ 2 * ‖x0 - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_58 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_second_fix_stepsize f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  f (Nesterov_second_fix_stepsize.x f h f' x0 (k + 1)) + h (Nesterov_second_fix_stepsize.x f h f' x0 (k + 1)) - f xm -
      h xm ≤
    Nesterov_second_fix_stepsize.γ f h f' x0 (k + 1) ^ 2 / (2 * Nesterov_second_fix_stepsize.t f h f' x0 (k + 1)) *
      ‖x0 - xm‖ ^ 2 := sorry


theorem NesterovAccelerationSecond_extracted_59 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {f h : E → ℝ} {f' : E → E} {x0 : E}
  {alg : Nesterov_second_fix_stepsize f h f' x0} {xm : E} (minφ : IsMinOn (f + h) univ xm) (k : ℕ) :
  Nesterov_second_fix_stepsize.γ f h f' x0 (k + 1) ^ 2 / (2 * Nesterov_second_fix_stepsize.t f h f' x0 (k + 1)) *
      ‖x0 - xm‖ ^ 2 ≤
    2 * ↑(Nesterov_second_fix_stepsize.l f h f' x0) / (↑k + 2) ^ 2 * ‖x0 - xm‖ ^ 2 := sorry
