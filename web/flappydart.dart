library flappydart;

import 'dart:html';
import 'dart:math';
import 'dart:async';

part 'sprite.dart';
part 'ground.dart';

const String BACKGROUND = "assets/background.png";

const int CANVAS_WIDTH = 800;
const int CANVAS_HEIGHT = 480;

CanvasElement canvas;
Timer t;

ImageElement background;

List<Ground> grounds;

int tick = 0;

void update(Timer t) {
    
    for (Ground ground in grounds) {
        ground.update();
    }
    
    tick += 1;
    
    grounds.add(new Ground((800 * tick) - (12 * tick), canvas.height ~/ 2  + 200));

    draw();
}

void draw() {
    CanvasRenderingContext2D canvasContext = canvas.context2D;
    
    canvasContext.drawImage(background, 0, 0);
    
    for (Ground ground in grounds) {
        ground.draw(canvasContext);
    }
}

void init() {
    background = new ImageElement();
    background.src = BACKGROUND;
    
    grounds = new List();
    
    grounds.add(new Ground(0, canvas.height ~/ 2  + 200));
}

void main() {
    canvas = querySelector("#flappyCanvas");
    
    init();
    
    t = new Timer.periodic(const Duration(milliseconds: 17), update);
}
