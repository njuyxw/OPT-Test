import Lake
open Lake DSL

package «AutoML» where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`pp.proofs.withType, false⟩,
    ⟨`autoImplicit, false⟩,
    ⟨`relaxedAutoImplicit, false⟩
  ]

@[default_target]
lean_lib «AutoML» {
  -- add any library configuration options here
  moreLinkArgs := #[
    "-L./.lake/packages/LeanCopilot/.lake/build/lib",
    "-lctranslate2"
  ]
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.11.0"

require convex from git
  "https://github.com/Lizn-zn/optlib" @ "lizn_dev"

require LeanCopilot from git "https://github.com/lean-dojo/LeanCopilot.git" @ "v1.6.0"

require smt from git "https://github.com/Lizn-zn/lean-smt" @ "v4.11.0"
