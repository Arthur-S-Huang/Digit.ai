# Digit.ai

Digit.ai aims to classify a handwritten digit by allowing the user to upload an image of the digit. A neural network is trained on the mnist data set and is used to make predictions. We have used a naive Bayes model to classify digits,
however, the program processed pixels represented by characters rather than images. This app allows users to drag and drop an image into the app window, and a predicted digit will be displayed.

![demo](resources/demo.png)

## Technologies/Libraries

Digit.ai uses the c++ frontend to access **PyTorch**, and the image processing is achieved by using a computer vision
library called **OpenCV**. The python script in this project was ran once to train and evaluate the model. It achieved an accuracy of **97.3%**. The model is saved and formatted so that the c++ frond end can access it and utilize it to
make inferences. The picture dropped by the user is converted to grayscale, then to black and white, then resized, then converted to tensors, which the model can take in.

## How to build/run
**This project requires CLion to run**
- Clone the repository into your desired folder using `git clone [link]`
- Follow [this link](https://blog.zhajor.com/2016/10/install-opencv-and-make-a-test-project-with-clion/) to install OpenCV on your computer.
- In CLion preferences, in cmake options, set the argument to `-DCMAKE_PREFIX_PATH=[path to OpenCV]`. Next, add
`LIBRARIES   mylibrary ${OpenCV_LIBS}` to your CMakeLists.txt where this line appears, then add `find_package(OpenCV REQUIRED)` to the beginning of the CMakeLists.txt in your project folder. Finally, click build project.
- Install PyTorch(c++) [here](https://pytorch.org/get-started/locally/).
- Change the CLion cmake options argument to `-DCMAKE_PREFIX_PATH=[path to LibTorch]`. Next, add `find_package(Torch REQUIRED)` to the project CMakeLists.txt, and add `LIBRARIES    ${TORCH_LIBRARIES}` to where this line appears.
- Build project again and run!
