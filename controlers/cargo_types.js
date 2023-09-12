// Sample JSON data for registered cargo types (replace with your actual data)
const registeredCargoTypes = [
    {
        "ItemID": 1,
        "ItemName": "Cement",
        "ItemDescription": "Bagged cement for construction",
        "ItemValue": 50,  // in kilograms
        "ItemRiskFactorScore": 3.8,
        "ItemWeightFactorScore": 4.5,
        "ItemSizeFactorScore": 2.0,
        "ItemTypeFactorScore": 3.2,
        "ItemPackagingFactorScore": 4.0,
        "TransitDurationFactorScore": 3.5,
        "TransitDistanceFactorScore": 4.2,
        "TransitRouteFactorScore": 3.0,
        "TransitModeFactorScore": 2.8,
        "TransitHandlingFactorScore": 3.2,
        "WeatherFactorScore": 3.5,
        "TemperatureFactorScore": 2.0,
        "HumidityFactorScore": 4.0,
        "AltitudeFactorScore": 3.2,
        "SecurityRiskFactorScore": 2.5,
        "HumanFactorRiskFactorScore": 4.5,
        "RiskScore": 75.6
    },
    {
        "ItemID": 2,
        "ItemName": "Electronics",
        "ItemDescription": "Consumer electronics goods",
        "ItemValue": 500,  // in dollars
        "ItemRiskFactorScore": 4.2,
        "ItemWeightFactorScore": 2.8,
        "ItemSizeFactorScore": 3.5,
        "ItemTypeFactorScore": 3.0,
        "ItemPackagingFactorScore": 4.0,
        "TransitDurationFactorScore": 4.5,
        "TransitDistanceFactorScore": 3.2,
        "TransitRouteFactorScore": 3.8,
        "TransitModeFactorScore": 2.0,
        "TransitHandlingFactorScore": 4.2,
        "WeatherFactorScore": 3.5,
        "TemperatureFactorScore": 2.5,
        "HumidityFactorScore": 3.2,
        "AltitudeFactorScore": 4.0,
        "SecurityRiskFactorScore": 3.2,
        "HumanFactorRiskFactorScore": 3.0,
        "RiskScore": 88.4
    },
    {
        "ItemID": 3,
        "ItemName": "Crops",
        "ItemDescription": "Freshly harvested crops",
        "ItemValue": 1000,  // in bushels
        "ItemRiskFactorScore": 2.5,
        "ItemWeightFactorScore": 4.0,
        "ItemSizeFactorScore": 3.2,
        "ItemTypeFactorScore": 3.5,
        "ItemPackagingFactorScore": 2.0,
        "TransitDurationFactorScore": 3.8,
        "TransitDistanceFactorScore": 2.0,
        "TransitRouteFactorScore": 3.0,
        "TransitModeFactorScore": 2.8,
        "TransitHandlingFactorScore": 3.5,
        "WeatherFactorScore": 4.0,
        "TemperatureFactorScore": 3.2,
        "HumidityFactorScore": 4.5,
        "AltitudeFactorScore": 3.5,
        "SecurityRiskFactorScore": 2.0,
        "HumanFactorRiskFactorScore": 3.0,
        "RiskScore": 66.2
    }
    ,
    // Add more cargo types as needed
];

// Function to populate the table with data
function populateCargoTable(data) {
    const tableBody = document.getElementById('registered_cargo_types');
    tableBody.innerHTML = ''; // Clear existing rows

    data.forEach(cargo => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${cargo.ItemID}</td>
            <td>${cargo.ItemName}</td>
            <td>${cargo.ItemDescription}</td>
            <td>${cargo.ItemValue}</td>
            <td>${cargo.ItemRiskFactorScore}</td>
            <td>${cargo.ItemWeightFactorScore}</td>
            <td>${cargo.ItemSizeFactorScore}</td>
            <td>${cargo.ItemTypeFactorScore}</td>
            <td>${cargo.ItemPackagingFactorScore}</td>
            <td>${cargo.TransitDurationFactorScore}</td>
            <td>${cargo.TransitDistanceFactorScore}</td>
            <td>${cargo.TransitRouteFactorScore}</td>
            <td>${cargo.TransitModeFactorScore}</td>
            <td>${cargo.TransitHandlingFactorScore}</td>
            <td>${cargo.WeatherFactorScore}</td>
            <td>${cargo.TemperatureFactorScore}</td>
            <td>${cargo.HumidityFactorScore}</td>
            <td>${cargo.AltitudeFactorScore}</td>
            <td>${cargo.SecurityRiskFactorScore}</td>
            <td>${cargo.HumanFactorRiskFactorScore}</td>
            <td>${cargo.RiskScore}</td>
        `;
        tableBody.appendChild(row);
    });
}


