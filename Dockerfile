#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.


FROM microsoft/dotnet:2.1-aspnetcore-runtime 
WORKDIR /app
#拷贝项目publish文件夹中的所有文件到 docker容器中的publish文件夹中  
COPY . /app
#设置环境变量（必要）
ENV ASPNETCORE_URLS http://0.0.0.0:8011
#设置Docker容器对外暴露8011端口
EXPOSE 8011

ENTRYPOINT ["dotnet", "WebApplication1.dll"]
