# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.3.1] - 2020-04-22

### Changed

- fixed which QueryResponses are caught by responseStream

## [0.3.0] - 2020-04-22

### Added

- `LinkExceptions` are now caught and included in the `QueryResponse.linkException` property
- added `QueryResponse.dataSource` property
- added basic tests for GraphQL and network errors
- added `Mutation` widget
- added `executeOnListen` flag on `responseStream`

### Changed

- updated default subscription `FetchPolicy` to `CacheAndNetwork`
- override equality for `QueryResponse`
- update example

### Removed

- **BREAKING** removed optimistic flag on `QueryResponse` in favor of source property
- **BREAKING** removed client error from `Query` widget
- remove broken `FetchPolicy` tests

## [0.2.2] - 2020-02-29

### Changed

- `QueryRequest` now extends `Request`
- update `req_builder` to use new URI fragments
- add `QueryReqeust.copyWith`
- add `clientError` object to `Query` Widget
- `req_builder` no longer assigns a unique `queryId` if none is provided

### Removed

- Removed Options objects

## [0.2.1] - 2020-02-22

### Changed

- use latest versions of `gql_build` and `gql_code_builder`

## [0.2.0] - 2020-02-22

### Changed

- rename to "ferry"
- move repo to gql-dart

## [0.1.3] - 2020-02-21

### Changed

- remove 'GQL' prefix
- use latest version of gql_build
- update example

## [0.1.2] - 2020-02-14

### Changed

- update dependencies
- fix erroneous import

## [0.1.1] - 2020-02-14

### Changed

- export CacheProxy

## [0.1.0] - 2020-02-12

### Changed

- **BREAKING** convert options to use built_value

## [0.0.3] - 2020-02-08

### Changed

- update example

## [0.0.2] - 2020-02-08

### Removed

- Remove custom network error
- Remove unnecessary readme code

## [0.0.1] - 2020-02-05

### Added

- Initial release
