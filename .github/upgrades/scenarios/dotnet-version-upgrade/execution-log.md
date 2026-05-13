
## [2026-05-13 11:57] 01-prerequisites

.NET 10 SDK verified. No global.json found — no changes needed.


## [2026-05-13 12:02] 02-remove-framework-projects

Removed 10 .NET Framework-only projects from solution and deleted their directories (original 8 + React.Sample.Mvc4 and React.Sample.Cassette discovered during execution). No dangling project references remain. Committed.

