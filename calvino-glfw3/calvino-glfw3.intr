module: calvino-glfw3
synopsis: bindings for the glfw3 library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "GLFW/glfw3.h"
    },

    import: all,

    equate: {"char *" => <c-string>};

  function "glfwGetVersion",
    output-argument: 1,
    output-argument: 2,
    output-argument: 3;

  function "glfwGetMonitorPos",
    output-argument: 2,
    output-argument: 3;

  function "glfwGetMonitorPhysicalSize",
    output-argument: 2,
    output-argument: 3;

  function "glfwGetWindowPos",
    output-argument: 2,
    output-argument: 3;

  function "glfwGetWindowSize",
    output-argument: 2,
    output-argument: 3;

  function "glfwGetFramebufferSize",
    output-argument: 2,
    output-argument: 3;

  function "glfwGetCursorPos",
    output-argument: 2,
    output-argument: 3;

  function "glfwWindowShouldClose",
    map-result: <C-boolean>;
end interface;
