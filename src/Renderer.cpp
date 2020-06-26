#include "Renderer.h"
#include <iostream>
#define ASSERT(x) if (!(x)) raise(SIGTRAP);
#define GLCall(x) GLClearError();\
    x;\
    ASSERT(GLLogCall(#x, __FILE__, __LINE__));

static void GLClearError()
{
    while(!glGetError());
}

static bool GLLogCall(const char* function, const char* file, int line)
{
    while(GLenum error= glGetError())
    {
        std::cout<<"[OpenGL Error] ("<<error<<")"<<function<<" "<<file<<"):"<<line<<std::endl;
        return false;
    }
    return true;
}