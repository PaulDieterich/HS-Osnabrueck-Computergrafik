#include "color.h"
#include <assert.h>

Color::Color(): R(255), G(255), B(255){}
Color::Color(float r, float g, float b): R(r), G(g), B(b){}

Color Color::operator*(const Color& c) const
{
	Color newColor(R * c.R, G * c.G, B * c.B);
	return newColor;
}

Color Color::operator*(const float Factor) const
{
	Color newColor(R * Factor, G * Factor,B * Factor);
	return newColor;
}

Color Color::operator+(const Color& c) const
{
	Color newColor(R + c.R, G + c.G, B + c.B);
	return newColor;
}

Color& Color::operator+=(const Color& c)
{
	R = R + c.R;
	G = G + c.G;
	B = B + c.B;
	return *this;
}