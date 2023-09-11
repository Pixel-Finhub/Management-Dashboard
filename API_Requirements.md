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