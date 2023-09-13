# API Requirements

## View all customers

### GET /customers

Returns a list of all customers in the database.  
**Response:**  

```json
HTTP/1.1 200 OK
Content-Type: application/json

[
    {
        "customer_id": 1,
        "full_name": "John Doe",
        "username": "johndoe",
        "email": "johndoe@example.com",
        "contact_number": "123-456-7890",
        "address": "123 Main St, City",
        "date_of_birth": "1990-01-15",
        "gender": "Male",
        "national_id": "ABC123456",
        "last_login": "2023-08-15 14:30:00"
    },
    ...
]

```

## View a customer

### GET api/basic-details/{customer_id}

Returns a customer with the given customer_id.
**Response:**  

```json
HTTP/1.1 200 OK
Content-Type: application/json

{
    "full_name": "Elled Zanzibar",
    "username": "elledzanzibar",
    "phone_number": "+255672204508",
    "email": "johndoe@exampleemail.com",
    "address": "Pendo St. Morogoro"
}
```

## View a customer's policies history

### GET api/policies/{customer_id}

Returns a list of all policies owned by the customer with the given customer_id.
**Response:**  

```json
HTTP/1.1 200 OK
Content-Type: application/json

[
    {
        "base_package": "Package 1",
        "start_date": "2023-09-01",
        "end_date": "2023-09-30",
        "amount": "$100"
    },
    {
        "base_package": "Package 2",
        "start_date": "2023-08-15",
        "end_date": "2023-09-15",
        "amount": "$75"
    }
]

```

## App usage

### GET api/app-usage/{customer_id}

Returns a list of all app usage by the customer with the given customer_id.
**Response:**  

```json
HTTP/1.1 200 OK
Content-Type: application/json

[
    {
        "total_in_app_time_spent": "30 Minutes",
        "average_time_spent": "5 Minutes"
    }
]

```

## View a customer's transported cargo

### GET api/transported-cargo/{customer_id}

Returns a list of all transported cargo by the customer with the given customer_id.
**Response:**  

```json
HTTP/1.1 200 OK
Content-Type: application/json

[
    {
        "cargo_name": "Cargo 1",
        "premium_rate": "$50",
        "frequency": "Monthly",
        "total_spent": "$500"
    },
    {
        "cargo_name": "Cargo 2",
        "premium_rate": "$60",
        "frequency": "Weekly",
        "total_spent": "$240"
    }
]

```

## View a customer's payment history

### GET api/payment-history/{customer_id}

Returns a list of all payments made by the customer with the given customer_id.
**Response:**  

```json
HTTP/1.1 200 OK
Content-Type: application/json

[
    {
        "invoice_id": "INV001",
        "package_id": "Package 1",
        "amount_paid": "$100",
        "date": "2023-09-05"
    },
    {
        "invoice_id": "INV002",
        "package_id": "Package 2",
        "amount_paid": "$75",
        "date": "2023-08-20"
    }
]

```

## View Registered cargo types

### GET api/cargo-types

Returns a list of all registered cargo types.
**Response:**  

```json
HTTP/1.1 200 OK
Content-Type: application/json

[
    {
    "ItemID": 3,                           // Unique identifier for the cargo type (Primary Key)
    "ItemName": "Crops",                  // Name of the cargo type
    "ItemDescription": "Freshly harvested crops",  // Description of the cargo type
    "ItemValue": 1000,                    // Value of the cargo in bushels
    "ItemRiskFactorScore": 2.5,           // Risk factor score for the cargo
    "ItemWeightFactorScore": 4.0,         // Weight factor score for the cargo
    "ItemSizeFactorScore": 3.2,           // Size factor score for the cargo
    "ItemTypeFactorScore": 3.5,           // Type factor score for the cargo
    "ItemPackagingFactorScore": 2.0,      // Packaging factor score for the cargo
    "TransitDurationFactorScore": 3.8,    // Transit duration factor score for the cargo
    "TransitDistanceFactorScore": 2.0,    // Transit distance factor score for the cargo
    "TransitRouteFactorScore": 3.0,       // Transit route factor score for the cargo
    "TransitModeFactorScore": 2.8,        // Transit mode factor score for the cargo
    "TransitHandlingFactorScore": 3.5,    // Transit handling factor score for the cargo
    "WeatherFactorScore": 4.0,            // Weather factor score for the cargo
    "TemperatureFactorScore": 3.2,        // Temperature factor score for the cargo
    "HumidityFactorScore": 4.5,           // Humidity factor score for the cargo
    "AltitudeFactorScore": 3.5,           // Altitude factor score for the cargo
    "SecurityRiskFactorScore": 2.0,       // Security risk factor score for the cargo
    "HumanFactorRiskFactorScore": 3.0,    // Human factor risk factor score for the cargo
    "RiskScore": 66.2                     // Overall risk score for the cargo
},
]

```

## Adding Cargo Type

### POST api/cargo-types/add
```json
Content-Type: application/json

{
  "itemName": "Crops",
  "itemDescription": "Freshly harvested crops",
  "itemValue": 1000,
  "itemRiskFactor": 2.5,
  "itemWeightFactor": 4.0,
  "itemSizeFactor": 3.2,
  "itemTypeFactor": 3.5,
  "itemPackagingFactor": 2.0,
  "transitDurationFactor": 3.8,
  "transitDistanceFactor": 2.0,
  "transitRouteFactor": 3.0,
  "transitModeFactor": 2.8,
  "transitHandlingFactor": 3.5,
  "weatherFactor": 4.0,
  "temperatureFactor": 3.2,
  "humidityFactor": 4.5,
  "altitudeFactor": 3.5,
  "securityRiskFactor": 2.0,
  "humanFactorRiskFactor": 3.0
}
```

### Response
```json
HTTP/1.1 200 OK
{
  "success": true,
  "message": "Cargo type added successfully."
}

HTTP/1.1 400 Bad Request
{
  "success": false,
  "message": "Failed to add cargo type. Invalid data."
}
```

## View All Policies

### GET api/policies
```json
Content-Type: application/json

[
    {
        "PolicyID": 1,
        "UserName": "John Doe",
        "PackageName": "Gold Package",
        "StartDate": "2023-09-01",
        "EndDate": "2023-09-30",
        "PremiumAmount": 100.00,
        "PolicyStatus": "Active",
        "PolicyCoverage": "Comprehensive",
        "DeductibleAmount": 500.00,
        "Claimed": "Yes",
        "ContactInformation": "Contact details",
        "PaymentDate": "2023-09-01",
        "RenewalDate": "2024-09-01",
        "CoverageLimit": "$1,000,000",
        "ItemsCovered": 5
    },
    {
        "PolicyID": 2,
        "UserName": "Jane Smith",
        "PackageName": "Silver Package",
        "StartDate": "2023-09-05",
        "EndDate": "2023-09-25",
        "PremiumAmount": 80.50,
        "PolicyStatus": "Expired",
        "PolicyCoverage": "Basic",
        "DeductibleAmount": 250.00,
        "Claimed": "No",
        "ContactInformation": "Contact details",
        "PaymentDate": "2023-09-05",
        "RenewalDate": "2024-09-05",
        "CoverageLimit": "$500,000",
        "ItemsCovered": 2
    }
    // Add more policy objects as needed
]

```