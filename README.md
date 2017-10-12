# IN DEVELOPMENT - DO NOT USE OR FORK
#An Express, Mongoose, & Promises-based REST API Boilerplate in ES6 with Code Coverage [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

[![Coverage Status](https://coveralls.io/repos/github/carl-utter/rest-api/badge.svg?branch=master)](https://coveralls.io/github/carl-utter/rest-api?branch=master)
[![Maintainability](https://api.codeclimate.com/v1/badges/f52b46f20ea5e897f916/maintainability)](https://codeclimate.com/github/carl-utter/rest-api/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f52b46f20ea5e897f916/test_coverage)](https://codeclimate.com/github/carl-utter/rest-api/test_coverage)
[![bitHound Code](https://www.bithound.io/github/carl-utter/rest-api/badges/code.svg)](https://www.bithound.io/github/carl-utter/rest-api)
[![bitHound Dependencies](https://www.bithound.io/github/carl-utter/rest-api/badges/dependencies.svg)](https://www.bithound.io/github/carl-utter/rest-api/master/dependencies/npm)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg?style=flat-square)](http://commitizen.github.io/cz-cli/)
[![MIT License](https://img.shields.io/npm/l/stack-overflow-copy-paste.svg?style=flat-square)](http://opensource.org/licenses/MIT)

## Overview

This is a boilerplate application for building Promised-based REST APIs in Node.js using ES6 w/Express, Mongoose, and Swagger with Code Coverage and JWT Authentication. Following best practices help Developers to remain productive. This application leverages the [Airbnb's Javascript style guide](https://github.com/airbnb/javascript).


### Features and Tooling:

| Includes                               | Details                                                                                                                                                                                                                                                     |
|----------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ES6 via Babel                  	 	 | ES6 support using [Babel](https://babeljs.io/).  |
| JWT Authentication                     | Supports authentication using [jsonwebtoken](https://www.npmjs.com/package/jsonwebtoken).  |
| Code Linting               			 | JavaScript code linting is done using [ESLint](http://eslint.org) - a pluggable linter tool for identifying and reporting on patterns in JavaScript. Uses ESLint with [eslint-config-airbnb](https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb), which tries to follow the Airbnb JavaScript style guide. |
| Auto server restart                  	 | Restart the server using [Nodemon](https://github.com/remy/nodemon) in real-time anytime an edit is made, with Babel compilation and ESLint. |
| ES6 Code Coverage via [Istanbul](https://www.npmjs.com/package/istanbul)   | Supports code coverage of ES6 code using Istanbul and Mocha. Code coverage reports are saved in `coverage/` directory post `yarn test` execution. Open `coverage/lcov-report/index.html` to view coverage report. `yarn test` also displays code coverage summary on console. Code coverage can also be enforced overall and per file as well, configured via .istanbul.yml |
| Debugging via [Debug](https://www.npmjs.com/package/debug)                 | Instead of inserting and deleting console.log you can replace it with the debug function and just leave it there. You can then selectively debug portions of the code by setting DEBUG env variable. If the DEBUG env variable is not set, nothing will be displayed to the console. |
| Promisified Code via [Bluebird](https://github.com/petkaantonov/bluebird)  | All if the code is promisified, including the tests via [supertest-as-promised](https://www.npmjs.com/package/supertest-as-promised). |
| API Parameter Validation via [express-validation](https://www.npmjs.com/package/express-validation) | Validate body, params, query, headers and cookies of a request (via middleware) and return a response with errors; if any of the configured validation rules fail. You won't anymore need to make your route handler dirty with such validations. |
| Pre-commit hooks                       | Before commits occurs locally, a lint and tests are run, thus ensuring tested and quality code is being committed. |
| Secure app via [Helmet](https://github.com/helmetjs/helmet)                | Helmet helps to secure Express apps by setting various and appropriate HTTP headers. |
| [Yarn](https://yarnpkg.com) over NPM   |  Yarn Package Manager is released by the Facebook team. You can read more about it [here](https://code.facebook.com/posts/1840075619545360) |

- CORS support via [cors](https://github.com/expressjs/cors)
- Leverages [http-status](https://www.npmjs.com/package/http-status) to set http status code. It is recommended to use `httpStatus.INTERNAL_SERVER_ERROR` rather than `500` when setting status code.
- Impliments `.editorconfig` allowing developers to define and maintain consistent coding styles between different editors and IDEs.
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
cp .env.example .env
```

Start server:
```sh
# Start server
yarn start

# Selectively set the DEBUG .env var to activate logging
DEBUG=rest-api:* yarn start
```
NOTE: Refer to [debug](https://www.npmjs.com/package/debug) for information about selectively turnning on logs.

##TODO:
Add Testing details

##TODO:
Add Deployment details

##TODO:
Add Logging details

##TODO:
Add Docker details

## License
This project is licensed under the [MIT License](https://github.com/carl-utter/rest-api.git/LICENSE)

##TODO:
Add Support info
