#include <iostream>
#include "SFML/Graphics.hpp"
#include <time.h>
#include <cmath>
using namespace sf;
bool isMove = false,df = true;
bool fly = false;
float dx,x=100,y=100;
float dy;
CircleShape cirkle(40);
RenderWindow window(VideoMode(640, 480), "Hello SFML");
CircleShape circle(30);
void flyr()
{
    float start_x = cirkle.getPosition().x,start_y= cirkle.getPosition().y;
    Clock clock;
    clock.restart();
    float al = atan((100-start_y)/(100-start_x)) ;
    float speed_x = 2*sqrt((100 - start_x)*(100-start_x)+(100-start_y)*(100-start_y))*cos(al);
    float speed_y = 2*sqrt((100 - start_x)*(100-start_x)+(100-start_y)*(100-start_y))*sin(al);
    float speed_y1;
    while((sqrt(speed_x*speed_x+speed_y*speed_y) >1))
    {
        float time = clock.getElapsedTime().asSeconds();
        speed_y1 =speed_y+ 100*time;
        cirkle.setPosition(start_x+speed_x*time,start_y+speed_y*time+50*time*time);
        if(circle.getGlobalBounds().intersects(cirkle.getGlobalBounds()))
            circle.setPosition(-100,0);
        if((cirkle.getPosition().x>560))
        {
            start_x = cirkle.getPosition().x;
            start_y = cirkle.getPosition().y;
            speed_x = -0.5*speed_x;
            speed_y1 = -0.5*speed_y1;
            speed_y = speed_y1;
            clock.restart();
        }
        if((cirkle.getPosition().y>400))
        {
            start_x = cirkle.getPosition().x;
            start_y = cirkle.getPosition().y;
            speed_x = 0.5*speed_x;
            speed_y1 = -0.5*speed_y1;
            speed_y = speed_y1;
            clock.restart();
        }
        window.clear(Color::White);
        cirkle.setFillColor(Color::Yellow);
        window.draw(circle);
        window.draw(cirkle);
        window.display();


    }
}
int main() {





    cirkle.setPointCount(3);
    cirkle.setFillColor(Color::Green);
    cirkle.setPosition(100,100);
    circle.setPointCount(13);
    circle.setFillColor(Color::Red);
    circle.setPosition(400,300);
    window.draw(circle);


    while (window.isOpen()) {

        Vector2i PixelPos = Mouse::getPosition(window);
        Event event;

        while (window.pollEvent(event)) {

            if (event.type == Event::Closed) {

                window.close();

            }


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
                    fly = true;
                }
            cirkle.setFillColor(Color::Green);
            if(fly) {
                flyr();
                fly = false;
            }
            if (isMove) {

                cirkle.setFillColor(Color::Black);
                cirkle.setPosition(PixelPos.x - dx, PixelPos.y - dy);
            }




            window.clear(Color::White);
            window.draw(circle);

            window.draw(cirkle);

            window.display();


        }

    }

    return 0;
}



