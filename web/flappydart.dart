library flappydart;

import 'dart:html';
import 'dart:async';

part 'sprite.dart';

CanvasElement canvas;
Timer t;

void update(Timer t) {
    draw();
}

void draw() {
    CanvasRenderingContext2D canvasContext = canvas.context2D;
}

void main() {
    canvas = querySelector("#flappyCanvas");
    
    t = new Timer.periodic(new Duration(milliseconds: 17), update);
}