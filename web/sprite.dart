part of flappydart;

abstract class Sprite {
    int width, height, x, y;
    
    ImageElement image;
    Rectangle boundingBox;
    
    Sprite(this.width, this.height, this.x, this.y, String imageName) {
        image = new ImageElement();
        image.src = imageName;
        boundingBox = new Rectangle(x, y, width, height);
    }
    
    void draw(CanvasRenderingContext2D canvasContext) {
        canvasContext.drawImageScaled(image, x, y, width, height);
    }
    
    void update();
}