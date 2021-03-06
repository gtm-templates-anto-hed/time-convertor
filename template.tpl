___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Time Converter",
  "categories": ["ANALYTICS"],
  "description": "Easily convert time units ex : seconds in milliseconds return an integer value",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "group1From",
    "displayName": "Time to convert",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "TEXT",
        "name": "text1FromAmount",
        "displayName": "Input Value (time unit)",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NUMBER"
          }
        ],
        "help": "The field must be filled with an unit value ex : 130"
      },
      {
        "type": "SELECT",
        "name": "dropDownMenu1From",
        "displayName": "From",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "milliseconds",
            "displayValue": "Millisecond(s)"
          },
          {
            "value": "seconds",
            "displayValue": "Second(s)"
          },
          {
            "value": "minutes",
            "displayValue": "Minute(s)"
          },
          {
            "value": "hours",
            "displayValue": "Hour(s)"
          },
          {
            "value": "days",
            "displayValue": "Day(s)"
          },
          {
            "value": "weeks",
            "displayValue": "Week(s)"
          },
          {
            "value": "months",
            "displayValue": "Month(s)"
          },
          {
            "value": "years",
            "displayValue": "Year(s)"
          },
          {
            "value": "decades",
            "displayValue": "Decade(s)"
          },
          {
            "value": "centuries",
            "displayValue": "Century(ies)"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "seconds",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "dropDownMenu1To",
        "displayName": "To",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "milliseconds",
            "displayValue": "Millisecond(s)"
          },
          {
            "value": "seconds",
            "displayValue": "Second(s)"
          },
          {
            "value": "minutes",
            "displayValue": "Minute(s)"
          },
          {
            "value": "hours",
            "displayValue": "Hour(s)"
          },
          {
            "value": "days",
            "displayValue": "Day(s)"
          },
          {
            "value": "weeks",
            "displayValue": "Week(s)"
          },
          {
            "value": "months",
            "displayValue": "Month(s)"
          },
          {
            "value": "years",
            "displayValue": "Year(s)"
          },
          {
            "value": "decades",
            "displayValue": "Decade(s)"
          },
          {
            "value": "centuries",
            "displayValue": "Century(ies)"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "milliseconds",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "help": ""
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
const makeInteger = require('makeInteger');
const makeString = require('makeString');
const get = require('getType');

var amount = makeInteger(data.text1FromAmount);
var from = data.dropDownMenu1From;
var to = data.dropDownMenu1To;


log(get(amount));

if (to === 'milliseconds'){
switch (from) {
  case 'milliseconds':
    return makeInteger(1*amount);
  case 'seconds':
    return makeInteger(1000*amount);
  case 'minutes':
    return makeInteger(60000*amount);
  case 'hours':
    return makeInteger(3600000*amount);
  case 'days':
    return makeInteger(86400000*amount);
  case 'weeks':
    return makeInteger(604800000*amount);
  case 'months':
    return makeInteger(2628000000*amount);
  case 'years':
    return makeInteger(31536000000*amount);
  case 'decades':
    return makeInteger(315360000000*amount);
  case 'centuries':
    return makeInteger(3153600000000*amount);
}

} else if (to === 'seconds'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.001*amount);
  case 'seconds':
    return makeInteger(1*amount);
  case 'minutes':
    return makeInteger(60*amount);
  case 'hours':
    return makeInteger(3600*amount);
  case 'days':
    return makeInteger(86400*amount);
  case 'weeks':
    return makeInteger(604800*amount);
  case 'months':
    return makeInteger(2628000*amount);
  case 'years':
    return makeInteger(31540000*amount);
  case 'decades':
    return makeInteger(315400000*amount);
  case 'centuries':
    return makeInteger(3154000000*amount);
}
} else if (to === 'minutes'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.000016666666666667*amount);
  case 'seconds':
    return makeInteger(0.0166667*amount);
  case 'minutes':
    return makeInteger(1*amount);
  case 'hours':
    return makeInteger(60*amount);
  case 'days':
    return makeInteger(1440*amount);
  case 'weeks':
    return makeInteger(10080*amount);
  case 'months':
    return makeInteger(43829.1*amount);
  case 'years':
    return makeInteger(525949.2*amount);
  case 'decades':
    return makeInteger(5259492*amount);
  case 'centuries':
    return makeInteger(52594920*amount);
}
} else if (to === 'hours'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.00000027777777777778*amount);
  case 'seconds':
    return makeInteger(0.0003*amount);
  case 'minutes':
    return makeInteger(0.0167*amount);
  case 'hours':
    return makeInteger(1*amount);
  case 'days':
    return makeInteger(24*amount);
  case 'weeks':
    return makeInteger(168*amount);
  case 'months':
    return makeInteger(730485*amount);
  case 'years':
    return makeInteger(8765.82*amount);
  case 'decades':
    return makeInteger(87658.2*amount);
  case 'centuries':
    return makeInteger(876582*amount);
}
} else if (to === 'days'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.000000011574074074074*amount);
  case 'seconds':
    return makeInteger(0.000011574*amount);
  case 'minutes':
    return makeInteger(0.000694*amount);
  case 'hours':
    return makeInteger(0.041667*amount);
  case 'days':
    return makeInteger(1*amount);
  case 'weeks':
    return makeInteger(7*amount);
  case 'months':
    return makeInteger(30.436875*amount);
  case 'years':
    return makeInteger(365.2425*amount);
  case 'decades':
    return makeInteger(3652.425*amount);
  case 'centuries':
    return makeInteger(36524.25*amount);
}
} else if (to === 'weeks'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.0000000016534*amount);
  case 'seconds':
    return makeInteger(0.0000016534*amount);
  case 'minutes':
    return makeInteger(0.000099206*amount);
  case 'hours':
    return makeInteger(0.005952*amount);
  case 'days':
    return makeInteger(0.142857*amount);
  case 'weeks':
    return makeInteger(1*amount);
  case 'months':
    return makeInteger(4.348125*amount);
  case 'years':
    return makeInteger(52.1775*amount);
  case 'decades':
    return makeInteger(521.775*amount);
  case 'centuries':
    return makeInteger(5217.75*amount);
}
} else if (to === 'months'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.00000000038026*amount);
  case 'seconds':
    return makeInteger(0.00000038026*amount);
  case 'minutes':
    return makeInteger(0.000022816*amount);
  case 'hours':
    return makeInteger(0.001369*amount);
  case 'days':
    return makeInteger(0.032855*amount);
  case 'weeks':
    return makeInteger(4.348125*amount);
  case 'months':
    return makeInteger(1*amount);
  case 'years':
    return makeInteger(12*amount);
  case 'decades':
    return makeInteger(120*amount);
  case 'centuries':
    return makeInteger(1200*amount);
}
} else if (to === 'years'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.000000000031689*amount);
  case 'seconds':
    return makeInteger(0.000000031689*amount);
  case 'minutes':
    return makeInteger(0.0000019013*amount);
  case 'hours':
    return makeInteger(0.000114*amount);
  case 'days':
    return makeInteger(0.002738*amount);
  case 'weeks':
    return makeInteger(0.019165*amount);
  case 'months':
    return makeInteger(0.083333*amount);
  case 'years':
    return makeInteger(1*amount);
  case 'decades':
    return makeInteger(10*amount);
  case 'centuries':
    return makeInteger(100*amount);
}
} else if (to === 'decades'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.0000000000031689*amount);
  case 'seconds':
    return makeInteger(0.0000000031689*amount);
  case 'minutes':
    return makeInteger(0.00000019013*amount);
  case 'hours':
    return makeInteger(0.000011408*amount);
  case 'days':
    return makeInteger(0.000274*amount);
  case 'weeks':
    return makeInteger(0.001917*amount);
  case 'months':
    return makeInteger(0.008333*amount);
  case 'years':
    return makeInteger(0.1*amount);
  case 'decades':
    return makeInteger(1*amount);
  case 'centuries':
    return makeInteger(10*amount);
}
} else if (to === 'centuries'){
switch (from) {
  case 'milliseconds':
    return makeInteger(0.00000000000031689*amount);
  case 'seconds':
    return makeInteger(0.00000000031689*amount);
  case 'minutes':
    return makeInteger(0.000000019013*amount);
  case 'hours':
    return makeInteger(0.0000011408*amount);
  case 'days':
    return makeInteger(0.000027379*amount);
  case 'weeks':
    return makeInteger(0.000192*amount);
  case 'months':
    return makeInteger(0.000833*amount);
  case 'years':
    return makeInteger(0.01*amount);
  case 'decades':
    return makeInteger(0.1*amount);
  case 'centuries':
    return makeInteger(1*amount);
}
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 4/14/2021, 8:46:46 PM
