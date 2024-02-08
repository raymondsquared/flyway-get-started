# flyway-get-started
Getting Started with Flyway

# Installation

1. Install flyway `brew install flyway`

# How to run

1. Start postgres (docker)
    - `make infrastructure__start`

2. Run migration scripts
    - `make database__info`
        - Prints the details and status information about all the migrations.
        - Info lets you know where you stand. At a glance you will see which migrations have already been applied, which other ones are still pending, when they were executed and whether they were successful or not.
    - `make database__repair`
        - Repairs the schema history table.
        - Repair is your tool to fix issues with the schema history table. It has a few main uses:
            - Remove failed migration entries (only for databases that do NOT support DDL transactions)
            - Realign the checksums, descriptions, and types of the applied migrations with the ones of the available migrations
            - Mark all missing migrations as deleted 
                - As a result, repair must be given the same locations as migrate!
    - `make database__validate`
        - Validates the applied migrations against the available ones.
        - Validate helps you verify that the migrations applied to the database match the ones available locally.
        - This is very useful to detect accidental changes that may prevent you from reliably recreating the schema.
    - `make database__migrate`
        - Migrates the schema to the latest version. Flyway will create the schema history table automatically if it doesn't exist.
        - Migrate is the centerpiece of the Flyway workflow. It will scan the filesystem or your classpath for available migrations. It will compare them to the migrations that have been applied to the database. If any difference is found, it will migrate the database to close the gap.
        - Migrate should preferably be executed on application startup to avoid any incompatibilities between the database and the expectations of the code.



# Inspiration

- 3 musketeer
- flyway
