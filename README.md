# Snowflake dbt SQL Data Engineering

A starter repository for Snowflake analytics engineering using dbt and SQL.

## What is included

- `dbt_project.yml` for a dbt project structure
- `profiles.yml.example` with Snowflake connection placeholders
- `models/` with staging and mart examples
- `sql/` with Snowflake warehouse/database setup templates

## Recommended workflow

1. Install dbt and Snowflake adapter:
   ```bash
   pip install dbt-core dbt-snowflake
   ```
2. Copy `profiles.yml.example` to your home dbt profile location:
   ```bash
   mkdir -p ~/.dbt
   cp profiles.yml.example ~/.dbt/profiles.yml
   ```
3. Update your Snowflake credentials and connection settings.
4. Run dbt commands:
   ```bash
   dbt debug
   dbt run
   dbt test
   ```

## GitHub setup

Use GitHub to create a remote repository named `snowflake-dbt-sql`, then connect it locally:

```bash
git init
git add .
git commit -m "Initial Snowflake + dbt SQL repo"
git remote add origin https://github.com/<your-username>/snowflake-dbt-sql.git
git push -u origin main
```

If you want, I can help you convert this into a GitHub repo and add GitHub Actions later.
