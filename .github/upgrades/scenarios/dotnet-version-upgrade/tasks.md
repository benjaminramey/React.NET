# .NET 10 Upgrade Progress

## Overview

Upgrading React.NET solution to .NET 10.0. Deleting 8 .NET Framework-only projects, upgrading 10 remaining .NET Core/Standard projects, enabling CPM and nullable reference types.

**Progress**: 1/6 tasks complete <progress value="17" max="100"></progress> 17%

## Tasks

- ✅ 01-prerequisites: Verify SDK and global.json compatibility ([Content](tasks/01-prerequisites/task.md), [Progress](tasks/01-prerequisites/progress-details.md))
- 🔄 02-remove-framework-projects: Remove .NET Framework-only projects from solution ([Content](tasks/02-remove-framework-projects/task.md))
- 🔲 03-upgrade-all-projects: Upgrade all remaining projects to net10.0
- 🔲 04-enable-cpm: Enable Central Package Management
- 🔲 05-enable-nullable: Enable nullable reference types
- 🔲 06-final-validation: Full solution build and test validation
