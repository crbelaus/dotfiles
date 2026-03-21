# General instructions

A list of general instructions and tooling that must be considered for all projects.

## VCS and general tooling

- Even though `git` command line tool is available, prefer to use `jj` if possible. Projects are initialized with `jj git init --colocated` or `jj git clone` so both tools should be available in most cases. Try to not to commit or push automatically unless explicitly told to do so.
- The `gh` command line tool is available to interact with GitHub. When a GitHub link is pasted let's try to use `gh` to fetch the details when possible. When interacting with GitHub do not make changes (submit comments, interact with pull requests, etc.) unless explicitly told to do so.

## Tidewave MCP

In some Elixir projects Tidewave MCP tools are available for Elixir runtime intelligence. If available, prefer these over static code analyisis:

- Use `mcp__tidewave__project_eval` to evaluate code in the running app instead of guessing behavior
- Use `mcp__tidewave__execute_sql_query` for any database inspection tasks
- Use `mcp__tidewave__get_logs` to fetch application logs when debugging
- Use Tidewave's doc/source lookup tools before checking files statically when exploring library APIs
- Always prefer runtime introspection (Tidewave) over static file reading for framework-generated code (routes, schemas, etc.)
