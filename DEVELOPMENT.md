# Development

## Week 1
- `4/19/2020`: Researched pytorch and its c++ frontend. Researched neuro networks. Watched tutorials on how to train
a neuro network on the mnist dataset.

- `4/20/2020`: Followed examples to run a minimal program that uses libtorch. Used cmake to create an executable which
could be run to display some tensors. Researched cmake, the building, and the linking process.

- `4/21/2020`: Built a simple neuro network in python. Trained it and tested it on the mnist dataset. Saved the model
as a format c++ frontend can load. Imported libtorch into the final project to successfully load the model.

## Week 2
- `4/24/2020`: Researched opencv, learned how to edit an image so that I can use my pre-traind model to make an inference.

- `4/25/2020`: Installed opnecv. Imported opencv into the project. Rewrote the python script because the format was wrong when the model was saved.

- `4/26/2020`: Used opencv to resize/edit an image from file. Converted the image to tensors which can be used with
the pre-trained libtorch model to make an inference.

- `4/27/2020`: Hand wrote digits to test the functionality of the Classity_Image method.

## Week 3
- `5/1/2020`: Read Cinder documentations on images and handling file drop events. Reviewed Snake project code
to learn how to draw texts on screen.

- `5/3/2020`: Added the background image and implemented rendering functions for the main page. Implemented functions
to handle the file drop event and use the image to call ClassifyImage method to display predicted digit.

- `5/4/2020`: Renamed some files and documented code.
