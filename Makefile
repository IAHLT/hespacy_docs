ifneq (,$(wildcard .env))
    include .env
endif

deploy:
	( \
		mkdocs gh-deploy --force ; \
	)

build:
	( \
		mkdocs build; \
	)

run:
	( \
		mkdocs serve; \
	)