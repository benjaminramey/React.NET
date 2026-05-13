# .NET Version Upgrade

## Preferences
- **Flow Mode**: Automatic
- **Target Framework**: net10.0 (.NET 10.0 LTS)
- **Scope**: .NET Core projects only — delete all .NET Framework-only projects from the solution

## Source Control
- **Source Branch**: dotnet-version-upgrade
- **Working Branch**: dotnet-version-upgrade (reusing existing branch)
- **Commit Strategy**: After Each Task

## Key Decisions Log
- 2025-01-01: User requested deleting all full-framework projects and only upgrading .NET Core projects to .NET 10.0
