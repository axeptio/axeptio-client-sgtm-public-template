___INFO___

{
  "type": "CLIENT",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Axeptio",
  "categories": [
    "ANALYTICS"
  ],
  "brand": {
    "id": "Axeptio",
    "displayName": "Axeptio"
  },
  "description": "",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "requestPath",
    "displayName": "Request Path",
    "simpleValueType": true,
    "help": "The path of the requests which should be handled by this client (has to start with /).",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "defaultValue": "/path"
  },
  {
    "type": "TEXT",
    "name": "cookieDomain",
    "displayName": "Cookie Domain",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Domain of cookie deposit"
  }
]


___SANDBOXED_JS_FOR_SERVER___

// Necessary APIs
const claimRequest = require('claimRequest');
const getRequestPath = require('getRequestPath');
const returnResponse = require('returnResponse');
const runContainer = require('runContainer');
const setPixelResponse = require('setPixelResponse');
const getRequestQueryParameters = require('getRequestQueryParameters');
const getRemoteAddress = require('getRemoteAddress');
const getRequestHeader = require('getRequestHeader');
const setResponseHeader = require('setResponseHeader');
const getTimestampMillis = require('getTimestampMillis');
const getRequestQueryString = require('getRequestQueryString');
const getRequestBody = require('getRequestBody');
const getRequestMethod = require('getRequestMethod');
const getCookie = require('getCookieValues');
const setCookie = require('setCookie');
const JSON = require('JSON');
const log = require('logToConsole');

const method = getRequestMethod();
// Get the request path for claiming the request
const requestPath = getRequestPath();
// Get the query string parameters and store them in an object
const queryParameters = getRequestQueryParameters();
// Get the full query string and store it as a string
const queryString = getRequestQueryString();
// Get the IP and store it in a variable
const ip = getRemoteAddress();
// Get the UA and store it in a variable
const ua = getRequestHeader('user-agent');
// Get the referrer and store it in a variable
const referer = getRequestHeader('referer');
// Get the timestamp and store it in a variable
const timestamp = getTimestampMillis();

// Get request body, store it in a variable, parse as JSON object
// Note that there might be some further parsing or structuring needed depending on the format of the request body
const requestBody = getRequestBody();
const requestBodyObject = JSON.parse(requestBody);

if (method === 'OPTIONS') {
  
  setPixelResponse();
    
  const origin = getRequestHeader('Origin');
  if (origin) {
    setResponseHeader('Access-Control-Allow-Origin', origin);
    setResponseHeader('Access-Control-Allow-Credentials', 'true');
    setResponseHeader('Access-Control-Allow-Headers', 'Content-Type');
  }
    
  returnResponse();
  
} else {
  
  log(requestPath);

// Claim the request according to the Request Path input field
if (requestPath.indexOf('/consents') > -1 || requestPath.indexOf('/app/consent') > -1 || requestPath.indexOf('/analytics/evts') > -1) {

  claimRequest();
        
  // Create event data object
  const obj = {};
    
  // obj.event_name = event.name;
    
  //obj.event = event;
  
  if (requestPath.indexOf('/consents') > -1) {
    obj.path = '/consents';
    obj.event_name = 'consents';
    
    const axeptio_authorized_vendors = getCookie('axeptio_authorized_vendors')[0];
    setCookie('axeptio_authorized_vendors', axeptio_authorized_vendors, {
      domain: 'auto',
      path: '/',
      secure: true,
      'max-age': 34187400,
      HttpOnly: false
    });
    
    const axeptio_all_vendors = getCookie('axeptio_all_vendors')[0];
    setCookie('axeptio_all_vendors', axeptio_all_vendors, {
      domain: 'auto',
      path: '/',
      secure: true,
      'max-age': 34187400,
      HttpOnly: false
    });
    
    const axeptio_cookies = getCookie('axeptio_cookies')[0];
    setCookie('axeptio_cookies', axeptio_cookies, {
      domain: 'auto',
      path: '/',
      secure: true,
      'max-age': 34187400,
      HttpOnly: false
    });
    
    
    
    
  } else if (requestPath.indexOf('/app/consent') > -1) {
    obj.path = '/app/consent';
    obj.event_name = 'consent';
  } else if (requestPath.indexOf('/analytics/evts') > -1) {
    obj.path = '/analytics/evts';
    obj.event_name = 'analytics';
  }
  
  // Add querystring parameters to event data object
  for (var parameter in queryParameters) {
    obj[parameter] = queryParameters[parameter];
  }
  
  obj.ip_override = ip;
  obj.user_agent = ua;
  obj.page_location = referer;
  obj.timestamp = timestamp;
  obj.requestPath = requestPath;
  obj.requestBody = requestBody;
  obj.requestBodyObject = requestBodyObject;
  obj.queryParameters = queryParameters;
  
  runContainer(obj, () => {
    // Make sure no CORS errors pop up with the response
    setPixelResponse();
    
    const origin = getRequestHeader('Origin');
    if (origin) {
      setResponseHeader('Access-Control-Allow-Origin', origin);
      setResponseHeader('Access-Control-Allow-Credentials', 'true');
      setResponseHeader('Access-Control-Allow-Headers', 'Content-Type');
    }
    
    returnResponse();
  });
}
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "return_response",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_response",
        "versionId": "1"
      },
      "param": [
        {
          "key": "writeResponseAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "writeHeaderAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "run_container",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "axeptio_authorized_vendors"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "/"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "axeptio_cookies"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "/"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "axeptio_all_vendors"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "/"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
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
setup: ''


___NOTES___

Created on 4/26/2022, 10:51:05 AM


