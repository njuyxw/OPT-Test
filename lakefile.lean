import Lake
open Lake DSL

package «AutoML» where
  moreLinkArgs := #[
  ]

@[default_target]
lean_lib «AutoML» {
  -- add any library configuration options here
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.11.0"

require convex from git
  "https://github.com/Lizn-zn/optlib" @ "lizn_dev"
