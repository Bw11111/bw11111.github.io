/// loadscript.js

function loadAndExecuteScript(url) {
    // Fetch the script content from the URL
    fetch(url)
        .then(response => {
            if (!response.ok) {
                alert('Failed to load script from ' + url);
            }
            return response.text(); // Get the text content of the script
        })
        .then(scriptContent => {
            // Execute the script content using eval() or new Function()
            // WARNING: Be very careful with eval(), it can run malicious code!
            try {
                // This is a safer way to execute dynamic code in the context of the page
                new Function(scriptContent)();
            } catch (error) {
                alert('Error executing the script:'+ error);
            }
        })
        .catch(error => {
            alert('Error loading script:' + error);
        });
}

// Example usage: load and execute a script from a given URL

loadAndExecuteScript("https://bw11111.github.io/script.sj")