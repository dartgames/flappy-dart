part of flappydart;

class Ground extends Sprite {
    static const int WIDTH = 800;
    static const int HEIGHT = 40;
    static const IMAGE_NAME = "assets/ground.png";
    
    Ground(int x, int y) : super(WIDTH, HEIGHT, x, y, IMAGE_NAME);    
    
    void update() {
        move(-2, 0);
    }
    
    bool checkCollision(Sprite s) {
        if (boundingBox.intersection(s.boundingBox) != null) {
            return true;
        }
        return false;
    }
    
}