.class public Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;,
        Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;,
        Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;,
        Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;,
        Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;
    }
.end annotation


# instance fields
.field private cameraClient:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

.field private maxFps:Ljava/lang/Integer;

.field private minFps:Ljava/lang/Integer;

.field private recordingDrMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

.field private recordingExtraMode:Ljava/lang/Integer;

.field private sensorFlipMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

.field private final sessionKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ssmShotMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

.field private streamType:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

.field private swSuperVdis:Ljava/lang/Boolean;

.field private swVdis:Ljava/lang/Byte;

.field private videoBeautyFace:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sensorFlipMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->cameraClient:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_MAX_FPS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->maxFps:Ljava/lang/Integer;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SW_VIDEO_STABILIZATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->swVdis:Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SW_SUPER_VIDEO_STABILIZATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->swSuperVdis:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_VIDEO_BEAUTY_FACE:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->videoBeautyFace:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_DR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->MODE_SDR:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->recordingDrMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SSM_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->MODE_UNKNOWN:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->ssmShotMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;->TYPE_FULL:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->streamType:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCameraClient()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->cameraClient:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    return-object p0
.end method

.method public getMaxFps()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->maxFps:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMinFps()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->minFps:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRecordingDrMode()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->recordingDrMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    return-object p0
.end method

.method public getRecordingExtraMode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->recordingExtraMode:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSensorFlipMode()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sensorFlipMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    return-object p0
.end method

.method public getSessionKeys()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    return-object p0
.end method

.method public getSsmShotMode()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->ssmShotMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    return-object p0
.end method

.method public getStreamType()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->streamType:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    return-object p0
.end method

.method public getSwSuperVdis()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->swSuperVdis:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSwVdis()Ljava/lang/Byte;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->swVdis:Ljava/lang/Byte;

    return-object p0
.end method

.method public getVideoBeautyFace()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->videoBeautyFace:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCameraClient(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraClient"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->cameraClient:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$CameraClient;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMaxFps(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxFps"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_MAX_FPS:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->maxFps:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMinFps(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minFps"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_MIN_FPS:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->minFps:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRecordingDrMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingDrMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_DR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->recordingDrMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRecordingExtraMode(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingExtraMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_EXTRA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->recordingExtraMode:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSensorFlipMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensorFlipMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SENSOR_SENSOR_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sensorFlipMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSsmShotMode(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssmShotMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SSM_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->ssmShotMode:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStreamType(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->streamType:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSwSuperVdis(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "swSuperVdis"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SW_SUPER_VIDEO_STABILIZATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->swSuperVdis:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSwVdis(Ljava/lang/Byte;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "swVdis"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SW_VIDEO_STABILIZATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->swVdis:Ljava/lang/Byte;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVideoBeautyFace(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoBeautyFace"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->sessionKeys:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_VIDEO_BEAUTY_FACE:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->videoBeautyFace:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
