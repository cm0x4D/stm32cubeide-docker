# Docker image to build STM32CubeIDE projects

In order to be able to  build the container you need to download STM32CubeIDE for Linux (STM32CubeIDE-DEB) from [here](https://www.st.com/en/development-tools/stm32cubeide.html).

The docker build file is for version 1.7.0 (1.7.0\_10852\_20210715\_0634), so you need to download exctly that version and save it in this folder in order to be able to build the image.

Then build the image using:

	# docker build . -t stm32cubeide:1.7.0