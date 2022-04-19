.class synthetic Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;
.super Ljava/lang/Object;
.source "ProControlPanelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESET_PRO_SETTINGS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v8, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SETTING_RESET:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v10, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_VIDEO_AUDIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v11, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ZOOM_ROCKER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v11}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v12, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v12}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v13}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v12, 0xd

    :try_start_c
    sget-object v13, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v14, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v14}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v13, 0xe

    :try_start_d
    sget-object v14, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v14, 0xf

    :try_start_e
    sget-object v15, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v16, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v15, 0x10

    :try_start_f
    sget-object v16, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v17, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v17

    aput v15, v16, v17
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    :try_start_10
    sget-object v17, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v17

    aput v1, v15, v17
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v15, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v15

    aput v0, v1, v15
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    return-void
.end method
