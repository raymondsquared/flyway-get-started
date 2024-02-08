.PHONY: validate
validate:
	flyway validate -environment=default

.PHONY: migrate
migrate:
	flyway migrate -environment=default

.PHONY: baseline
baseline:
	flyway baseline -environment=default

.PHONY: repair
repair:
	flyway repair -environment=default

.PHONY: undo
undo:
	flyway undo -environment=default

.PHONY: clean
clean:
	flyway info -environment=default

.PHONY: info
info:
	flyway info -environment=default
