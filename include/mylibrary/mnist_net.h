// Copyright (c) 2020 [Your Name]. All rights reserved.
#ifndef FINALPROJECT_MYLIBRARY_EXAMPLE_H_
#define FINALPROJECT_MYLIBRARY_EXAMPLE_H_

#include <string>

using std::string;

namespace digit_neural_net {
/**
 * Takes in the path to an image, classifies the digit.
 * @param path_to_image the path to an image
 * @return int the prediction of the digit
 */
int Classify_Image(const string& path_to_image);

}  // namespace digit_neural_net


#endif // FINALPROJECT_MYLIBRARY_EXAMPLE_H_
