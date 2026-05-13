# .NET 10 Upgrade Plan

## Overview

**Target**: Upgrade React.NET solution to .NET 10.0
**Scope**: 10 projects (after deleting 8 .NET Framework-only projects), all SDK-style

### Selected Strategy
**All-At-Once** — All projects upgraded simultaneously in a single operation.
**Rationale**: 10 projects remaining after framework project removal, shallow dependency graph, straightforward TFM upgrade.

## Tasks

### 01-prerequisites: Verify SDK and global.json compatibility

Verify that the .NET 10 SDK is installed and that any global.json files in the repository are compatible with the target framework. Update global.json if it pins an older SDK version.

**Done when**: .NET 10 SDK is confirmed available and global.json (if present) allows net10.0 builds.

---

### 02-remove-framework-projects: Remove .NET Framework-only projects from solution

Remove the 8 .NET Framework-only projects from the solution file and delete their project directories: Cassette.React, React.MSBuild, React.Owin, React.Router.Mvc4, React.Sample.Owin, React.Web, React.Web.Mvc4, System.Web.Optimization.React.

After removal, update any remaining project references that pointed to deleted projects. React.Tests currently references React.Web.Mvc4, React.Router.Mvc4, and React.Owin. React.Tests.Benchmarks references React.Web.Mvc4. These references must be removed and affected code updated or removed.

**Done when**: 8 framework projects are removed from the solution, their directories deleted, all dangling project references removed, and the solution loads without errors.

---

### 03-upgrade-all-projects: Upgrade all remaining projects to net10.0

Update TargetFramework(s) for all 10 remaining projects from their current TFMs (netstandard2.0, netcoreapp2.0, netcoreapp3.0, netcoreapp3.1) to net10.0. Drop all multi-targeting — each project targets only net10.0.

Update all NuGet packages to versions compatible with net10.0. Address the security vulnerability in React.Core (NuGet.0004). Replace deprecated packages. Fix any API breaking changes (source/binary incompatibilities flagged in assessment for React.AspNet.Middleware, React.Core, React.Tests).

Projects: React.Core, React.AspNet, React.AspNet.Middleware, React.Router, React.Template, React.Sample.ConsoleApp, React.Tests, React.Tests.Benchmarks, React.Tests.Common, React.Tests.Integration.

**Done when**: All 10 projects target net10.0, all packages updated, solution builds with zero errors and zero warnings.

---

### 04-enable-cpm: Enable Central Package Management

Create Directory.Packages.props at the solution root with centralized package versions. Update all project files to remove Version attributes from PackageReference elements (versions managed centrally).

**Done when**: Directory.Packages.props exists, all projects use centralized versioning, solution builds successfully.

---

### 05-enable-nullable: Enable nullable reference types

Add `<Nullable>enable</Nullable>` to all 10 projects and fix all nullable warnings (CS8600-series).

**Done when**: All projects have nullable enabled, solution builds with zero nullable warnings.

---

### 06-final-validation: Full solution build and test validation

Clean build the entire solution, run all tests, and document any remaining issues or deferred recommendations.

**Done when**: Solution builds with zero errors and zero warnings, all tests pass.
