# WARNING: NOT OFTEN UPDATED - USE AT OWN RISK
#A promises-based REST API Boilerplate in ES6 (w/ Code Coverage) using Node, Express, & Mongoose

[![Build Status](https://travis-ci.org/carl-utter/rest-api.svg?branch=master)](https://travis-ci.org/carl-utter/rest-api)
[![Coverage Status](https://coveralls.io/repos/github/carl-utter/rest-api/badge.svg?branch=master)](https://coveralls.io/github/carl-utter/rest-api?branch=master)
[![Known Vulnerabilities](https://snyk.io//test/github/carl-utter/rest-api/badge.svg?targetFile=package.json)](https://snyk.io//test/github/carl-utter/rest-api?targetFile=package.json)
[![Maintainability](https://api.codeclimate.com/v1/badges/f52b46f20ea5e897f916/maintainability)](https://codeclimate.com/github/carl-utter/rest-api/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f52b46f20ea5e897f916/test_coverage)](https://codeclimate.com/github/carl-utter/rest-api/test_coverage)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![MIT License](https://img.shields.io/npm/l/stack-overflow-copy-paste.svg)](http://opensource.org/licenses/MIT)


## Overview
This is a boilerplate application for building promised-based REST APIs in Node.js using ES6 w/Express, & Mongoose. Includes tooling for Continous Integration, Linting, Testing, Code Coverage, and JWT Authentication because following best practices helps Developers to remain productive.


### Features and Tooling:

| Includes                 | Details                                                                                                                                                                                                                                                     |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ES6 Code                 | ES6 code support using [Babel](https://babeljs.io/).  |
| ES6 Code Coverage        | ES6 code coverage using [Istanbul](https://www.npmjs.com/package/istanbul) and [Mocha](https://github.com/mochajs/mocha). Code coverage reports are saved in `coverage/` directory post `yarn test` execution. Open `coverage/lcov-report/index.html` to view coverage report. `yarn test` also displays code coverage summary on console. Code coverage can also be enforced overall and per file as well, configured via `.istanbul.yml` |
| ES6 Code Linting         | ES6 Code linting using [ESLint](http://eslint.org) - a pluggable linter tool for identifying and reporting on patterns in JavaScript. Uses ESLint with [eslint-config-airbnb](https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb), which tries to follow the Airbnb JavaScript style guide. |
| Promisified Code         | All of the code is promisified with [Bluebird](https://github.com/petkaantonov/bluebird), including the tests via [Supertest](https://www.npmjs.com/package/supertest). |
| API Parameter Validation | [Express-validation](https://www.npmjs.com/package/express-validation) is used to validate body, params, query, headers and cookies of a request (via middleware) and return a response with errors; if any of the configured validation rules fail. You won't anymore need to make your route handler dirty with such validations. |
| JWT Authentication       | Supports authentication using [jsonwebtoken](https://www.npmjs.com/package/jsonwebtoken).  |
| Secured App              | [Helmet](https://github.com/helmetjs/helmet) helps to secure [Express](https://github.com/expressjs/express) apps by setting various and appropriate HTTP headers. |
| Yarn over NPM            | [Yarn](https://yarnpkg.com) Package Manager is released by the Facebook team. Read more about it here: [here](https://code.facebook.com/posts/1840075619545360) |
| Auto-Server Restart      | Restart the server using [Nodemon](https://github.com/remy/nodemon) in real-time anytime an edit is made, with Babel compilation and ESLint. |
| Consistent Commits       | Performing a commit with [Commitizen](https://github.com/commitizen/cz-cli) instantiates prompts to fill out any required commit fields at commit time. Setup as a git commit hook, you also get instant feedback via [Commitlint](https://github.com/marionebl/commitlint) on the commit message formatting. |
| Pre-Commit Hooks         | Before commits occurs locally, a lint and tests are run via [Husky](https://github.com/typicode/husky), thus ensuring tested and quality code is being committed. |
| Debugging Impliment      | Using [Debug](https://www.npmjs.com/package/debug) means no more inserting, deleting, or commenting out console.log which quickly becomes a mess in the code. Instead, you just replace it with the debug function and leave it there. This allows for selectively debugging portions of the code by setting DEBUG env variable. If the DEBUG env variable is not set, nothing will be displayed to the console. |

- CORS support via [cors](https://github.com/expressjs/cors)
- Leverages [http-status](https://www.npmjs.com/package/http-status) to set http status code. It is recommended to use `httpStatus.INTERNAL_SERVER_ERROR` rather than `500` when setting status code.
- Impliments `.editorconfig` allowing developers to define and maintain consistent coding styles between different editors and IDEs.
- Leverages the [Airbnb's Javascript style guide](https://github.com/airbnb/javascript).
- Tooling inspired by: [Egghead.io - How to Write an Open Source JavaScript Library](https://egghead.io/courses/how-to-write-an-open-source-javascript-library)


## To Get Started:
Clone the repo:
```sh
git clone https://github.com/carl-utter/rest-api.git
cd rest-api
```

Install yarn globally:
```js
npm install -g yarn
```

Install app dependencies:
```sh
yarn
```

#### BEFOR MOVING ON...

This app levereages [commitizen](https://github.com/commitizen/cz-cli) and [commitlint](http://marionebl.github.io/commitlint/#/guides-local-setup) with a *Local-to-Repo Only* configuration. If you are a `commitizen` user with an existing *Global-to-Repo Configuration* in place then you will need to refactor this app to levereage your `commitizen` configuration.

To use `commitizen` *"as-is"* fot this app, you can ignore this section (goto: [OK, MOVING ON](#ok-moving-on)). Otherwise, below are instructions to [REMOVE](#to-remove-and-not-use-commitizen-these-are-one-time-actions-to-perform), and/or, [RE-INSTALL](#to-re-install-and-configure-commitizen-and-commitlint-for-use-these-are-one-time-actions-to-perform) `commitizen` and `commitlint` after removal.

*NOTE: If you intend to use, or, you are already using a version and configuration of `commitizen` that is not the one included in this app, then ensure that it has been installed by `yarn` rather than `npm` so that it's reference(s) will be in the *yarn.lock file.*


###### TO REMOVE AND NOT USE commitizen *(these are "one-time" actions to perform):*

1. Remove any existing `commitizen` instances and dependencies installed by `yarn`:
```sh
# first: run this command
yarn remove commitlint

# then: run this command
yarn remove commitizen
```

2. In the `package.json` file:
```json
  ...
  // Remove the "cm": "git-cz" script from the "scripts" block (i.e. husky git hook)
  "scripts": {
    "cm": "git-cz"
    "..."
  }
```
*- AND -*
```json
...
  // Remove the "commitizen": {"..."} and "commitlint": {"..."} blocks from the "config" block.
  // NOTE: You can delete the entire "config" block if there is nothing else you are going to use it for.
  "config": {
    "commitizen": {
      "path": "@commitlint/prompt"
    },
    "commitlint": {
      "extends": "@commitlint/config-angular"
    }
  }
```

###### TO RE-INSTALL AND CONFIGURE commitizen and commitlint for use *(these are "one-time" actions to perform):*

1. Ensure a clean install by removing any existing `commitlint` and `commitizen` instances and dependencies installed by `yarn`:
```sh
# first: run this command
yarn remove commitlint

# then: run this command
yarn remove commitizen
```

2. Ensure a clean install by removing any existing `commitlint` and `commitizen` instances and dependencies installed by `npm`:
```
# first: run this command
npm uninstall commitlint

# then: run this command
npm uninstall commitizen
```

3. Install and Configure `commitizen` and `commitlint` using `yarn` (a *Local-to-Repo Only* configuration):
```sh
# first: run this command
yarn add commitizen -D

# then: run this command (instantiate commitizen config: path)
./node_modules/.bin/commitizen

# then: run this command
yarn add @commitlint/{cli,config-angular} -D
```

4. Update the `package.json` file (*it must have these in it - do not include comments*):
```json
  ...
  // Add the "cm": "git-cz" script from the "scripts" block (i.e. husky git hook)
  "scripts": {
    "cm": "git-cz",
    "..."
  }
```
*- AND -*
```json
...
  // Add the "commitizen": {"..."} and "commitlint": {"..."} blocks into the "config" block
  // NOTE: You can add the entire "config" block if one does not already exist.
  "config": {
    "commitizen": {
      "path": "@commitlint/prompt"
    },
    "commitlint": {
      "extends": "@commitlint/config-angular"
    }
  }
```
*NOTE: Because this app leverages `pre-commit hooks` via `husky`, the commitizen script cannot be named "commit", it must instead be named something else (e.g. "cm": "git-cz") to prevent a double "git commit" occurance.*


#### OK, MOVING ON...

Set environment (vars @ *[root]/.env.default* (or, @ *[root]/.env* if you've already made an env file):
```sh
cp .env.default .env
```

Start Server:
```sh
# Start server using Yarn
yarn start

# NOTE: The terminal output will look something similar to
yarn run v1.15.2
$ gulp serve
[16:30:16] Requiring external module babel-register
[16:30:16] Using gulpfile ~/Development/rest-api/gulpfile.babel.js
[16:30:16] Starting 'clean'...
[16:30:16] Finished 'clean' after 25 ms
[16:30:16] Starting 'serve'...
[16:30:16] Starting 'copy'...
[16:30:17] Starting 'babel'...
[16:30:17] Finished 'serve' after 78 ms
[16:30:19] Finished 'copy' after 2.05 s
[16:30:19] Finished 'babel' after 2.17 s
[16:30:19] Starting 'nodemon'...
[16:30:19] Finished 'nodemon' after 66 ms
[16:30:19] [nodemon] 1.12.1
[16:30:19] [nodemon] to restart at any time, enter `rs`
[16:30:19] [nodemon] watching: *.*
[16:30:19] [nodemon] starting `node dist/index.js`
server started on port 4040 (development)

```

Now that the Server is running on localhost:4040; use [Postman](https://www.getpostman.com/) to send requests to the API:

Add a User
```sh
# STEP 1: Set Request type to POST

# STEP 2: Set Request URL to http://localhost:4040/api/users

# STEP 3: Paste the following into the Request Body (as raw JSON)
{
    "username": "john doe",
    "mobileNumber": "8005551212"
}

# STEP 4: Click: Send

# RESULT: The Response Body in Postman should look similar to
{
    "__v": 0,
    "username": "john doe",
    "mobileNumber": "8005551212",
    "_id": "5ca28e7fc6345b89d4318bc5",
    "createdAt": "2019-04-01T22:19:43.482Z"
}
```

For the purpose of demonstrating this API's other Request Types; add a second User
```sh
# STEP 1: Set Request type to POST

# STEP 2: Set Request URL to http://localhost:4040/api/users

# STEP 3: Paste the following into the request Body (as raw JSON)
{
    "username": "jane doe",
    "mobileNumber": "8005551213"
}

# STEP 4: Click: Send

# RESULT: The Response Body in Postman should look similar to
{
    "__v": 0,
    "username": "jane doe",
    "mobileNumber": "8005551213",
    "_id": "5ca29c3c60d2cf8d0396e52d",
    "createdAt": "2019-04-01T23:18:20.245Z"
}
```

List all Users
```sh
# STEP 1: Set Request type to: GET

# STEP 2: Set Request URL to: http://localhost:4040/api/users

# STEP 3: Click: Send

# RESULT: The Response Body in Postman should look similar to
[
    {
        "_id": "5ca29c3c60d2cf8d0396e52d",
        "username": "jane doe",
        "mobileNumber": "8005551213",
        "__v": 0,
        "createdAt": "2019-04-01T23:18:20.245Z"
    },
    {
        "_id": "5ca28e7fc6345b89d4318bc5",
        "username": "john doe",
        "mobileNumber": "8005551212",
        "__v": 0,
        "createdAt": "2019-04-01T22:19:43.482Z"
    }
]
```

List a Specific User
```sh
# STEP 1: Set Request type to GET

# STEP 2: Set Request URL to http://localhost:4040/api/users/5ca28e7fc6345b89d4318bc5
# NOTE: the _id hash used in the Request URL must match that of the specific user being listed

# STEP 3: Click: Send

# RESULT: The Response Body in Postman should look similar to
{
    "_id": "5ca28e7fc6345b89d4318bc5",
    "username": "john doe",
    "mobileNumber": "8005551212",
    "__v": 0,
    "createdAt": "2019-04-01T22:19:43.482Z"
}
```

Update a Specific User (e.g. change last digit of mobileNumber from a 2, to a 4)
```sh
# STEP 1: Set Request type to PUT

# STEP 2: Set Request URL to http://localhost:4040/api/users/5ca28e7fc6345b89d4318bc5
# NOTE: the _id hash used in the Request URL must match that of the specific user being updated

# STEP 3: Paste the following into the request Body (as raw JSON)
{
    "username": "john doe",
    "mobileNumber": "8005551214"
}

# STEP 4: Click: Send

# RESULT: The Response Body in Postman should look similar to
{
    "_id": "5ca28e7fc6345b89d4318bc5",
    "username": "john doe",
    "mobileNumber": "8005551214",
    "__v": 0,
    "createdAt": "2019-04-01T22:19:43.482Z"
}
```

Delete a Specific User
```sh
# STEP 1: Set Request type to DELETE

# STEP 2: Set Request URL to http://localhost:4040/api/users/5ca29c3c60d2cf8d0396e52d
# NOTE: the _id hash used in the Request URL must match that of the specific user being deleted

# STEP 3: Click: Send

# RESULT: The Response Body in Postman should look similar to
{
    "_id": "5ca29c3c60d2cf8d0396e52d",
    "username": "jane doe",
    "mobileNumber": "8005551213",
    "__v": 0,
    "createdAt": "2019-04-01T23:18:20.245Z"
}
```


### To Debug:
Selectively set the DEBUG environment to activate debug logging
```sh
# This will turn Debug ON when you use the "yarn start" command (per the package.json scripts block)
yarn start:debug

# OR, you set and start the environment directly by running this command
DEBUG=rest-api:* yarn start
```
*NOTE: Reference [debug](https://www.npmjs.com/package/debug) for more information about selectively turnning on logs.*


### To Run Tests:
This will execute the tests located in the *[root]/server/tests* directory.

```sh
# To run tests written in ES6
yarn test

# To run tests written in ES6 along with code coverage
yarn test:coverage

# To run tests on file change
yarn test:watch

# To run tests while enforcing code coverage (configured @ [root]/.istanbul.yml)
yarn test:check-coverage
```
*NOTE: Tests will auto-run via pre-commit hook.*


### To Run Lint:
Linting is performed against the *[root]/.eslintrc* configuration. This file can be modified to your preference, but should follow [Airbnb's Javascript style guide](https://github.com/airbnb/javascript).

```sh
# Lint the code with ESLint
yarn lint

# To run lint on file change
yarn lint:watch
```
*NOTE: Lint will be auto-run via pre-commit hook.*


### To Run Gulp Tasks:
Some of the `yarn` commands activate `Gulp` tasks but you can also run them directly

```sh
# Clear out the dist and coverage directories
gulp clean

# Default task - Clears out the dist and coverage directories (compiles using Babel)
gulp
```
*NOTE: Gulp clean is auto-run @ pre-commit hook.*


### Using or Bypassing Commitizen for commits:
Assuming that you are using `commitizen` configured *"as-is"* in this app...


###### To use commitizen to commit changes to a git repo just substitue the "git commit" command):
```sh
# first: get file change status using this git command
git status

# then: add all changed files (per git status) using this git command
git add -A

# then: run this yarn command and follow commit prompts (assumes commit script hook "cm": "git-cz")
yarn cm

# finally: push the files to the repo using this git command
git push
```
*- OR -*
###### To bypass commitizen for commit changes to a git repo just use the "git commit" command:
```sh
# first: get file change status using this git command
git status

# then: add all changed files (per git status) using this git command
git add -A

# then: comment on file changes for commit-to-repo using this git command
git commit -m "commit comment here"

# finally: push the files to the repo using this git command
git push
```


## Deployment:

```sh
# Compile to ES5
1. yarn build

# Upload dist/ to the server
2. scp -rp dist/ user@dest:/path

# Install production dependencies only
3. yarn --production

# NOTE: You can use a process manager to start the service(s)
Example: pm2 start dist/index.js
```

### License
This project is licensed under the [MIT License](https://github.com/carl-utter/rest-api/blob/master/LICENSE.md)
