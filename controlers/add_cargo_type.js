document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form"); // Replace with your form's actual selector

    form.addEventListener("submit", function (e) {
        e.preventDefault(); // Prevent the default form submission

        // Serialize form data into a JSON object
        const formData = {};
        const formElements = form.querySelectorAll("input, textarea");
        formElements.forEach((element) => {
            formData[element.name] = element.value;
        });

        // Send the form data to your API using AJAX
        fetch("your_api_endpoint_here", {
            method: "POST", // Change to the appropriate HTTP method (POST, PUT, etc.)
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(formData),
        })
        .then((response) => {
            if (response.ok) {
                return response.json();
            } else {
                throw new Error("API request failed");
            }
        })
        .then((data) => {
            // Check the response data for success
            if (data.success) {
                alert("Cargo type added successfully!");
                // Redirect to the cargo types page
                window.location.href = "cargo_types.html"; // Replace with the actual URL
            } else {
                alert("Error: " + data.message); // Display the error message from the API
            }
        })
        .catch((error) => {
            console.error("Error: " + error.message);
        });
    });
});
