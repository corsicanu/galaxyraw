.class synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;
.super Ljava/lang/Object;
.source "MakerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$core2$MakerPrivateKey$ID:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$core2$container$PictureDataInfo$PicFormat:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey$ID;->values()[Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey$ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$MakerPrivateKey$ID:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey$ID;->DEVICE_ORIENTATION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey$ID;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey$ID;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->values()[Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x2

    :try_start_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->RECONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x3

    :try_start_3
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECT_FAILED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DEVICE_CLOSED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->values()[Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$container$PictureDataInfo$PicFormat:[I

    :try_start_8
    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$container$PictureDataInfo$PicFormat:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$container$PictureDataInfo$PicFormat:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
