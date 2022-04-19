.class synthetic Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;
.super Ljava/lang/Object;
.source "ShutterTimerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$engine$ShutterTimerManagerImpl$TimerState:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->BURST_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    :try_start_5
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraContext$InputType:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOICE_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->values()[Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$engine$ShutterTimerManagerImpl$TimerState:[I

    :try_start_8
    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$engine$ShutterTimerManagerImpl$TimerState:[I

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->STARTED:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl$TimerState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
