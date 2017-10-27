# WARNING: CURRENTLY IN DEVELOPMENT - DO NOT USE
#A promises-based REST API Boilerplate in ES6 (w/ Code Coverage) using Node, Express, Swagger, & Mongoose

[![Build Status](https://travis-ci.org/carl-utter/rest-api.svg?branch=master)](https://travis-ci.org/carl-utter/rest-api)
[![Coverage Status](https://coveralls.io/repos/github/carl-utter/rest-api/badge.svg?branch=master)](https://coveralls.io/github/carl-utter/rest-api?branch=master)
[![bitHound Overall Score](https://www.bithound.io/github/carl-utter/rest-api/badges/score.svg)](https://www.bithound.io/github/carl-utter/rest-api)
[![bitHound Code](https://www.bithound.io/github/carl-utter/rest-api/badges/code.svg)](https://www.bithound.io/github/carl-utter/rest-api)
[![Known Vulnerabilities](https://snyk.io/test/github/carl-utter/rest-api/badge.svg)](https://snyk.io/test/github/carl-utter/rest-api)
[![Maintainability](https://api.codeclimate.com/v1/badges/f52b46f20ea5e897f916/maintainability)](https://codeclimate.com/github/carl-utter/rest-api/maintainability)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![MIT License](https://img.shields.io/npm/l/stack-overflow-copy-paste.svg)](http://opensource.org/licenses/MIT)


## Overview
This is a boilerplate application for building promised-based REST APIs in Node.js using ES6 w/Express, Swagger, & Mongoose. Includes tooling for Continous Integration, Linting, Testing, Code Coverage, and JWT Authentication because following best practices helps Developers to remain productive.


### Features and Tooling:

| Includes                               | Details                                                                                                                                                                                                                                                     |
|----------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ES6 via Babel                  	 	 | ES6 support using [Babel](https://babeljs.io/).  |
| ES6 Code Coverage via [Istanbul](https://www.npmjs.com/package/istanbul)   | Supports code coverage of ES6 code using Istanbul and Mocha. Code coverage reports are saved in `coverage/` directory post `yarn test` execution. Open `coverage/lcov-report/index.html` to view coverage report. `yarn test` also displays code coverage summary on console. Code coverage can also be enforced overall and per file as well, configured via .istanbul.yml |
| [Yarn](https://yarnpkg.com) over NPM   |  Yarn Package Manager is released by the Facebook team. Read more about it here: [here](https://code.facebook.com/posts/1840075619545360) |
| Promisified Code via [Bluebird](https://github.com/petkaantonov/bluebird)  | All if the code is promisified, including the tests via [supertest](https://www.npmjs.com/package/supertest). |
| API Parameter Validation via [express-validation](https://www.npmjs.com/package/express-validation) | Validate body, params, query, headers and cookies of a request (via middleware) and return a response with errors; if any of the configured validation rules fail. You won't anymore need to make your route handler dirty with such validations. |
| JWT Authentication                     | Supports authentication using [jsonwebtoken](https://www.npmjs.com/package/jsonwebtoken).  |
| Secure app via [Helmet](https://github.com/helmetjs/helmet)                | Helmet helps to secure Express apps by setting various and appropriate HTTP headers. |
| Auto server restart                  	 | Restart the server using [Nodemon](https://github.com/remy/nodemon) in real-time anytime an edit is made, with Babel compilation and ESLint. |
| Pre-commit hooks                       | Before commits occurs locally, a lint and tests are run, thus ensuring tested and quality code is being committed. |
| Code Linting               			 | JavaScript code linting is done using [ESLint](http://eslint.org) - a pluggable linter tool for identifying and reporting on patterns in JavaScript. Uses ESLint with [eslint-config-airbnb](https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb), which tries to follow the Airbnb JavaScript style guide. |
| Debugging via [Debug](https://www.npmjs.com/package/debug)                 | Instead of inserting and deleting console.log you can replace it with the debug function and just leave it there. You can then selectively debug portions of the code by setting DEBUG env variable. If the DEBUG env variable is not set, nothing will be displayed to the console. |

- CORS support via [cors](https://github.com/expressjs/cors)
- Leverages [http-status](https://www.npmjs.com/package/http-status) to set http status code. It is recommended to use `httpStatus.INTERNAL_SERVER_ERROR` rather than `500` when setting status code.
- Impliments `.editorconfig` allowing developers to define and maintain consistent coding styles between different editors and IDEs.
- Leverages the [Airbnb's Javascript style guide](https://github.com/airbnb/javascript).
- Tooling inspired by: [Egghead.io - How to Write an Open Source JavaScript Library](https://egghead.io/courses/how-to-write-an-open-source-javascript-library)


## To Get Started:
Clone the repo:
```sh
git clone git@github.com:carl-utter/rest-api.git
cd rest-api
```

Install yarn:
```js
npm install -g yarn
```

Install dependencies:
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
    ...
  }
```
*- AND -*
```json
...
  // Remove the "commitizen": {...} and "commitlint": {...} blocks from the "config" block.
  // NOTE: You can delete the entire "config" block if there is nothing else you are going to use it for.
  "config": {
    "commitizen": {
      "path": "@commitlint/prompt"
    },
    "commitlint": {
      "extends": "@commitlint/config-angular"
    }
    ...
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
    ...
  }
```
*- AND -*
```json
...
  // Add the "commitizen": {...} and "commitlint": {...} blocks into the "config" block
  // NOTE: You can add the entire "config" block if there is not one.
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

Start server:
```sh
# Start server
yarn start
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
*NOTE: Gulp clean will be auto-run via pre-commit hook.*


### Using or Bypassing Commitizen:
Requires that you have completed the *INSTALL AND CONFIGURE commitizen...* steps above.


*Using commitizen to commit changes to a git repo:*
```sh
# first: run this git command
git status

# then: run this git command
git add -A

# then: run this yarn command and follow the commit prompts (assumes your commit script is "cm": "git-cz")
yarn cm

# then: run this git command
git push
```

*To bypass commitizen for commit changes to a git repo (just use regular git commands):*
```sh
# first: run this git command
git status

# then: run this git command
git add -A

# then: run this git command
git commit -m "commit comment here"

# then: run this git command
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

##### TODO:
Add Logging details

##### TODO:
Add Docker Build details

### License
This project is licensed under the [MIT License](https://github.com/carl-utter/rest-api/blob/master/LICENSE.md)

##### TODO:
Add Support info
