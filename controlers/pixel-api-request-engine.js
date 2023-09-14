function callAPI(method, url, data, callback) {
    const xhr = new XMLHttpRequest();
    
    xhr.open(method, url, true);
    xhr.setRequestHeader('Content-Type', 'application/json');

    xhr.onload = function () {
        const response = {
            status: xhr.status,
            statusText: xhr.statusText,
            data: null, // Initialize data as null
        };

        if (xhr.status === 200) {
            // If the request was successful, parse the JSON response
            response.data = JSON.parse(xhr.responseText);
        }

        // Always call the callback with the response object
        callback(response);
    };

    xhr.onerror = function () {
        // Handle network errors by returning a response with status 0
        const response = {
            status: 0,
            statusText: 'Network Error',
            data: null,
        };

        callback(response);
    };

    if (data) {
        xhr.send(JSON.stringify(data));
    } else {
        xhr.send();
    }
}