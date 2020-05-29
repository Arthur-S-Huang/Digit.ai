// Copyright (c) 2020 [Your Name]. All rights reserved.

#include "my_app.h"

#include <cinder/app/App.h>
#include <mylibrary/mnist_net.h>

namespace myapp {

MyApp::MyApp() { }

void MyApp::setup() {
  file_dropped = false;

  auto img = loadImage(loadAsset("background_image.jpg"));
  background = cinder::gl::Texture2d::create(img);

  auto pred = loadImage(loadAsset("predict.jpg"));
  predict = cinder::gl::Texture2d::create(pred);
}

void MyApp::update() {
  if (file_dropped) {
    to_draw = true;
  }
}

void MyApp::draw() {
  cinder::gl::draw(background);
  DrawMainPage();
  if (to_draw) {
    DrawResult();
  }
}
// PrintText Code taken from snake written by 126 staff
template <typename C>
void PrintText(const string& text, const C& color, const cinder::ivec2& size,
               const cinder::vec2& loc) {
  auto box = TextBox()
      .alignment(TextBox::CENTER)
      .font(cinder::Font(kNormalFont, 90))
      .color(color)
      .size(size)
      .text(text);
  
  const auto box_size = box.getSize();
  const cinder::vec2 locp = {loc.x - box_size.x / 2,
                             loc.y - box_size.y / 2};
  const auto surface = box.render();
  const auto texture = cinder::gl::Texture::create(surface);
  cinder::gl::draw(texture, locp);
}

void MyApp::fileDrop(FileDropEvent event) {
  to_draw = true;
  string path_to_image = event.getFile(0).string();
  int predicted = digit_neural_net::Classify_Image(path_to_image);
  result = std::to_string(predicted);
}

void MyApp::DrawMainPage() {
  const cinder::vec2 center = {getWindowCenter().x,
                               getWindowCenter().y};
  const cinder::vec2 locp = {center.x/4, 50};
  cinder::gl::draw(predict, locp);
}

void MyApp::DrawResult() {
  const cinder::vec2 center = {getWindowCenter().x,
                               getWindowCenter().y};
  const cinder::ivec2 size = {300,300};
  const Color result_color = {0.9137, 0.56078, 0.60392};
  PrintText(result, result_color, size, center);
}

}  // namespace myapp
