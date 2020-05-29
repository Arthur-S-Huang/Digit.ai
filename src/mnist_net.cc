// Copyright (c) 2020 [Your Name]. All rights reserved.

#include <mylibrary/mnist_net.h>
#include <torch/script.h>
#include <opencv2/core/core.hpp>
#include<opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>


namespace digit_neural_net {

int Classify_Image(const string& path_to_image) {
  const string path_to_model = "/Users/arthurhuang/IdeaProjects/cinder/"
                               "myprojects/final-project-Arthur-S-Huang/"
                               "resources/traced_linear_mnist.pt";
  torch::jit::script::Module module;
  
  try {
    module = torch::jit::load(path_to_model);
  } catch (const c10::Error& e) {
    std::cerr << "error loading the model\n";
  }
  //std::cout << "Model loaded\n";
  
  // Converts the image dropped to grayscale, then to black and white
  cv::Mat image = cv::imread(path_to_image);
  cv::Mat graymat, bw, resized;
  cv::cvtColor(image, graymat,cv::COLOR_BGR2GRAY);
  bw = graymat > 128;
  bw = ~(bw);
  // Resize image and use OpenCV's interpolation to clear up image
  cv::resize(bw, resized, cv::Size(28,28),
      0 , 0, cv::INTER_LINEAR);
  
  cv::namedWindow("Picture");
  cv::imshow("Picture", resized);
  
  at::TensorOptions options(at::ScalarType::Byte);
  // Convert image to tensors in the correct format to be used with the model
  at::Tensor tensor_image = torch::from_blob(resized.data,
      {1, 1, resized.rows, resized.cols}, options);
  // Normalize tensor values
  tensor_image = ((tensor_image.to(at::kFloat))/255);
  at::Tensor reshaped = tensor_image.reshape(
      {tensor_image.size(0), 784});
  
  std::vector<torch::jit::IValue> inputs;
  inputs.emplace_back(reshaped);
  
  at::Tensor result = module.forward(inputs).toTensor();
  // The class that has the highest posterior probability is the predicted
  auto pred = result.argmax(1);
  return pred.item<int64_t>();
}

}  // namespace digit_neural_net
