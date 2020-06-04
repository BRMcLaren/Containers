FROM mcr.microsoft.com/windows/nanoserver:1809 as sgx_dcap_nanoserver
 
LABEL vendor      = "Intel Inc."
LABEL version     = "2.4"
LABEL description = "This image provides Intel SGX run-time and DCAP Quote Generation for nanoserver"
 
#CAB File for the Windows Server 2019 Installation of the PSW on Windows Update
ENV PSW_CAB e051e8d3-46e8-4fe7-968c-415acebaf18d_5b0def687a250297e5b799e1808fc6ce501a393f.cab
 
#CAB File for the Windows Server 2019 Installation of DCAP on Windows Update
ENV DCAP_CAB 3ed5a7ee-5db6-444b-a40f-b8ba5edac4d7_0ec417b46ef98ced80fb5e86f86a8417811211c8.cab
 
WORKDIR /
USER Administrator
 
# Download the latest PSW And DCAP CAB files and then expand the required files into the appropriate directories
#   Do this in one command to minimize container layers (reduces the size of the container)
 
RUN curl.exe -O http://download.windowsupdate.com/c/msdownload/update/driver/drvs/2019/07/%PSW_CAB% \
&& expand.exe /R %PSW_CAB% /F:sgx_urts.dll c:\windows\system32 \
&& expand /R %PSW_CAB% /F:sgx_enclave_common.dll c:\Windows\System32 \
&& expand /R %PSW_CAB% /F:sgx_uae_service.dll c:\Windows\System32 \
&& expand /R %PSW_CAB% /F:third_party.rtf c:/ \
&& del /q %PSW_CAB% \
&& curl.exe -O http://download.windowsupdate.com/c/msdownload/update/driver/drvs/2019/07/%DCAP_CAB% \
&& expand /R %DCAP_CAB% /F:sgx_dcap_ql.dll c:\Windows\System32 \
&& expand /R %DCAP_CAB% /F:pce.signed.dll c:\Windows\System32 \
&& expand /R %DCAP_CAB% /F:qe3.signed.dll c:\Windows\System32 \
&& expand /R %DCAP_CAB% /F:License.txt c:/ \
&& expand /R %DCAP_CAB% /F:ThirdPartyLicenses.txt c:/ \
&& del /q %DCAP_CAB%


COPY install.* C://
RUN C://install.cmd

COPY build.* C://
COPY cleanup.* C://