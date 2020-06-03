# Use server core instead of nano because installing powershell is hard..
FROM mcr.microsoft.com/windows/servercore:ltsc2019 as sgx_dcap_nanoserver

LABEL version     = "0.1"
LABEL description = "This image provides Openenclave SGX run-time"

COPY install.* C:\

#RUN C:\install.cmd

#RUN del C:\install.*

#COPY build.* C:\
#COPY cleanup.* C:\

#RUN build.cmd
#RUN cleanup.cmd

USER OEUser