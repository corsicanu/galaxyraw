.class Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;
.super Ljava/lang/Object;
.source "MakerConnectionInfo.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;


# instance fields
.field private mEffectProcessorMode:I

.field private mExtraPictureSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainPreviewCallbackSize:Landroid/util/Size;

.field private mMultiCameraEffectProcessorMode:I

.field private mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

.field private mPictureSize:Landroid/util/Size;

.field private mPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

.field private mRecorderSurface:Landroid/view/Surface;

.field private mSubPreviewCallbackSize:Landroid/util/Size;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mRecorderSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mPictureSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mExtraPictureSize:Landroid/util/Pair;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mMainPreviewCallbackSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mSubPreviewCallbackSize:Landroid/util/Size;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mEffectProcessorMode:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mMultiCameraEffectProcessorMode:I

    return-void
.end method


# virtual methods
.method public enableSuperVdis(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSwSuperVdis(Ljava/lang/Boolean;)V

    return-void
.end method

.method public enableVideoBeautyFace(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setVideoBeautyFace(Ljava/lang/Boolean;)V

    return-void
.end method

.method getEffectProcessorMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mEffectProcessorMode:I

    return p0
.end method

.method getExtraPictureSize()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mExtraPictureSize:Landroid/util/Pair;

    return-object p0
.end method

.method getMainPreviewCallbackSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mMainPreviewCallbackSize:Landroid/util/Size;

    return-object p0
.end method

.method getMultiCameraEffectProcessorMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mMultiCameraEffectProcessorMode:I

    return p0
.end method

.method getParameters()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    return-object p0
.end method

.method getPictureSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method getPreviewSurfaceData()Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    return-object p0
.end method

.method getRecorderSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mRecorderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getSubPreviewCallbackSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mSubPreviewCallbackSize:Landroid/util/Size;

    return-object p0
.end method

.method public setEffectProcessorMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mEffectProcessorMode:I

    return-void
.end method

.method public setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pictureSize",
            "cameraDeviceId"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mExtraPictureSize:Landroid/util/Pair;

    return-void
.end method

.method public setMainPreviewCallbackSize(Landroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mMainPreviewCallbackSize:Landroid/util/Size;

    return-void
.end method

.method public setMultiCameraEffectProcessorMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mMultiCameraEffectProcessorMode:I

    return-void
.end method

.method public setPictureSize(Landroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureSize"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mPictureSize:Landroid/util/Size;

    return-void
.end method

.method setPreviewSurfaceData(Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceData"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    return-void
.end method

.method setRecorderSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mRecorderSurface:Landroid/view/Surface;

    return-void
.end method

.method public setRecordingDrMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$ConnectionInfo$RecordingDrMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->MODE_HDR10:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setRecordingDrMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->MODE_SDR:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setRecordingDrMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;)V

    :goto_0
    return-void
.end method

.method public setSensorFlipMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorFlipMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensorFlipMode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$ConnectionInfo$SensorFlipMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorFlipMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_NONE:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSensorFlipMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_HORIZONTAL_VERTICAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSensorFlipMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_HORIZONTAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSensorFlipMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->FLIP_MODE_VERTICAL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSensorFlipMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;)V

    :goto_0
    return-void
.end method

.method public setSensorStreamType(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;->FULL:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;->TYPE_FULL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setStreamType(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;->TYPE_CROP:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setStreamType(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;)V

    :goto_0
    return-void
.end method

.method public setSubPreviewCallbackSize(Landroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mSubPreviewCallbackSize:Landroid/util/Size;

    return-void
.end method

.method public setSuperSlowMotionMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SsmMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$ConnectionInfo$SsmMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SsmMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->MODE_SINGLE_FRC:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSsmShotMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->MODE_MULTI:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSsmShotMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->MODE_SINGLE:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSsmShotMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;)V

    :goto_0
    return-void
.end method

.method public setVdisMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$ConnectionInfo$VdisMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSwVdis(Ljava/lang/Byte;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSwVdis(Ljava/lang/Byte;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setSwVdis(Ljava/lang/Byte;)V

    return-void
.end method

.method public setVideoFpsRange(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minFps",
            "maxFps"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setMinFps(Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->setMaxFps(Ljava/lang/Integer;)V

    return-void
.end method
