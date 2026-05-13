# 03-upgrade-all-projects: Upgrade all remaining projects to net10.0

Update TargetFramework(s) for all 10 remaining projects from their current TFMs (netstandard2.0, netcoreapp2.0, netcoreapp3.0, netcoreapp3.1) to net10.0. Drop all multi-targeting — each project targets only net10.0.

Update all NuGet packages to versions compatible with net10.0. Address the security vulnerability in React.Core (NuGet.0004). Replace deprecated packages. Fix any API breaking changes (source/binary incompatibilities flagged in assessment for React.AspNet.Middleware, React.Core, React.Tests).

Projects: React.Core, React.AspNet, React.AspNet.Middleware, React.Router, React.Template, React.Sample.ConsoleApp, React.Tests, React.Tests.Benchmarks, React.Tests.Common, React.Tests.Integration.

**Done when**: All 10 projects target net10.0, all packages updated, solution builds with zero errors and zero warnings.
