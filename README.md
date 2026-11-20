# Channels

Signal-type channel plugins for the **Generic Channel** factory framework (LabVIEW 2021): **AIO-Channel** (analog I/O) and **DIO-Channel** (digital I/O), plus a **template** for creating new channel types.

This is the middle of the three layers:

| Layer | Folder | Provides |
|---|---|---|
| 1. Framework | `..\Generic Channel` | Abstract `Channel` / `Configuration`, factory API, manager actors. Shipped as `Channel.lvlibp`. |
| **2. Channel types** | **this folder** | What a kind of signal looks like: its API (`Get_Input`, `Set_Output`) and common settings (`Direction`, `Units`). Shipped as `AIO-Channel.lvlibp` and `DIO-Channel.lvlibp`. |
| 3. Devices | `..\Device Channels` | How a specific backend implements it: DAQmx and the Simulator. |

Layer 3 classes inherit from the classes in this layer's packed libraries. A DAQmx DIO channel and a simulated DIO channel therefore share the same `DIO_Channel` API and can replace each other in the configuration file without any change to the application.

---

## Getting started: install the dependencies

The project builds against `Dependencies\Channel.lvlibp`, which is not built here. `Install_Dependencies.bat` downloads it from the framework's GitHub release. **Run it once before opening `Channels.lvproj`**, and again whenever the dependency version changes.

### Prerequisites

- **GitHub CLI (`gh`)**, installed and signed in. Run `gh auth login` once, and check with `gh auth status`. Your account needs read access to the repository below.
- **Windows 10 (1803) or later.** The script unzips with the built-in `tar`.
- **LabVIEW closed** (or at least this project). Packed libraries are locked while loaded and can't be overwritten.

### Run

Double-click `Install_Dependencies.bat`, or run it from a terminal:

```bat
cd "<path>\Factory Pattern\Channels"
Install_Dependencies.bat
```

It ends with `All dependencies downloaded successfully!`, or with `ERROR: Dependency installation failed!` and a non-zero exit code.

### What it downloads

| Dependency | GitHub repository | Release | Asset | Result in `Dependencies\` |
|---|---|---|---|---|
| Generic Channel | `Andergongar/Generic-Channel` | `v1.0.0` | `LV2021x64.zip` | `Channel.lvlibp` |

For each dependency, the script:
1. Creates `Dependencies\` (and an empty `Release\`) if missing.
2. Downloads the release assets into `Dependencies\` with `gh release download`.
3. Extracts every `.zip` there, overwriting existing files, then deletes the zip.

### Changing the version

Edit the configuration block at the top of the script:

```bat
set "GENERIC_CH_VERSION=v1.0.0"
set "GENERIC_CH_REPO=Andergongar/Generic-Channel"
```

After changing it, re-run the script and rebuild this project (see [Building](#building)).

### Troubleshooting

| Symptom | Fix |
|---|---|
| `'gh' is not recognized…` | Install the GitHub CLI and open a new terminal |
| `release not found` / `HTTP 404` | Wrong tag, or no access to the repository: check `gh auth status` |
| `ERROR: Failed to extract …` | A file in `Dependencies\` is locked. Close LabVIEW and run the script again. |
| Classes show broken parents in LabVIEW | `Dependencies\Channel.lvlibp` is missing or a different version. Re-run the script. |

---

## Folder layout

```
Channels\
├── Channels.lvproj
├── Install_Dependencies.bat           downloads Dependencies\ from GitHub releases
├── Dependencies\Channel.lvlibp        framework (installed by Install_Dependencies.bat)
├── AIO-Channel\  AIO-Channel.lvlib
│   ├── AIO_Channel_class\             AIO_Channel.lvclass
│   ├── AIO-Configuration_class\       AIO-Configuration.lvclass
│   └── AIO_TypeSpeficifer.vi
├── DIO-Channel\  DIO-Channel.lvlib
│   ├── DIO_Channel_class\             DIO_Channel.lvclass
│   ├── DIO-Configuration_class\       DIO-Configuration.lvclass
│   ├── DIO_TypeSpeficifer.vi
│   ├── Private\G_Variables.vi
│   └── TestAIO.vi, TestDIO.vi
├── Channels Template\                 Template-Channels.lvlib (+ Child\)
├── Files\Test.ini                     example channels file
├── TestUI.vi                          launches the Channel Manager UI
└── Builds\  AIO-Channel.lvlibp, DIO-Channel.lvlibp
```

---

## Class hierarchy

```
Channel.lvlibp:Channel
├── AIO-Channel.lvlib:AIO_Channel
├── DIO-Channel.lvlib:DIO_Channel
└── Template-Channels.lvlib:Type_Channel
    └── Template-ChannelsChild.lvlib:Type_Channel

Channel.lvlibp:Configuration
├── AIO-Channel.lvlib:AIO-Configuration
├── DIO-Channel.lvlib:DIO-Configuration
└── Template-Channels.lvlib:Template_CFG
    └── Template-ChannelsChild.lvlib:Template_CFG
