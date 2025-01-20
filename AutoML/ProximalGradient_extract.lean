import Mathlib
import Convex


open Set

theorem extracted_0 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (k : ℕ+) :
  f (proximal_gradient_method.x f h f' x₀ ↑k) + h (proximal_gradient_method.x f h f' x₀ ↑k) -
        f (proximal_gradient_method.xm f h f' x₀) -
      h (proximal_gradient_method.xm f h f' x₀) ≤
    1 / (2 * ↑↑k * proximal_gradient_method.t f h f' x₀) * ‖x₀ - proximal_gradient_method.xm f h f' x₀‖ ^ 2 := sorry


theorem extracted_1 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ := sorry


theorem extracted_2 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ) :
  ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h) := sorry


theorem extracted_3 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  ∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z) := sorry


theorem extracted_4 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  ∀ (z : E),
    z - proximal_gradient_method.t f h f' x₀ • Gt z =
      prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (z - proximal_gradient_method.t f h f' x₀ • f' z) th
        th' := sorry


theorem extracted_5 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  ∀ (z : E),
    z - proximal_gradient_method.t f h f' x₀ • Gt z =
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (z - proximal_gradient_method.t f h f' x₀ • f' z) th
          th' →
      prox_prop (proximal_gradient_method.t f h f' x₀ • h) (z - proximal_gradient_method.t f h f' x₀ • f' z)
        (z - proximal_gradient_method.t f h f' x₀ • Gt z) := sorry


theorem extracted_6 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    ∀ (x : E),
      f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
        f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
          proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2 := sorry


theorem extracted_7 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    ∀ (x : E),
      let y := x - proximal_gradient_method.t f h f' x₀ • Gt x;
      f y ≤ f x + ⟪f' x, y - x⟫_ℝ + ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖y - x‖ ^ 2 := sorry


theorem extracted_8 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    ∀ (x : E),
      let y := x - proximal_gradient_method.t f h f' x₀ • Gt x;
      f y ≤ f x + ⟪f' x, y - x⟫_ℝ + ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖y - x‖ ^ 2 →
        y - x = -proximal_gradient_method.t f h f' x₀ • Gt x := sorry


theorem extracted_9 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      ∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 := sorry


theorem extracted_10 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      ∀ (x : E),
        f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2 ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 := sorry


theorem extracted_11 : 0 ≤ 2 := sorry


theorem extracted_12 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) ≤
        proximal_gradient_method.t f h f' x₀ * (1 / ↑(proximal_gradient_method.L f h f' x₀)) *
          ↑(proximal_gradient_method.L f h f' x₀) := sorry


theorem extracted_13 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      proximal_gradient_method.t f h f' x₀ * (1 / ↑(proximal_gradient_method.L f h f' x₀)) *
          ↑(proximal_gradient_method.L f h f' x₀) =
        proximal_gradient_method.t f h f' x₀ := sorry


theorem extracted_14 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      ↑(proximal_gradient_method.L f h f' x₀) ≠ 0 := sorry


theorem extracted_15 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        ∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z := sorry


theorem extracted_16 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          ∀ (x z : E),
            h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
              h z := sorry


theorem extracted_17 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            ∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ := sorry


theorem extracted_18 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              ∀ (x z : E),
                φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 := sorry


theorem extracted_19 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              ∀ (x z : E),
                φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
                      proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 +
                    (h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) := sorry


theorem extracted_20 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              ∀ (x z : E),
                f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
                      proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 +
                    (h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) ≤
                  f z - ⟪f' x, z - x⟫_ℝ - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
                      proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 +
                    (h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) := sorry


theorem extracted_21 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              ∀ (x z : E),
                f z - ⟪f' x, z - x⟫_ℝ - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
                      proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 +
                    (h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) =
                  φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 := sorry


theorem extracted_22 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              ∀ (a : ℝ),
                proximal_gradient_method.t f h f' x₀ / 2 * a - proximal_gradient_method.t f h f' x₀ * a =
                  -proximal_gradient_method.t f h f' x₀ / 2 * a := sorry


theorem extracted_23 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                ∀ (x : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                    1 / (2 * proximal_gradient_method.t f h f' x₀) *
                      (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                        ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                          2) := sorry


theorem extracted_24 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                ∀ (x : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                    ⟪Gt x, x - proximal_gradient_method.xm f h f' x₀⟫_ℝ -
                      proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 := sorry


theorem extracted_25 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                ∀ (x : E),
                  ⟪Gt x, x - proximal_gradient_method.xm f h f' x₀⟫_ℝ -
                      proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2 =
                    1 / (2 * proximal_gradient_method.t f h f' x₀) *
                      (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                        ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                          2) := sorry


theorem extracted_26 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                ∀ (p q : E),
                  ⟪p, q⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖p‖ ^ 2 =
                    1 / (2 * proximal_gradient_method.t f h f' x₀) *
                      (‖q‖ ^ 2 - ‖q - proximal_gradient_method.t f h f' x₀ • p‖ ^ 2) := sorry


theorem extracted_27 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                proximal_gradient_method.t f h f' x₀ ≠ 0 := sorry


theorem extracted_28 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  ∀ (i : ℕ),
                    proximal_gradient_method.x f h f' x₀ (i + 1) =
                      proximal_gradient_method.x f h f' x₀ i -
                        proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i) := sorry


theorem extracted_29 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    ∀ (i : ℕ),
                      φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤
                        φ (proximal_gradient_method.x f h f' x₀ i) := sorry


theorem extracted_30 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (i : ℕ),
                    proximal_gradient_method.x f h f' x₀ (i + 1) =
                      proximal_gradient_method.x f h f' x₀ i -
                        proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                  ∀ (i : ℕ),
                    φ
                            (proximal_gradient_method.x f h f' x₀ i -
                              proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) -
                          φ (proximal_gradient_method.xm f h f' x₀) ≤
                        1 / (2 * proximal_gradient_method.t f h f' x₀) *
                          (‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                            ‖proximal_gradient_method.x f h f' x₀ i -
                                    proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i) -
                                  proximal_gradient_method.xm f h f' x₀‖ ^
                              2) →
                      φ
                          (proximal_gradient_method.x f h f' x₀ i -
                            proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) ≤
                        φ (proximal_gradient_method.x f h f' x₀ i) +
                            ⟪Gt (proximal_gradient_method.x f h f' x₀ i),
                              proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.x f h f' x₀ i⟫_ℝ -
                          proximal_gradient_method.t f h f' x₀ / 2 *
                            ‖Gt (proximal_gradient_method.x f h f' x₀ i)‖ ^ 2 := sorry


theorem extracted_31 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (i : ℕ),
                    proximal_gradient_method.x f h f' x₀ (i + 1) =
                      proximal_gradient_method.x f h f' x₀ i -
                        proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                  ∀ (i : ℕ),
                    φ
                            (proximal_gradient_method.x f h f' x₀ i -
                              proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) -
                          φ (proximal_gradient_method.xm f h f' x₀) ≤
                        1 / (2 * proximal_gradient_method.t f h f' x₀) *
                          (‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                            ‖proximal_gradient_method.x f h f' x₀ i -
                                    proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i) -
                                  proximal_gradient_method.xm f h f' x₀‖ ^
                              2) →
                      φ (proximal_gradient_method.x f h f' x₀ i) +
                            ⟪Gt (proximal_gradient_method.x f h f' x₀ i),
                              proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.x f h f' x₀ i⟫_ℝ -
                          proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt (proximal_gradient_method.x f h f' x₀ i)‖ ^ 2 ≤
                        φ (proximal_gradient_method.x f h f' x₀ i) := sorry


theorem extracted_32 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      ∀ (i j : ℕ),
                        i ≤ j →
                          φ (proximal_gradient_method.x f h f' x₀ j) ≤
                            φ (proximal_gradient_method.x f h f' x₀ i) := sorry


theorem extracted_33 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      ∀ (i j : ℕ),
                        i ≤ j →
                          let φx := fun n => φ (proximal_gradient_method.x f h f' x₀ (n + i));
                          ∑ n ∈ Finset.range (j - i), (φx (n + 1) - φx n) = φx (j - i) - φx 0 := sorry


theorem extracted_34 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      ∀ (i j : ℕ),
                        i ≤ j →
                          let φx := fun n => φ (proximal_gradient_method.x f h f' x₀ (n + i));
                          ∑ n ∈ Finset.range (j - i), (φx (n + 1) - φx n) = φx (j - i) - φx 0 →
                            let diffφ := fun n => φx (n + 1) - φx n;
                            ∀ (n : ℕ), diffφ n ≤ 0 := sorry


theorem extracted_35 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      ∀ (i j : ℕ),
                        i ≤ j →
                          let φx := fun n => φ (proximal_gradient_method.x f h f' x₀ (n + i));
                          ∑ n ∈ Finset.range (j - i), (φx (n + 1) - φx n) = φx (j - i) - φx 0 →
                            φx (j - i) - φx 0 ≤ 0 := sorry


theorem extracted_36 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      (∀ (i j : ℕ),
                          i ≤ j →
                            φ (proximal_gradient_method.x f h f' x₀ j) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                        ∀ (i k : ℕ),
                          i < k →
                            φ (proximal_gradient_method.x f h f' x₀ k) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                              1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                  ‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                  ‖proximal_gradient_method.x f h f' x₀ (i + 1) -
                                        proximal_gradient_method.xm f h f' x₀‖ ^
                                    2 := sorry


theorem extracted_37 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      (∀ (i j : ℕ),
                          i ≤ j →
                            φ (proximal_gradient_method.x f h f' x₀ j) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                        ∀ (i k : ℕ),
                          i < k →
                            φ (proximal_gradient_method.x f h f' x₀ k) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                              φ (proximal_gradient_method.x f h f' x₀ (i + 1)) -
                                φ (proximal_gradient_method.xm f h f' x₀) := sorry


theorem extracted_38 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      (∀ (i j : ℕ),
                          i ≤ j →
                            φ (proximal_gradient_method.x f h f' x₀ j) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                        ∀ (i k : ℕ),
                          i < k →
                            φ (proximal_gradient_method.x f h f' x₀ (i + 1)) -
                                φ (proximal_gradient_method.xm f h f' x₀) ≤
                              1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                (‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                                  ‖proximal_gradient_method.x f h f' x₀ (i + 1) -
                                        proximal_gradient_method.xm f h f' x₀‖ ^
                                    2) := sorry


theorem extracted_39 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      (∀ (i j : ℕ),
                          i ≤ j →
                            φ (proximal_gradient_method.x f h f' x₀ j) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                        (∀ (i k : ℕ),
                            i < k →
                              φ (proximal_gradient_method.x f h f' x₀ k) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ (i + 1) -
                                          proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                          ∀ (k : ℕ),
                            k •
                                (φ (proximal_gradient_method.x f h f' x₀ k) -
                                  φ (proximal_gradient_method.xm f h f' x₀)) ≤
                              1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                  ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                  ‖proximal_gradient_method.x f h f' x₀ k - proximal_gradient_method.xm f h f' x₀‖ ^
                                    2 := sorry


theorem extracted_40 (k : ℕ) :
  let s := Finset.range k;
  k = s.card := sorry


theorem extracted_41 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (k : ℕ+)
  (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      (∀ (i j : ℕ),
                          i ≤ j →
                            φ (proximal_gradient_method.x f h f' x₀ j) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                        (∀ (i k : ℕ),
                            i < k →
                              φ (proximal_gradient_method.x f h f' x₀ k) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ (i + 1) -
                                          proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                          (∀ (k : ℕ),
                              k •
                                  (φ (proximal_gradient_method.x f h f' x₀ k) -
                                    φ (proximal_gradient_method.xm f h f' x₀)) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ k - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                            2 * ↑↑k * proximal_gradient_method.t f h f' x₀ *
                                (f (proximal_gradient_method.x f h f' x₀ ↑k) +
                                      h (proximal_gradient_method.x f h f' x₀ ↑k) -
                                    f (proximal_gradient_method.xm f h f' x₀) -
                                  h (proximal_gradient_method.xm f h f' x₀)) =
                              2 * proximal_gradient_method.t f h f' x₀ *
                                (↑↑k *
                                  (φ (proximal_gradient_method.x f h f' x₀ ↑k) -
                                    φ (proximal_gradient_method.xm f h f' x₀))) := sorry


theorem extracted_42 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (k : ℕ+)
  (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      (∀ (i j : ℕ),
                          i ≤ j →
                            φ (proximal_gradient_method.x f h f' x₀ j) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                        (∀ (i k : ℕ),
                            i < k →
                              φ (proximal_gradient_method.x f h f' x₀ k) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ (i + 1) -
                                          proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                          (∀ (k : ℕ),
                              k •
                                  (φ (proximal_gradient_method.x f h f' x₀ k) -
                                    φ (proximal_gradient_method.xm f h f' x₀)) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ k - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                            2 * proximal_gradient_method.t f h f' x₀ *
                                (↑↑k *
                                  (φ (proximal_gradient_method.x f h f' x₀ ↑k) -
                                    φ (proximal_gradient_method.xm f h f' x₀))) ≤
                              2 * proximal_gradient_method.t f h f' x₀ *
                                (1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ ↑k - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) := sorry


theorem extracted_43 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (k : ℕ+)
  (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      (∀ (i j : ℕ),
                          i ≤ j →
                            φ (proximal_gradient_method.x f h f' x₀ j) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                        (∀ (i k : ℕ),
                            i < k →
                              φ (proximal_gradient_method.x f h f' x₀ k) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ (i + 1) -
                                          proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                          (∀ (k : ℕ),
                              k •
                                  (φ (proximal_gradient_method.x f h f' x₀ k) -
                                    φ (proximal_gradient_method.xm f h f' x₀)) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ k - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                            2 * proximal_gradient_method.t f h f' x₀ *
                                (1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ ↑k - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) =
                              ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                                ‖proximal_gradient_method.x f h f' x₀ ↑k - proximal_gradient_method.xm f h f' x₀‖ ^
                                  2 := sorry


theorem extracted_44 {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : InnerProductSpace ℝ E]
  [inst_2 : CompleteSpace E] [inst_3 : ProperSpace E] {x₀ : E} {f : E → ℝ} {f' : E → E} {h : E → ℝ}
  {alg : proximal_gradient_method f h f' x₀} (k : ℕ+)
  (th : ContinuousOn (proximal_gradient_method.t f h f' x₀ • h) univ)
  (th' : ConvexOn ℝ univ (proximal_gradient_method.t f h f' x₀ • h)) :
  let Gt := fun x =>
    (1 / proximal_gradient_method.t f h f' x₀) •
      (x -
        prox_point_c' (proximal_gradient_method.t f h f' x₀ • h) (x - proximal_gradient_method.t f h f' x₀ • f' x) th
          th');
  let φ := fun x => f x + h x;
  (∀ (z : E), Gt z - f' z ∈ SubderivAt h (z - proximal_gradient_method.t f h f' x₀ • Gt z)) →
    (∀ (x : E),
        f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
          f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
            proximal_gradient_method.t f h f' x₀ ^ 2 * ↑(proximal_gradient_method.L f h f' x₀) / 2 * ‖Gt x‖ ^ 2) →
      (∀ (x : E),
          f (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
            f x - proximal_gradient_method.t f h f' x₀ * ⟪f' x, Gt x⟫_ℝ +
              proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
        (∀ (x z : E), f x + ⟪f' x, z - x⟫_ℝ ≤ f z) →
          (∀ (x z : E),
              h (x - proximal_gradient_method.t f h f' x₀ • Gt x) +
                  ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ ≤
                h z) →
            (∀ (x z : E),
                h (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                  h z - ⟪Gt x - f' x, z - x + proximal_gradient_method.t f h f' x₀ • Gt x⟫_ℝ) →
              (∀ (x z : E),
                  φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) ≤
                    φ z + ⟪Gt x, x - z⟫_ℝ - proximal_gradient_method.t f h f' x₀ / 2 * ‖Gt x‖ ^ 2) →
                (∀ (x : E),
                    φ (x - proximal_gradient_method.t f h f' x₀ • Gt x) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                      1 / (2 * proximal_gradient_method.t f h f' x₀) *
                        (‖x - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                          ‖x - proximal_gradient_method.t f h f' x₀ • Gt x - proximal_gradient_method.xm f h f' x₀‖ ^
                            2)) →
                  (∀ (i : ℕ),
                      proximal_gradient_method.x f h f' x₀ (i + 1) =
                        proximal_gradient_method.x f h f' x₀ i -
                          proximal_gradient_method.t f h f' x₀ • Gt (proximal_gradient_method.x f h f' x₀ i)) →
                    (∀ (i : ℕ),
                        φ (proximal_gradient_method.x f h f' x₀ (i + 1)) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                      (∀ (i j : ℕ),
                          i ≤ j →
                            φ (proximal_gradient_method.x f h f' x₀ j) ≤ φ (proximal_gradient_method.x f h f' x₀ i)) →
                        (∀ (i k : ℕ),
                            i < k →
                              φ (proximal_gradient_method.x f h f' x₀ k) - φ (proximal_gradient_method.xm f h f' x₀) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ i - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ (i + 1) -
                                          proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                          (∀ (k : ℕ),
                              k •
                                  (φ (proximal_gradient_method.x f h f' x₀ k) -
                                    φ (proximal_gradient_method.xm f h f' x₀)) ≤
                                1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2 -
                                  1 / (2 * proximal_gradient_method.t f h f' x₀) *
                                    ‖proximal_gradient_method.x f h f' x₀ k - proximal_gradient_method.xm f h f' x₀‖ ^
                                      2) →
                            ‖proximal_gradient_method.x f h f' x₀ 0 - proximal_gradient_method.xm f h f' x₀‖ ^ 2 -
                                ‖proximal_gradient_method.x f h f' x₀ ↑k - proximal_gradient_method.xm f h f' x₀‖ ^ 2 ≤
                              ‖x₀ - proximal_gradient_method.xm f h f' x₀‖ ^ 2 := sorry