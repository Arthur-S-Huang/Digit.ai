// Copyright (c) 2020 CS126SP20. All rights reserved.

#ifndef FINALPROJECT_APPS_MYAPP_H_
#define FINALPROJECT_APPS_MYAPP_H_

#include <cinder/app/App.h>
#include <cinder/gl/draw.h>
#include <cinder/gl/gl.h>
#include <cinder/gl/Texture.h>
#include <cinder/Font.h>
#include <cinder/Text.h>
#include <cinder/Vector.h>
#include <cinder/gl/gl.h>

using cinder::app::FileDropEvent;
using cinder::TextBox;
using cinder::ColorA;
using cinder::Color;
using std:: string;

namespace myapp {
// The font used to display the predicted digit
const char kNormalFont[] = "Arial";

class MyApp : public cinder::app::App {
 public:
  MyApp();
  /**
   * Sets up the app state
   */
  void setup() override;
  /**
   * Updates the app state, draw function is updated too
   */
  void update() override;
  /**
   * Renders everything displaye when the app is ran
   */
  void draw() override;
  /**
   * The app processes a FileDropEvent
   * @param event a FileDropEvent
   */
  void fileDrop(FileDropEvent event) override;
  /**
   * Draws the background and the title
   */
  void DrawMainPage();
  /**
   * Draws the prediction result
   */
  void DrawResult();

 private:
  cinder::gl::Texture2dRef background;
  cinder::gl::Texture2dRef predict;
  bool file_dropped;
  bool to_draw;
  string result;
};

}  // namespace myapp

#endif  // FINALPROJECT_APPS_MYAPP_H_