```

Every plugin is a **pair** of classes: a Channel (behaviour) and a Configuration (settings, persistence and settings panel). The channel's `GetConfigurationType` tells the factory which configuration class belongs to it.

---

## AIO-Channel

| Class | Members |
|---|---|
| `AIO_Channel` | Overrides `Connect`, `Disconnect`, `GetConnectionStatus`, `GetConfigurationType`. Adds `Get_Input`, `Set_Output` (folder *Analog*) and `GetAIOConfiguration`. |
| `AIO-Configuration` | Overrides `LoadCFG`, `SaveCFG`, `GetPanelUI`. Adds `AIO-Panel.vi`, `CreateAIO_CFG` and accessors for `AIO_Data`, `Direction`, `Units` (`tdef\Data.ctl`, `tdef\Direction.ctl`). |

## DIO-Channel

| Class | Members |
|---|---|
| `DIO_Channel` | Overrides `Connect`, `Disconnect`, `GetConnectionStatus`, `GetConfigurationType`. Adds `Get_Input`, `Set_Output` (folder *Digital*) and `GetDIOConfiguration`. |
| `DIO-Configuration` | Overrides `LoadCFG`, `SaveCFG`, `GetPanelUI`. Adds `DIO-Panel.vi`, `CreateDIO_CFG` and accessors for `DIO_Data`, `Direction`. |

AIO and DIO are usable on their own, but they are mainly meant as **parents** for device-specific classes in `..\Device Channels`. Code that works with an `AIO_Channel` works with any analog device.

`*_TypeSpeficifer.vi` (one per library) most likely outputs a class constant that identifies the plugin type to the loader.

---

## Channels Template: creating a new channel type

`Channels Template\Template-Channels.lvlib` is a minimal plugin pair, ready to copy:

| Class | Members |
|---|---|
| `Type_Channel` | `Connect`, `Disconnect`, `GetConnectionStatus`, `GetConfigurationType` |
| `Template_CFG` | `LoadCFG`, `SaveCFG`, `GetPanelUI`, `TemplatePanel.vi`, `CreateTemplateChildCfg`, `Read/WriteTemplateData`, `tdef\Data.ctl` |

`Channels Template\Child\` shows a **second level** of inheritance: a plugin that extends another plugin. Layer 3 uses this pattern too (DAQmx `DIO_Channel` → `DIO_Channel` → `Channel`).

### Steps

1. **Copy** `Channels Template` to a new folder at the same depth (for example `Serial-Channel\`). The parent links are relative (`..\..\..\Dependencies\Channel.lvlibp`).
2. **Rename inside LabVIEW, not in Explorer.** Close this project, open the copied `.lvlib`, and in Project Explorer use right-click → *Rename* on:
   - the library → `Serial-Channel.lvlib`
   - `Type_Channel` → `Serial_Channel`
   - `Template_CFG` → `Serial-Configuration`
   - the panel, create and specifier VIs

   Then *Save All*. Delete `Child\` if you don't need it.
3. **Configuration class:**
   - Put your settings in `tdef\Data.ctl`, and update the accessors.
   - `SaveCFG` / `LoadCFG` write and read each setting as an INI key. Keep the parent call.
   - Build the settings panel VI, and make `GetPanelUI` return it.
4. **Channel class:**
   - `GetConfigurationType` must return **your** configuration class.
   - Implement `Connect`, `Disconnect`, `GetConnectionStatus`.
   - Add the type's own API (as AIO and DIO do with `Get_Input` and `Set_Output`).
5. **Build:** add the library to `Channels.lvproj`, duplicate the `DIO-Channel` build spec, point it at your library, and keep *Exclude dependent packed libraries* on. The output goes to `Builds\`.
6. **Deploy:** put the plugin under the plugins folder. In the Manager UI, *Load Plugins* will list it.

---

## Configuration file (`Files\Test.ini`)

One INI section per channel. `PluginPath` (relative to the plugins folder, here the `Factory Pattern` folder) selects the class, and the other keys come from the plugin's `SaveCFG`:

```ini
[AI_1]
Direction = "Input"
Units = "HOLA"
PluginPath = "Device Channels\\Simulator\\Channels\\DIO-Channel\\AIO_Channel_class\\AIO_Channel.lvclass"

[DIO_1]
Direction = "Input"
DAQ_Line = "Dev2/port0/line0"
PluginPath = "Device Channels\\DAQmx\\DIO_Channel_class\\DIO_Channel.lvclass"

[ttt]
Alias = "Gol"
PluginPath = "Channels\\Channels Template\\Type_Channel\\Type_Channel.lvclass"
```

---

## Building

`Channels.lvproj` → Build Specifications (Packed Library, output to `Builds\`, dependent PPLs excluded):

| Build spec | Output |
|---|---|
| `AIO-Channel` | `Builds\AIO-Channel.lvlibp` |
| `DIO-Channel` | `Builds\DIO-Channel.lvlibp` |

Build order across the demo:

1. Run `Install_Dependencies.bat` to get `Channel.lvlibp`. If you are testing an unreleased framework build, copy `..\Generic Channel\Builds\Channel.lvlibp` into `Dependencies\` by hand instead.
2. Build this project.
3. Publish the two `.lvlibp` files as a GitHub release of `Andergongar/Abstraction-Channels`: a flat `LV2021x64.zip` containing `AIO-Channel.lvlibp`, `DIO-Channel.lvlibp` and `ExcludeLoad.Plugin`. Then update `ABSTRACTION_CH_VERSION` in `..\Device Channels\Install_Dependencies.bat` and rebuild that project.

The device classes inherit from the classes inside these packed libraries, so rebuild layer 3 whenever you rebuild this layer.

---

## Testing

- `TestUI.vi`: launches the Channel Manager UI, using these plugins.
- `DIO-Channel\TestAIO.vi`, `DIO-Channel\TestDIO.vi`: standalone tests of the AIO and DIO channels.

---

## Housekeeping notes

- `DIO-Channel\Private\G_Variables.vi`, `TestAIO.vi` and `TestDIO.vi` are in the `DIO-Channel` folder but are not members of `DIO-Channel.lvlib`. `G_Variables.vi` is used by `..\Device Channels\Simulator\...\Simulator-Channel.lvlib`, so moving or deleting it breaks the simulator. Consider moving it into `Device Channels\Simulator\`.
- `TestAIO.vi` sits in the `DIO-Channel` folder.
- The DIO-Channel build spec also lists `AIO-Channel.lvlib` as a source. Check that this is intended.
