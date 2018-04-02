#include <iostream>
#include "SFML/Graphics.hpp"
#include <time.h>
#include <cmath>

using namespace sf;
bool isMove = false;
bool fly = false;
float dx,x=100,y=100;
float dy;
float timer;
int main() {

    RenderWindow window(VideoMode(640, 480), "Hello SFML");

    CircleShape cirkle(40);
    cirkle.setPointCount(100);
    cirkle.setFillColor(Color::Green);
    CircleShape circle(30);
    cirkle.setPosition(100,100);
    circle.setPointCount(13);
    circle.setFillColor(Color::Red);
    circle.setPosition(400, 300);
    window.draw(circle);

    Clock clock;

    while (window.isOpen()) {
        float time = clock.getElapsedTime().asSeconds();
        Vector2i PixelPos = Mouse::getPosition(window);

        Event event;
       /* cirkle.setPosition(cirkle.getPosition().x, cirkle.getPosition().y + 0.05 * time);
         window.clear(Color::White);
        window.draw(cirkle);
        window.display();*/
        while (window.pollEvent(event)) {

            if (event.type == Event::Closed) {

                window.close();

            }
            std:: cout << time << std:: endl;



            if (event.type == Event::MouseButtonPressed)
                if (event.mouseButton.button == Mouse::Left)
                    if (cirkle.getGlobalBounds().contains(PixelPos.x, PixelPos.y)) {
                        dx = PixelPos.x - cirkle.getPosition().x;
                        dy = PixelPos.y - cirkle.getPosition().y;
                        isMove = true;
                    }
            if (event.type == Event::MouseButtonReleased)
                if (event.mouseButton.button == Mouse::Left) {
                    isMove = false;
                    //fly = true;
                }
            cirkle.setFillColor(Color::Yellow);
            if (isMove) {
                cirkle.setFillColor(Color::Black);
                cirkle.setPosition(PixelPos.x - dx, PixelPos.y - dy);
            }
            if (fly)
            {
                clock.restart();
                timer +=time;

            }
            if(circle.getGlobalBounds().intersects(cirkle.getGlobalBounds()))
                circle.setPosition(-100,0);
            window.clear(Color::White);
            window.draw(circle);

            window.draw(cirkle);

            window.display();

        }

    }

    return 0;
}



