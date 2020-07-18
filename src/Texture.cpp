#include "Texture.h"
#include "vendor/stb_image/stb_image.h"
#include <GL/glew.h>
#include <GLFW/glfw3.h>
Texture::Texture(const std::string& path)
    :m_RendererID(0),m_FilePath(path), m_LocalBuffer(nullptr),m_Width(0), m_Height(0), m_BPP(0)
{
    glGenTexture(1, &m_RendererID);
    glBindTexture(GL_TEXTURE_2D, m_RendererID);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, count*sizeof(unsigned int), data, GL_STATIC_DRAW);
}
}
Texture::~Texture()
{

}
Texture::Bind(unsigned int slot=0) const
{

}
Texture::UnBind() const
{

}