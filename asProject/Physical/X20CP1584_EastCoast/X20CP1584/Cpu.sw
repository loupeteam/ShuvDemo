<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="4.9"?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="Main" Source="Process.Main.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="RevInfo" Source="Shuv.Tasks.Revision.RevInfo.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8">
    <Task Name="IotCtrl" Source="Shuv.Tasks.IoT.IotCtrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <Binaries>
    <BinaryObject Name="FWRules" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="TCData" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="udbdef" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="asfw" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="User" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="iomap" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="sysconf" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="arconfig" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="ashwd" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="Role" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ashwac" Source="" Memory="UserROM" Language="Binary" />
  </Binaries>
  <Libraries>
    <LibraryObject Name="operator" Source="Libraries.operator.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="runtime" Source="Libraries.runtime.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="astime" Source="Libraries.astime.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsIecCon" Source="Libraries.AsIecCon.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="standard" Source="Libraries.standard.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="ArEventLog" Source="Shuv.Libraries.AR.ArEventLog.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsARCfg" Source="Shuv.Libraries.AR.AsARCfg.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsArLog" Source="Shuv.Libraries.AR.AsArLog.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsBrStr" Source="Shuv.Libraries.AR.AsBrStr.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsBrWStr" Source="Shuv.Libraries.AR.AsBrWStr.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsHttp" Source="Shuv.Libraries.AR.AsHttp.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIODiag" Source="Shuv.Libraries.AR.AsIODiag.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsZip" Source="Shuv.Libraries.AR.AsZip.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="FileIO" Source="Shuv.Libraries.AR.FileIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsICMP" Source="Shuv.Libraries.AR.AsICMP.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="ArProject" Source="Shuv.Libraries.AR.ArProject.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsHW" Source="Shuv.Libraries.AR.AsHW.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsETH" Source="Shuv.Libraries.AR.AsETH.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="ArCert" Source="Shuv.Libraries.AR.ArCert.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="AsGuard" Source="Shuv.Libraries.AR.AsGuard.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIO" Source="Shuv.Libraries.AR.AsIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="IotMqtt" Source="Shuv.Libraries.External.IotMqtt.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="BodyGuard" Source="Shuv.Libraries.External.BodyGuard.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="BRSE_ARL" Source="Shuv.Libraries.External.BRSE_ARL.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="FIOWrap" Source="Shuv.Libraries.External.FIOWrap.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="jsmn_parse" Source="Shuv.Libraries.External.jsmn_parse.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="LogThat" Source="Shuv.Libraries.External.LogThat.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="StringExt" Source="Shuv.Libraries.External.StringExt.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="IPCfgLib" Source="Shuv.Libraries.External.IPCfgLib.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Shuv" Source="Shuv.Libraries.External.Shuv.lby" Memory="UserROM" Language="ANSIC" Debugging="true" />
  </Libraries>
</SwConfiguration>