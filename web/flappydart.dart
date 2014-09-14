library flappydart;

import 'dart:html';
import 'dart:async';

part 'sprite.dart';

const String BACKGROUND = "assets/background.png";

const int CANVAS_WIDTH = 960;
const int CANVAS_HEIGHT = 780;

CanvasElement canvas;
Timer t;

ImageElement background;

void update(Timer t) {
    draw();
}

void draw() {
    CanvasRenderingContext2D canvasContext = canvas.context2D;
    
    canvasContext.drawImage(background, 0, 0);
}

void init() {
    background = new ImageElement();
    background.src = BACKGROUND;
}

void main() {
    canvas = querySelector("#flappyCanvas");
    
    init();
    
    t = new Timer.periodic(new Duration(milliseconds: 17), update);
}