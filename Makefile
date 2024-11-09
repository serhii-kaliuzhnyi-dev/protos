.PHONY: generate

generate: ## Generate code from proto files
	@protoc -I proto proto/sso/*.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative

# Add alias 'gen' to call the same target
gen: generate
