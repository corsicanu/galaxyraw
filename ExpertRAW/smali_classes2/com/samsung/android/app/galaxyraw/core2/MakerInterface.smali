.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$OutFocusEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BeautyEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MakerType;
    }
.end annotation


# static fields
.field public static final MAKER_TYPE_PHOTO:I = 0x1

.field public static final MAKER_TYPE_VIDEO:I = 0x2


# direct methods
.method public static bindMakerService(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->initializePPP(Landroid/content/Context;)V

    return-void
.end method

.method public static unbindMakerService()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->deinitializePPP()V

    return-void
.end method


# virtual methods
.method public abstract addMainPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewSurface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract applySettings()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract applyUnabortableSettings()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public cancelTakePicture()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support cancelTakePicture"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract connectCamDevice(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "deviceConfiguration",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract disconnectCamDevice()V
.end method

.method public abstract dumpLatestRepeatingCaptureResult()V
.end method

.method public abstract getAvailableMakerPrivateCommands()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableMakerPrivateKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;>;"
        }
    .end annotation
.end method

.method public getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support getFirstPicCbImgSizeConfig"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getLatestRepeatingCaptureResult()Landroid/hardware/camera2/CaptureResult;
.end method

.method public abstract getMainPreviewSurface()Landroid/view/Surface;
.end method

.method public abstract getMakerShootingMode()I
.end method

.method public abstract getMakerType()I
.end method

.method public abstract getNumberOfPostProcessorSequenceStacked()I
.end method

.method public abstract getPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public getSecondPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support getSecondPicCbImgSizeConfig"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getThirdPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support getThirdPicCbImgSizeConfig"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract restartPreviewRepeating()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract setAdaptiveLensModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setAePreCaptureTrigger(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setAePreCaptureTrigger"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAfAndAePreCaptureTrigger(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "afTrigger",
            "aePreCaptureTrigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setAfAndAePreCaptureTrigger"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setAfTrigger(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public setAgifEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setAgifEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setAutoFramingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setBeautyEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BeautyEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setBeautyEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setBokehInfoCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setBurstPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setBurstPictureCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setBurstShotFpsCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setCameraRunningDebugInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setColorTemperatureCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompositionGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setCompositionGuideEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setDofMultiInfoCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setEvCompensationValueCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setFaceAlignmentEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setFaceAlignmentEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setFaceDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setFaceLandmarkEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setFaceLandmarkEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFaceRecognitionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setFaceRecognitionEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFacialAttributeEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setFacialAttributeEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFoodEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setFoodEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setHandGestureDetectionInfoCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHumanTrackingEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setHumanTrackingEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIntelligentGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setIntelligentGuideEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setLensSuggestionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setMainPreviewCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMultiViewInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setMultiViewInfoCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setOutFocusEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$OutFocusEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setOutFocusEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPalmDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setPalmDetectionEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setPanoramaEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setPictureCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPostProcessorStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setPostProcessorStatusCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setPreviewSnapShotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setPreviewStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setPrivateCommand(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateCommand"
        }
    .end annotation
.end method

.method public abstract setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract setPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public setQRCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setQRCodeDetectionEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRawPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setRawPictureCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecordStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordStateCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setRecordStateCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setRecordingMotionSpeedModeInfoCallback "

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSTPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setSTPictureCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSceneDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setSceneDetectionEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setSingleBokehEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setSlowMotionEventDetectionEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSmartScanEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setSmartScanEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStarEffectEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setStarEffectEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setStillCaptureProgressCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setSubPreviewCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setSuperSlowMotionInfoCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSwFaceDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setSwFaceDetectionEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support setThumbnailCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public abstract setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract setZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation
.end method

.method public startAgifBurstPictureRepeating(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Landroid/net/Uri;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "resultUri",
            "burstFps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support startAgifBurstPictureRepeating"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startAgifBurstPictureRepeating(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "resultFile",
            "burstFps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support startAgifBurstPictureRepeating"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startBurstPicRecordRepeating(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "firstPicFps",
            "secondPicFps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support startBurstPicRecordRepeating"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startBurstPictureRepeating(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "burstFps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support startBurstPictureRepeating"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract startPreviewRepeating()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public startRecordRepeating()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support startRecordRepeating"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopAgifBurstPictureRepeating()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support stopAgifBurstPictureRepeating"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopBurstPicRecordRepeating()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support stopBurstPicRecordRepeating"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopBurstPictureRepeating()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support stopBurstPictureRepeating"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract stopRepeating()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public stopTakePicture()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support stopTakePicture"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takePicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamicShotInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takePicture"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takePicture(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takePicture with resultFile"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takePostProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takePostProcessingPicture"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takePostProcessingRawPicture(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takePostProcessingRawPicture"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takePostProcessingSingleRawPicture(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takePostProcessingSingleRawPicture"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract takePreviewSnapShot()V
.end method

.method public takeProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamicShotInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takeProcessingPicture"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takeProcessingRawPicture()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support takeProcessingRawPicture"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takeRawPicture()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MakerInterface variants cannot support takeRawPicture"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takeSTPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "resultFile",
            "extraInfo",
            "captureMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takeSTPicture"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takeStitchingPicture(Landroid/net/Uri;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takeStitchingPicture with resultFile"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public takeStitchingPicture(Ljava/io/File;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerInterface variants cannot support takeStitchingPicture with resultFile"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
