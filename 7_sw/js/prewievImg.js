document.getElementById('userUploadPhoto').addEventListener('change', function(event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            const imgElement = document.createElement('img');
            imgElement.src = e.target.result;
            const imgContainer = document.getElementById('formPageImg');
            imgContainer.innerHTML = ''; // Clear previous image
            imgContainer.appendChild(imgElement);
        }
        reader.readAsDataURL(file);
    }
});