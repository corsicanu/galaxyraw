.class synthetic Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;
.super Ljava/lang/Object;
.source "SamsungAnalyticsLogIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    :try_start_4
    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->CAMERA_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOICE_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->FLOATING_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->SCREEN_TOUCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->FUNCTION_KEY_DOUBLE_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_LONG_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    :try_start_11
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap$16;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method
