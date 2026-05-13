## Progress Details - 03-upgrade-all-projects

### TFM Changes
All 10 projects updated to net10.0 (single-target), dropping all old TFMs.

### Package Updates
- Newtonsoft.Json 12.0.3 -> 13.0.3 (security vulnerability fix)
- Microsoft.Extensions.DependencyModel 2.1.0 -> 9.0.0
- Microsoft.Extensions.Caching.Memory 2.2.0 -> 9.0.0

### ASP.NET Core Migration
- Removed conditional Microsoft.AspNetCore.* package references (netstandard2.0 conditions)
- Replaced with unconditional FrameworkReference Microsoft.AspNetCore.App (no version needed for net10.0)
- Affected: React.AspNet, React.AspNet.Middleware, React.Router, React.Tests

### Code Fixes
- Removed obsolete serialization constructors (SerializationInfo/StreamingContext) from 10 exception classes
- Suppressed SYSLIB0051 in TinyIoC.cs (third-party code)
- Fixed QueryString null check warning in React.Router/HtmlHelperExtensions.cs
- Replaced RNGCryptoServiceProvider with RandomNumberGenerator.GetBytes in tests
- Removed deprecated DotNetCliToolReference for dotnet-xunit
- Created SharedAssemblyVersionInfo.cs (missing build artifact)
- Created stub .generated.min.js resource files

### Conditional ItemGroup Cleanup
- Removed all TFM-conditional ItemGroups (net40, net45, netstandard2.0, netcoreapp3.0, netcoreapp3.1)
- Merged needed items into unconditional ItemGroups

### Build Result
Solution builds with 0 errors, 0 warnings.
