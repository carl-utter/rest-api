# WARNING: CURRENTLY IN DEVELOPMENT - DO NOT USE
#A promises-based REST API Boilerplate in ES6 (w/ Code Coverage) using Node, Express, Swagger, & Mongoose

[![Coverage Status](https://coveralls.io/repos/github/carl-utter/rest-api/badge.svg?branch=master)](https://coveralls.io/github/carl-utter/rest-api?branch=master)
[![Maintainability](https://api.codeclimate.com/v1/badges/f52b46f20ea5e897f916/maintainability)](https://codeclimate.com/github/carl-utter/rest-api/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f52b46f20ea5e897f916/test_coverage)](https://codeclimate.com/github/carl-utter/rest-api/test_coverage)
[![bitHound Code](https://www.bithound.io/github/carl-utter/rest-api/badges/code.svg)](https://www.bithound.io/github/carl-utter/rest-api)
[![bitHound Dependencies](https://www.bithound.io/github/carl-utter/rest-api/badges/dependencies.svg)](https://www.bithound.io/github/carl-utter/rest-api/master/dependencies/npm)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg?style=flat-square)](http://commitizen.github.io/cz-cli/)
[![MIT License](https://img.shields.io/npm/l/stack-overflow-copy-paste.svg?style=flat-square)](http://opensource.org/licenses/MIT)

## Overview

This is a boilerplate application for building promised-based REST APIs in Node.js using ES6 w/Express, Swagger, & Mongoose. Includes tooling for Continous Integration, Linting, Testing, Code Coverage, and JWT Authentication because following best practices helps Developers to remain productive.


### Features and Tooling:

| Includes                               | Details                                                                                                                                                                                                                                                     |
|----------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ES6 via Babel                  	 	 | ES6 support using [Babel](https://babeljs.io/).  |
| ES6 Code Coverage via [Istanbul](https://www.npmjs.com/package/istanbul)   | Supports code coverage of ES6 code using Istanbul and Mocha. Code coverage reports are saved in `coverage/` directory post `yarn test` execution. Open `coverage/lcov-report/index.html` to view coverage report. `yarn test` also displays code coverage summary on console. Code coverage can also be enforced overall and per file as well, configured via .istanbul.yml |
| [Yarn](https://yarnpkg.com) over NPM   |  Yarn Package Manager is released by the Facebook team. You can read more about it [here](https://code.facebook.com/posts/1840075619545360) |
| Promisified Code via [Bluebird](https://github.com/petkaantonov/bluebird)  | All if the code is promisified, including the tests via [supertest-as-promised](https://www.npmjs.com/package/supertest-as-promised). |
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

Set environment (vars):
```sh
cp .env.default .env
```

Start server:
```sh
# Start server
yarn start

# Selectively set the DEBUG .env var to activate logging
DEBUG=rest-api:* yarn start
```
NOTE: Refer to [debug](https://www.npmjs.com/package/debug) for information about selectively turnning on logs.

Tests:
```sh
# To run tests written in ES6
yarn test

# To run tests written in ES6 along with code coverage
yarn test:coverage

# To run tests on file change
yarn test:watch

# To run tests while enforcing code coverage (configured via .istanbul.yml)
yarn test:check-coverage
```

Lint:
```sh
# Lint the code with ESLint
yarn lint

# To run lint on file change
yarn lint:watch
```

Gulp Tasks:
```sh
# Clear out the dist and coverage directories
gulp clean

# Default task - Clears out the dist and coverage directories (compiles using Babel).
gulp
```

##### Deployment

```sh
# Compile to ES5
1. yarn build

# Upload dist/ to the server
2. scp -rp dist/ user@dest:/path

# Install production dependencies only
3. yarn --production

# Use a process manager to start the service(s)
4. Example: pm2 start dist/index.js
```

##TODO:
Add Logging details

##TODO:
Add Docker details

## License
This project is licensed under the [MIT License](https://github.com/carl-utter/rest-api.git/LICENSE)

##TODO:
Add Support info
