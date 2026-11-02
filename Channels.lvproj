<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Folder">
			<Item Name="Channel.lvlibp" Type="LVLibp" URL="../Dependencies/Channel.lvlibp">
				<Item Name="API" Type="Folder">
					<Item Name="Get Class Plugin Parent.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/API/Get Class Plugin Parent.vi"/>
					<Item Name="Get Class Children.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/API/Get Class Children.vi"/>
					<Item Name="G_Paths.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/Private/G_Paths.vi"/>
					<Item Name="Get Config File.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/API/Get Config File.vi"/>
					<Item Name="Get Plugins Folder.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/API/Get Plugins Folder.vi"/>
					<Item Name="Load Class From Config.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/API/Load Class From Config.vi"/>
					<Item Name="Set ConfigFile.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/API/Set ConfigFile.vi"/>
					<Item Name="Set Plugins Folder.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/API/Set Plugins Folder.vi"/>
				</Item>
				<Item Name="UIs" Type="Folder">
					<Item Name="ChannelManagerUI.lvlib" Type="Library" URL="../Dependencies/Channel.lvlibp/Channel/ChannelManagerUI/ChannelManagerUI.lvlib"/>
					<Item Name="ChannelsManager.lvlib" Type="Library" URL="../Dependencies/Channel.lvlibp/Channel/ChannelsManager/ChannelsManager.lvlib"/>
				</Item>
				<Item Name="Channel.lvclass" Type="LVClass" URL="../Dependencies/Channel.lvlibp/Channel/Channel_class/Channel.lvclass"/>
				<Item Name="Configuration.lvclass" Type="LVClass" URL="../Dependencies/Channel.lvlibp/Channel/Configuration_class/Configuration.lvclass"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Actor Framework.lvlib" Type="Library" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/ActorFramework/Actor Framework.lvlib"/>
				<Item Name="usereventprio.ctl" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/event_ctls.llb/usereventprio.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="Get LV Class Default Value By Name.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Default Value By Name.vi"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Path.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Compare Two Paths.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="../Dependencies/Channel.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
			</Item>
		</Item>
		<Item Name="AIO" Type="Folder">
			<Item Name="AIO-Channel.lvlib" Type="Library" URL="../AIO-Channel/AIO-Channel.lvlib"/>
		</Item>
		<Item Name="DIO" Type="Folder">
			<Item Name="DIO-Channel.lvlib" Type="Library" URL="../DIO-Channel/DIO-Channel.lvlib"/>
		</Item>
		<Item Name="Template-Channels.lvlib" Type="Library" URL="../Channels Template/Template-Channels.lvlib"/>
		<Item Name="Template-ChannelsChild.lvlib" Type="Library" URL="../Channels Template/Child/Template-ChannelsChild.lvlib"/>
		<Item Name="TestUI.vi" Type="VI" URL="../TestUI.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Actor Framework.lvlib" Type="Library" URL="/&lt;vilib&gt;/ActorFramework/Actor Framework.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="LV Config Read Boolean.vi" Type="VI" URL="/&lt;resource&gt;/dialog/lvconfig.llb/LV Config Read Boolean.vi"/>
			<Item Name="LV Config Read Color.vi" Type="VI" URL="/&lt;resource&gt;/dialog/lvconfig.llb/LV Config Read Color.vi"/>
			<Item Name="LV Config Read Numeric (I32).vi" Type="VI" URL="/&lt;resource&gt;/dialog/lvconfig.llb/LV Config Read Numeric (I32).vi"/>
			<Item Name="LV Config Read Pathlist.vi" Type="VI" URL="/&lt;resource&gt;/dialog/lvconfig.llb/LV Config Read Pathlist.vi"/>
			<Item Name="LV Config Read String.vi" Type="VI" URL="/&lt;resource&gt;/dialog/lvconfig.llb/LV Config Read String.vi"/>
			<Item Name="LV Config Read.vi" Type="VI" URL="/&lt;resource&gt;/dialog/lvconfig.llb/LV Config Read.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="AIO-Channel" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{54D83D0F-86C9-4283-863C-13C444952D9C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">AIO-Channel</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{F5FD9F16-A450-4339-8D26-AC12BBCFBF28}</Property>
				<Property Name="Bld_version.build" Type="Int">5</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">AIO-Channel.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../Builds/AIO-Channel.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Builds</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{8230E3E1-8BF9-4D78-BE43-B11B8EA8FDEE}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AIO/AIO-Channel.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">LV GYM LATAM</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">AIO-Channel</Property>
				<Property Name="TgtF_internalName" Type="Str">AIO-Channel</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2026 LV GYM LATAM</Property>
				<Property Name="TgtF_productName" Type="Str">AIO-Channel</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{85CF7210-7C61-46E8-BDFC-E1596E2C0B77}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">AIO-Channel.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="DIO-Channel" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E8CAA955-EB7D-4F69-A301-1A8DD773BE60}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">DIO-Channel</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{3E705A1A-A3C6-4A90-81A9-0823181D54C4}</Property>
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">DIO-Channel.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../Builds/DIO-Channel.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Builds</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{8230E3E1-8BF9-4D78-BE43-B11B8EA8FDEE}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/AIO/AIO-Channel.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/DIO/DIO-Channel.lvlib</Property>
				<Property Name="Source[2].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[2].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[2].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[2].preventRename" Type="Bool">true</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">LV GYM LATAM</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">DIO-Channel</Property>
				<Property Name="TgtF_internalName" Type="Str">DIO-Channel</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2026 LV GYM LATAM</Property>
				<Property Name="TgtF_productName" Type="Str">DIO-Channel</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{5768C3C0-9349-48D2-AF1A-67394427CEE3}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">DIO-Channel.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
