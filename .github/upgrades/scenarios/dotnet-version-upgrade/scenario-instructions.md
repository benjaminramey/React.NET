# .NET Version Upgrade

## Preferences
- **Flow Mode**: Automatic
- **Target Framework**: net10.0 (.NET 10.0 LTS)
- **Scope**: .NET Core projects only — delete all .NET Framework-only projects from the solution

## Source Control
- **Source Branch**: dotnet-version-upgrade
- **Working Branch**: dotnet-version-upgrade (reusing existing branch)
- **Commit Strategy**: After Each Task

## Upgrade Options
**Source**: .github/upgrades/scenarios/dotnet-version-upgrade/upgrade-options.md

### Strategy
- Upgrade Strategy: All-at-Once

### Project Structure
- Project Approach: Delete Framework Projects (8 projects: Cassette.React, React.MSBuild, React.Owin, React.Router.Mvc4, React.Sample.Owin, React.Web, React.Web.Mvc4, System.Web.Optimization.React)
- Package Management: Enable CPM

### Compatibility
- Unsupported Packages: Replace or Remove

### Modernization
- Nullable Reference Types: Enable

## Strategy
**Selected**: All-at-Once
**Rationale**: After removing 8 .NET Framework-only projects, 10 remaining projects form a shallow dependency graph. Small scope makes atomic upgrade fastest.

### Execution Constraints
- Single atomic upgrade — all projects updated together
- Delete framework-only projects first, then upgrade remaining projects
- Validate full solution build after upgrade
- Enable CPM with Directory.Packages.props after TFM updates
- Enable nullable and fix warnings as a final step

## Key Decisions Log
- User requested deleting all full-framework projects and only upgrading .NET Core projects to .NET 10.0
- User chose to enable CPM and nullable reference types
