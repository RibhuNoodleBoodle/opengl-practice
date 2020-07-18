#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include "Shader.h"
#include "IndexBuffer.h"
#include "VertexBuffer.h"
#include "Renderer.h"
#include "VertexArray.h"
#include "VertexBufferLayout.h"

int main(void)
{
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
        return -1;

    /* Create a windowed mode window and its OpenGL context */
    glfwWindowHint(GLFW_OPENGL_DEBUG_CONTEXT, false);  
    window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }
    
    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    if(glewInit()!=GLEW_OK)
        std::cout<<"error"<<std::endl;
    
    float positions[]={
        -0.5f, -0.5f,
        0.5f, -0.5f,
        0.5f, 0.5f,
        -0.5f, 0.5f,
    };
std::cout<<glGetString(GL_VERSION)<<std::endl;
{
    unsigned int indices[]={
        0, 1, 2,
        2, 3, 0
    }; 
    VertexArray va;
    VertexBuffer vb(positions, sizeof(positions));
    VertexBufferLayout layout;
    layout.Push<float>(2);
    va.AddBuffer(vb,layout);
    IndexBuffer ib(indices, 6);
    Shader shader("res/shaders/basic_c.shader");
    shader.Bind();
    shader.SetUniform4f("u_Color", 0.7f, 1.0f, 0.8f, 0.2f);

    va.UnBind();
    vb.UnBind();
    ib.UnBind();
    shader.Unbind();

    Renderer renderer;
    float r;
    float interval=0.05f;
    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        /* Render here */
        renderer.Clear();
        shader.Bind();
        shader.SetUniform4f("u_Color", r, 1.0f, 0.8f, 0.2f);
        renderer.Draw(va, ib, shader);
        if(r>1.0f)
            interval=-0.05f;
        if(r<0.0f)
            interval=0.05f;
        r+=interval;
        /* Swap front and back buffers */
        glfwSwapBuffers(window);
        /* Poll for and process events */
        glfwPollEvents();
    }
}
    glfwTerminate();
    return 0;
}