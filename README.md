# Pixel insurance admin dashboard

## Description

This is the admin dashboard for the pixel insurance project. simply made with bootstrap.


## Dashboard navigation 
### Cargo Insurance

- [Dashboard](#dashboard)
- [Customer Management](#customer-management)
  - [View All Customers](#view-all-customers)
  - [Add New Customer](#add-new-customer)
  - [Customer Details](#customer-details)
  - [Customer Communication](#customer-communication)
- [Claim Processing](#claim-processing)
  - [View All Claims](#view-all-claims)
  - [File a New Claim](#file-a-new-claim)
  - [Claim Status](#claim-status)
  - [Claim Documentation](#claim-documentation)
- [Policy Management](#policy-management)
  - [View All Policies](#view-all-policies)
  - [Create New Policy](#create-new-policy)
  - [Policy Details](#policy-details)
  - [Policy Renewal](#policy-renewal)
  - [Pricing & Quotes](#pricing-quotes)
    - [Pricing Calculator](#pricing-calculator)
    - [Quote History](#quote-history)
- [Reporting](#reporting)
  - [Generate Reports](#generate-reports)
  - [Report History](#report-history)
  - [Custom Reports](#custom-reports)
- [Settings](#settings)
  - [Account Settings](#account-settings)
  - [Notification Preferences](#notification-preferences)
  - [User Management](#user-management)
    - [Add User](#add-user)
    - [Edit User](#edit-user)


## Pixel Insurance API request engine
```javascript
// Import or define the callAPI function

// Case 1: Making a GET request
callAPI('GET', 'https://api.example.com/data', null, function (response) {
    if (response.status === 200) {
        // Request was successful, handle the data
        console.log('Data received:', response.data);
    } else {
        // Request encountered an error
        console.error('Error:', response.status, response.statusText);
    }
});

// Case 2: Making a POST request with data
const postData = { key: 'value' };
callAPI('POST', 'https://api.example.com/create', postData, function (response) {
    if (response.status === 201) {
        // Resource created successfully
        console.log('Resource created:', response.data);
    } else {
        // Request encountered an error
        console.error('Error:', response.status, response.statusText);
    }
});
```

Two usage examples of the `callAPI` function:

1. Making a GET request to retrieve data from 'https://api.example.com/data'.
2. Making a POST request to create a resource at 'https://api.example.com/create' with the `postData` object.

Both examples include error handling to log appropriate messages based on the response status code and status text. 