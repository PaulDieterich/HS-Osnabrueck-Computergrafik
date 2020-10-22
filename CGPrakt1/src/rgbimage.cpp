#include "rgbimage.h"
#include "color.h"
#include "assert.h"

RGBImage::RGBImage(unsigned int Width, unsigned int Height): m_Width(Width), m_Height(Height){
	 m_Image = new Color[Width * Height];
}
RGBImage::~RGBImage() {
	delete[] m_Image;
}

void RGBImage::setPixelColor(unsigned int x, unsigned int y, const Color& c)
{
	if (x > width() - 1) { x = width() - 1; }
	if (y > height() - 1) { y = height() - 1; }
	m_Image[x + y * width()] = c;

}
	
const Color& RGBImage::getPixelColor( unsigned int x, unsigned int y) const
{	
	if (x > width() - 1) { x = width() - 1; }
	if (y > height() - 1) { y = height() - 1; }
	return m_Image[x + y * width()];
	
}

unsigned int RGBImage::width() const{ return m_Width; }
unsigned int RGBImage::height() const{return m_Height; }

unsigned char RGBImage::convertColorChannel(float v)
{	
	// eine antwort auf die Frage "Converting color value from float 0..1 to byte 0..255"
	// von Mark Byers edit. von ToolmakerSteve
	//https://stackoverflow.com/questions/1914115/converting-color-value-from-float-0-1-to-byte-0-255

	char c;
	if (v <= 0.0f) { c = 0; }
	if (v >= 1.0f) { c = 255; }
	if (v > 0.0f && v < 1.0f) {c = v * 256;}
	 return c;
}

bool RGBImage::saveToDisk(const char* Filename)
{
		unsigned int breite = width();
		unsigned int hohe = height();
		unsigned int BYTES_PER_PIXEL = 3;
		unsigned int INFO_HEADER_SIZE = 40;
		unsigned int FILE_HEADER_SIZE = 14;
		unsigned int widthInBytes = breite * BYTES_PER_PIXEL;
		unsigned char padding[3] = { 0, 0, 0 };
		unsigned int paddingSize = (4 - (widthInBytes) % 4) % 4;
		unsigned int stride = (widthInBytes)+paddingSize;

		// HEADER_FILE
		int fileSize = FILE_HEADER_SIZE + INFO_HEADER_SIZE + (stride * hohe);

		static unsigned char fileHeader[] = {
			0, 0,		// bfType - Signatur BM
			0, 0, 0, 0, // bfSize - röße der BMP-Datei in Byte
			0, 0, 0, 0, // bfReserved  - reserved
			0, 0, 0, 0, // bfOffSits - Offset der Bilddatei in Byte von Begin der Datei
		};

		fileHeader[0] = (unsigned char)('B');
		fileHeader[1] = (unsigned char)('M');
		fileHeader[2] = (unsigned char)(fileSize);
		fileHeader[3] = (unsigned char)(fileSize >> 8);
		fileHeader[4] = (unsigned char)(fileSize >> 16);
		fileHeader[5] = (unsigned char)(fileSize >> 24);
		fileHeader[10] = (unsigned char)(FILE_HEADER_SIZE + INFO_HEADER_SIZE);

		// HEADER_INFO
		unsigned char infoHeader[] = {
			0, 0, 0, 0,	// biSize - Groesse der BITMAPINFOHEADER-Struktur in Byte
			0, 0, 0, 0,	// biWidth - Breite der Bitmap in Pixel
			0, 0, 0, 0,	// biHeight - Höhe der Bitmap in Piel 
			0, 0,		// biPlanes - number of color planes
			0, 0,		// biBitCount - anzahl bits pro pixel
			0, 0, 0, 0, // biCompresion - 0(BI_RGB)/1(RLE8)/2(BI_RLE4)/3(BI_BITFIELDS)
			0, 0, 0, 0, // biSizeImage - Groesse der Bildaten in Byte
			0, 0, 0, 0, // biXPelsPerMeter - Horizontale Auflösung in Pixel pro Meter
			0, 0, 0, 0, // biYPelsPerMeter - Vertikale Auflösung in Pixel pro Meter
			0, 0, 0, 0, // biClrUsed - Wenn biBitCount=1: 0. biBitCount=4 oder 8: die Anzahl der Einträge der Farbtabelle; 0 bedeutet die maximale Anzahl (2, 16 oder 256).
			0, 0, 0, 0, // biClrImportant - Die anzahl saemtlicher im Bild verendeten Farben.
		};

		infoHeader[0] = (unsigned char)(INFO_HEADER_SIZE);
		infoHeader[4] = (unsigned char)(breite);
		infoHeader[5] = (unsigned char)(breite >> 8);
		infoHeader[6] = (unsigned char)(breite >> 16);
		infoHeader[7] = (unsigned char)(breite >> 24);
		infoHeader[8] = (unsigned char)(hohe);
		infoHeader[9] = (unsigned char)(hohe >> 8);
		infoHeader[10] = (unsigned char)(hohe >> 16);
		infoHeader[11] = (unsigned char)(hohe >> 24);
		infoHeader[12] = (unsigned char)(1);
		infoHeader[14] = (unsigned char)(BYTES_PER_PIXEL * 8);
		//printf("%s ", Filename);
		FILE* imageFile = fopen(Filename, "wb");
		//std::cout << imageFile<< std::endl;
		if (imageFile != nullptr) {
			fwrite(fileHeader, 1, FILE_HEADER_SIZE, imageFile);
			fwrite(infoHeader, 1, INFO_HEADER_SIZE, imageFile);

			for (int y = hohe; y >= 0; y--) {
				for (int x = 0; x < breite; x++) {
					unsigned char Pixel[] = {
						convertColorChannel(getPixelColor(x, y).B),
						convertColorChannel(getPixelColor(x, y).G),
						convertColorChannel(getPixelColor(x, y).R)
					};
					fwrite(Pixel, sizeof(char), sizeof(Pixel), imageFile);
				}
			}
			fclose(imageFile);
		}
		return false;
	}