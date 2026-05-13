# Upgrade Options — React.NET

Assessment: 18 projects (8 .NET Framework-only to delete, 10 .NET Core/Standard to upgrade to net10.0), 300 issues total, security vulnerabilities in React.Core

## Strategy

### Upgrade Strategy
After deleting 8 .NET Framework-only projects, 10 remaining projects share a shallow dependency graph (max 3 levels deep) with React.Core as the sole foundation.

| Value | Description |
|-------|-------------|
| **All-at-Once** (selected) | Upgrade all 10 remaining projects simultaneously in a single pass. Fastest approach for this small scope. |
| Bottom-Up | Upgrade leaf libraries first, then work upward tier by tier. Adds overhead without benefit here since we're removing framework projects, not migrating them. |

## Project Structure

### Project Approach
User explicitly requested deleting all .NET Framework-only projects (8 projects) and keeping only .NET Core/Standard projects.

| Value | Description |
|-------|-------------|
| **Delete Framework Projects** (selected) | Remove 8 .NET Framework-only projects from the solution and delete their files. Update remaining project references. |

### Package Management
10 projects without centralized package management; multiple shared packages across projects.

| Value | Description |
|-------|-------------|
| Skip CPM | Keep existing per-project PackageReference style. Can adopt CPM separately later. |
| **Enable CPM** (selected) | Add Directory.Packages.props and centralize all package versions. Adds scope to this upgrade. |

## Compatibility

### Unsupported Packages
Assessment found incompatible and deprecated packages across several projects.

| Value | Description |
|-------|-------------|
| **Replace or Remove** (selected) | Find compatible replacements for incompatible packages; remove packages only used by deleted projects. |

## Modernization

### Nullable Reference Types
Target is net10.0 and C# projects do not currently have nullable enabled.

| Value | Description |
|-------|-------------|
| Skip | Do not enable nullable reference types during this upgrade. Can be done separately. |
| **Enable** (selected) | Enable `<Nullable>enable</Nullable>` and fix all warnings. Significant additional scope. |
