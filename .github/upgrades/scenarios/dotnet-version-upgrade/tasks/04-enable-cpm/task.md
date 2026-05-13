# 04-enable-cpm: Enable Central Package Management

Create Directory.Packages.props at the solution root with centralized package versions. Update all project files to remove Version attributes from PackageReference elements (versions managed centrally).

**Done when**: Directory.Packages.props exists, all projects use centralized versioning, solution builds successfully.
