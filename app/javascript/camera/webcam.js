document.addEventListener("turbolinks:load", function () {
    if (document.getElementById('snap')) {
        var cameraClick = new Audio("/camera_click.mp3")
        var changePictureButton = document.getElementById('change_picture')

        if (document.getElementById('snap') && document.getElementById('viewfinder')) {
            var snapButton = document.getElementById('snap')
            var videdDiv = document.getElementById('viewfinder')

            videdDiv.style.display = "none"
            snapButton.style.display = "none"
        }

        function hasNavigator() {
            return !!(navigator.mediaDevices && navigator.mediaDevices.getUserMedia)
        }

        if (hasNavigator()) {
            var canvas = document.createElement('canvas')
            var video = document.querySelector('video')

            var hiddenVIsitorPhoto = document.getElementById("visitor_visitor_photo")

            var constraints = {
                video: {
                    width: { min: 320, ideal: 320 },
                    height: { min: 240, ideal: 240 }
                }
            }

            if (video) {
                navigator.mediaDevices.getUserMedia(constraints).then((stream) => { video.srcObject = stream })
            }

            if (changePictureButton) {
                changePictureButton.onclick = function () {
                    videdDiv.style.display = ""
                    snapButton.style.display = ""
                }
            }

            if (snapButton) {
                snapButton.onclick = function () {
                    cameraClick.play()

                    canvas.width = video.width
                    canvas.height = video.height

                    canvas.getContext('2d').drawImage(video, 0, 0)

                    var dataUrl = canvas.toDataURL('image/jpeg', 1.0)


                    document.getElementById("shot").src = dataUrl

                    hiddenVIsitorPhoto.value = dataUrl

                    videdDiv.style.display = "none"
                    snapButton.style.display = "none"
                }
            }
        }
    }
})