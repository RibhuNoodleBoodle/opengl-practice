#include "Renderer.h"
#include "VertexBuffer.h"
#include "VertexBufferLayout.h"
#include <GL/glew.h>
#include <GLFW/glfw3.h>

VertexBuffer::VertexBuffer(const void* data, unsigned int size)
{
    glGenBuffers(1, &m_RendererID);
    std::cout << glGetError() << std::endl;
    glBindBuffer(GL_ARRAY_BUFFER, m_RendererID);
    std::cout << glGetError() << std::endl;
    glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW);
    std::cout << glGetError() << std::endl;
}
VertexBuffer::~VertexBuffer()
{
    glDeleteBuffers(1,&m_RendererID);
}

void VertexBuffer::Bind() const
{
    glBindBuffer(GL_ARRAY_BUFFER, m_RendererID);
    std::cout << glGetError() << std::endl;
}
void VertexBuffer::UnBind() const
{
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    std::cout << glGetError() << std::endl;
}