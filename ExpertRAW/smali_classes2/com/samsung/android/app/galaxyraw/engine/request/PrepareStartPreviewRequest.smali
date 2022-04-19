.class Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "PrepareStartPreviewRequest.java"


# instance fields
.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "makerHolder",
            "engine",
            "id"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private getAeTargetFpsRange(ILcom/samsung/android/app/galaxyraw/interfaces/Capability;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "capability"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Capability;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result p1

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailableEffectPreviewFpsRange()Landroid/util/Range;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    const/16 p0, 0x1e

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/Range;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    :cond_1
    new-instance p1, Landroid/util/Range;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1
.end method

.method private getAeTargetFpsRangeForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/Capability;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "camcorderResolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Capability;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Range;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMinFps()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailableEffectRecordingFpsRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getTorchSetting()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getTorch()I

    move-result v1

    :cond_3
    :goto_2
    return v1
.end method

.method private setDefaultAeAfAwbSettings(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "makerSettings",
            "capability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    if-nez v0, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isScreenFlashAvailable()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFrontFlashSetting(IZ)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isNightScreenFlashAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFrontFlashSetting(IZ)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->getTorchSetting()I

    move-result v0

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByTorchSetting(IZ)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->getTorchSetting()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getFlashMode(I)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->getAeTargetFpsRange(ILcom/samsung/android/app/galaxyraw/interfaces/Capability;)Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isCafSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFocusMode(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isAfSupported()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFocusMode(I)V

    :goto_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isPhaseAfSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PHASE_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private setDefaultAeAfAwbSettingsForRecording(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "makerSettings",
            "capability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    if-nez p1, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->getTorchSetting()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByTorchSetting(IZ)I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->getTorchSetting()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getFlashMode(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v5, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object p1

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isScreenFlashAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFrontFlashSetting(IZ)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result v2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isAttachFragmentVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v4, v3

    :cond_4
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->getAeTargetFpsRangeForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/Capability;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_CONTINUOUS_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isCafSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFocusMode(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isAfSupported()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFocusMode(I)V

    :goto_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isPhaseAfSupported()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PHASE_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private setDefaultCameraPreviewSettings(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "makerSettings",
            "capability"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setDefaultAeAfAwbSettings(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getHdr()I

    move-result p1

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v1, 0x2

    const/4 v4, 0x1

    if-ne p1, v1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureMetering()I

    move-result p1

    :goto_1
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getExposureMetering(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setFrontPictureStreamType(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getZoomType()I

    move-result v5

    invoke-interface {p3, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getScalerAvailableMaxDigitalZoom(I)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getZoomType()I

    move-result v6

    invoke-interface {p3, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getScalerAvailableMinDigitalZoom(I)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v5, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->setScalerCropRegion(I)V

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-float v6, p1

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getScalerCropRegion()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isLensDistortionCorrectionSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v5

    if-ne v5, v4, :cond_4

    const/16 v5, 0x3e8

    if-ge p1, v5, :cond_4

    move p1, v4

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LENS_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    :cond_6
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getScalerFlipMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object p1

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isFaceDetectionSupported()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-eq p1, v2, :cond_7

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne p1, v2, :cond_9

    :cond_7
    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isFaceDetectionFullModeSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v1, v4

    :goto_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLowLightDetectionSupported(I)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_a
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_LENS_OPTICAL_STABILIZATION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p1, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isHandGestureSupported()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isPalmDetectionAvailable()Z

    move-result p1

    sget-object p3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_HAND_GESTURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_b
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getOverheatLevel()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getOverheatHintLevel(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_TRANSIENT_CAPTURE_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setDefaultRecordingPreviewSettings(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "makerSettings",
            "capability"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setDefaultAeAfAwbSettingsForRecording(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getHdr()I

    move-result v2

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderHDRAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureMetering()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    if-ne v2, v5, :cond_3

    :cond_2
    move v3, v6

    :cond_3
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getExposureMetering(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setFrontPictureStreamType(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setZoomForRecording(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v2

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isFaceDetectionSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne v2, v3, :cond_6

    :cond_4
    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isFaceDetectionFullModeSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isVideoBeautyFaceSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne v0, v1, :cond_8

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isVideoBeautySnapshotSupported()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->setSkinToneLevel(I)V

    :cond_7
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setFlipMode(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_LENS_OPTICAL_STABILIZATION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isHandGestureSupported()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isPalmDetectionAvailable()Z

    move-result p1

    sget-object p3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_HAND_GESTURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getOverheatLevel()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getOverheatHintLevel(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setFlipMode(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "makerSettings"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getScalerFlipMode(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getScalerFlipMode(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getInitialRecordingFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-nez v0, :cond_4

    if-ne p1, v2, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getOrientationForCapture()I

    move-result p1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getOrientationForCapture()I

    move-result p0

    const/16 p1, 0x10e

    if-ne p0, p1, :cond_4

    :cond_3
    const/4 v1, 0x3

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setFlipMode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Request"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setFrontPictureStreamType(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "makerSettings",
            "capability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isDynamicFovSupported()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    const/16 p1, 0x3e8

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getFrontCropAngleZoomValue()I

    move-result p1

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    return-void
.end method

.method private setMakerPublicSettings(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCurrentMaker(I)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMakerPublicSettings(I)Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setDefaultRecordingPreviewSettings(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported maker type : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setDefaultCameraPreviewSettings(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setRequestHint(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getMakerEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getMakerEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;->onStartPreviewPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    :cond_2
    return-void
.end method

.method private setRequestHint(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "makerSettings"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_REPEATING_REQUEST_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 p0, v0, 0x1

    goto :goto_1

    :cond_1
    and-int/lit8 p0, v0, -0x2

    :goto_1
    if-eq v0, p0, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_REPEATING_REQUEST_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request hint : Current flag = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", New flag = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Request"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setZoomForRecording(ILcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "makerSettings",
            "capability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingLensType()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getZoomValueByMultiRecordingLensType(I)I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->setScalerCropRegion(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getScalerCropRegion()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getScalerCropRegion(II)Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-float p3, p3

    div-float/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getZoomType()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getScalerAvailableMaxDigitalZoom(I)F

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getZoomType()I

    move-result v1

    invoke-interface {p3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getScalerAvailableMinDigitalZoom(I)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_7

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p3

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getPreviousZoomValue(I)I

    move-result p3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-ne v0, v3, :cond_5

    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_3

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getPreviousSuperSteadyZoomType()I

    move-result p3

    if-ne p3, v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getMinZoomLevel()I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, p3

    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_STEADY_ZOOM_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getPreviousSuperSteadyZoomType()I

    move-result v1

    invoke-interface {p3, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_STEADY_ZOOM_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-ne p3, v1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getMinZoomLevel()I

    move-result p1

    :cond_6
    :goto_2
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_3

    :cond_7
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p3

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p3, v3, :cond_8

    if-ne v0, v1, :cond_8

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingLensType()I

    move-result p3

    if-eq p3, v1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingLensType()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getZoomValueByMultiRecordingLensType(I)I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_8
    :goto_3
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p3, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->setScalerCropRegion(I)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getScalerCropRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method execute()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device - PrepareStartPreviewRequest : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isEffectProcessorRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->startEffectProcessor()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->startMultiCameraEffectProcessor()V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :try_start_0
    invoke-direct {p0, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setMakerPublicSettings(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Request"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;->discard()V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device - PrepareStartPreviewRequest : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method isSupportedCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentCaptureState"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isSupportedState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentState"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->CONNECTED:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
