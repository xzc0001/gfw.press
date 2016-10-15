#  DockerFile to build GFW.Press
#  Based on Centos
#  Maintained by XZC
FROM centos
MAINTAINER xzc0001@gmail.com

# Begin installation
# RUN echo ..........开始安装GFW.Press服务器版.......... 
RUN cd / 
RUN yum install java-1.8.0-openjdk-devel  -y 
RUN yum install squid -y 
RUN chkconfig squid on 
RUN service squid start 
RUN yum install git  -y 
RUN git clone https://github.com/chinashiyu/gfw.press.git 
RUN chmod a+x /gfw.press/server.sh 
# RUN echo ..........安装GFW.Press服务器版完成......... 

EXPOSE 10006

# Start GFW.Press
CMD /gfw.press/server.sh
