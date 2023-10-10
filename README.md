# go-web-frameworks-benchmark

Some load tests for checking the performance of each web framework and concurrency strategy.

My notes about the test: https://felipeschossler.notion.site/Go-Web-Frameworks-basic-benchmark-c6085f2ee90c46a986e0273dc3d71f09?pvs=4

The test was made by `GET` request to a `/hello` endpoint that returns a JSON: `{"message": "Hello, World!"}` simulating 100 Virtual Users using k6.

## Requirements

- Docker (with Compose)

## Using

1. Clone the repo and enter in the repo folder
2. `chmod +x ./run-test.sh`
3. Choose a framework to test. Example: `./run-test.sh gin` for benchmark test `gin` and check the results after 30 seconds. 

## Help

- For retriving all the framework options execute: `./run-test --help`