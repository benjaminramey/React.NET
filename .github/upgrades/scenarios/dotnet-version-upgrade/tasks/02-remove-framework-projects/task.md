# 02-remove-framework-projects: Remove .NET Framework-only projects from solution

Remove the 8 .NET Framework-only projects from the solution file and delete their project directories: Cassette.React, React.MSBuild, React.Owin, React.Router.Mvc4, React.Sample.Owin, React.Web, React.Web.Mvc4, System.Web.Optimization.React.

After removal, update any remaining project references that pointed to deleted projects. React.Tests currently references React.Web.Mvc4, React.Router.Mvc4, and React.Owin. React.Tests.Benchmarks references React.Web.Mvc4. These references must be removed and affected code updated or removed.

**Done when**: 8 framework projects are removed from the solution, their directories deleted, all dangling project references removed, and the solution loads without errors.
