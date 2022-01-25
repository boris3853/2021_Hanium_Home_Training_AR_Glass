
"use strict";

let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let SendBytes = require('./SendBytes.js')
let TestNestedService = require('./TestNestedService.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestResponseOnly = require('./TestResponseOnly.js')
let AddTwoInts = require('./AddTwoInts.js')
let TestEmpty = require('./TestEmpty.js')

module.exports = {
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestMultipleResponseFields: TestMultipleResponseFields,
  SendBytes: SendBytes,
  TestNestedService: TestNestedService,
  TestRequestOnly: TestRequestOnly,
  TestRequestAndResponse: TestRequestAndResponse,
  TestArrayRequest: TestArrayRequest,
  TestResponseOnly: TestResponseOnly,
  AddTwoInts: AddTwoInts,
  TestEmpty: TestEmpty,
};
