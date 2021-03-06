#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base

WORKDIR /app
EXPOSE 80
EXPOSE 443
COPY /app/publish .
RUN mkdir reports
COPY /Reports/*.rdlx /app/Reports/

ENTRYPOINT ["dotnet", "ActiveReport.POC.dll"]
