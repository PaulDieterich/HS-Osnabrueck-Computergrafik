#include "vector.h"
#include <assert.h>
#include <math.h>

#define EPSILON 1e-6

Vector::Vector( float x, float y, float z): X(x), Y(y), Z(z)
{
	// TODO: add your code
}

Vector::Vector()
{
	// TODO: add your code
}

float Vector::dot(const Vector& v) const
{
	float skalarprodukt = (this->X * v.X) + (this->Y * v.Y) + (this->Z * v.Z);
	return skalarprodukt;
}

Vector Vector::cross(const Vector& v) const
{
	float x = (Y * v.Z) - (Z * v.Y);
	float y = (Z * v.X) - (X * v.Z);
	float z = (X * v.Y) - (Y * v.X);
	Vector kreuzproduct(x,y,z);
	return kreuzproduct; 
}

Vector Vector::operator+(const Vector& v) const
{
	Vector newVector(X+v.X, Y+v.Y, Z+v.Z); 
	return newVector;
}

Vector Vector::operator-(const Vector& v) const
{
	Vector newVector(X-v.X, Y-v.Y, Z-v.Z); 
	return newVector; 
}

Vector Vector::operator*(float c) const
{
	Vector newVector(X*c, Y*c, Z*c);
	return newVector; 
}

Vector Vector::operator-() const
{
	Vector inverse(-X, -Y, -Z);
	return inverse;
}
Vector& Vector::operator+=(const Vector& v)
{
		X += v.X;
		Y += v.Y;
		Z += v.Z;
	return *this;
}

Vector& Vector::normalize()
{
	//Vector normalizedVector(X / length(), Y / length(), Z / length());
	//return normalizedVector();
	float l = length();
	X = X * (1 / l);
	Y = Y * (1 / l);
	Z = Z * (1 / l);
	return *this;
}

float Vector::length() const
{
	float length = sqrtf(lengthSquared());
	return length; 
}

float Vector::lengthSquared() const
{
	float lengthSquared = pow(X,2) + pow(Y,2) + pow(Z,2);
	return lengthSquared;
}

Vector Vector::reflection(const Vector& normal) const
{
	//r=d−2(d⋅n)n
	Vector reflection =  *this - normal * (2*(dot(normal)));

	return reflection;
}

bool Vector::triangleIntersection(const Vector& d, const Vector& a, const Vector& b, const Vector& c, float& s) const
{
	Vector ab = a - b;
	Vector bc = b - c;
	Vector n = ab.cross(bc);
	
	float dotnd = n.dot(d);

	if (fabs(dotnd) < EPSILON) { return false; }
		float scal = n.dot(c);
		s = (scal - n.dot(*this)) / dotnd;
		if (s < 0) return false;

		
		Vector dest = *this + (d * s);
	
		float abc = (a - b).cross(c - b).length() / 2;
		
		float abd = (a - dest).cross(b - dest).length() / 2; 
		float acd = (a - dest).cross(c - dest).length() / 2;
		float bcd = (b - dest).cross(c - dest).length() / 2;

		if (abc + EPSILON >= abd + acd + bcd) return true;

	return false; 
}
