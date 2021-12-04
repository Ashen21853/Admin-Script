
# Services IPv6
Set-Service -Name "iphlpsvc" -StartupType Disabled -Status Stopped




# shared Directory
#Set-Service -Name "CscService" -StartupType Disabled -Status Stopped
#Set-Service -Name "TrkWks" -StartupType Disabled -Status Stopped





# Bitlocker services
Set-Service -Name "BDESVC" -StartupType Disabled -Status Stopped



#######################################################################
######################         Devices        #########################
#######################################################################

#Désactivez si vous n’utilisez pas de scanner.
Set-Service -Name "stisvc" -StartupType Disabled -Status Stopped 

# Bluetooth
#Set-Service -Name "bthserv" -StartupType Disabled -Status Stopped


# tactil keyboard (set off if not tablet)
Set-Service -Name "TabletInputService" -StartupType Disabled -Status Stopped

# Webcam
#Set-Service -Name "FrameServer" -StartupType Disabled -Status Stopped

# Biometrie
Set-Service -Name "WbioSrvc" -StartupType Disabled -Status Stopped

# Phone service
Set-Service -Name "PhoneSvc" -StartupType Disabled -Status Stopped

# printer spooler
Set-Service -Name "spooler" -StartupType Disabled -Status Stopped

# Fax
Set-Service -Name "Fax" -StartupType Disabled -Status Stopped

# Telephonie
Set-Service -Name "TapiSrv" -StartupType Disabled -Status Stopped



#######################################################################
######################    Windows built-in    #########################
#######################################################################

# Workgroup
#Set-Service -Name "lmhosts" -StartupType Disabled -Status Stopped

# Netlogon (auth by domain controller)
Set-Service -Name "Netlogon" -StartupType Disabled -Status Stopped

# Windows Error report
Set-Service -Name "WerSvc" -StartupType Disabled -Status Stopped

# Diagnostic
#Set-Service -Name "" -StartupType Disabled -Status Stopped

# Microsoft dump personnal data
Set-Service -Name "diagnosticshub.standardcollector.service" -StartupType Disabled -Status Stopped

# Remote desktop
#Set-Service -Name "SessionEnv" -StartupType Disabled -Status Stopped

# Parental control
Set-Service -Name "WpcMonSvc" -StartupType Disabled -Status Stopped

# User Experience (Dump personnal data)
Set-Service -Name "DiagTrack" -StartupType Disabled -Status Stopped

# Workgroup
#Set-Service -Name "lmhosts" -StartupType Disabled -Status Stopped

# downloaded maps
Set-Service -Name "MapsBroker" -StartupType Disabled -Status Stopped

# geolocalisation
Set-Service -Name "lfsvc" -StartupType Disabled -Status Stopped



#######################################################################
######################       HYPER-V          #########################
#######################################################################

# Hyper-V guest service
Set-Service -Name "vmicguestinterface" -StartupType Disabled -Status Stopped

# Hyper-V data exchange
Set-Service -Name "vmickvpexchange" -StartupType Disabled -Status Stopped

# Hyper-V powerShell service
Set-Service -Name "vmicvmsession" -StartupType Disabled -Status Stopped

# pulsation service hyper-V
Set-Service -Name "vmichearbeat" -StartupType Disabled -Status Stopped

# hyper-V timesync
Set-Service -Name "vmictimesync" -StartupType Disabled -Status Stopped

# Hyper-V remote desktop
Set-Service -Name "vmicrdv" -StartupType Disabled -Status Stopped

# Hyper-V remote halt
Set-Service -Name "vmicshutdown" -StartupType Disabled -Status Stopped

# microsoft Hyper-V request service
Set-Service -Name "vmicvss" -StartupType Disabled -Status Stopped



#######################################################################
######################     Cartes a puces     #########################
#######################################################################

# cartes a puces
Set-Service -Name "ScDeviceEnum" -StartupType Disabled -Status Stopped

# cartes a puces
Set-Service -Name "SCardSvr" -StartupType Disabled -Status Stopped


# retrait de la carte a puce
Set-Service -Name "SCPolicySvc" -StartupType Disabled -Status Stopped