.class Lcom/samsung/android/app/galaxyraw/engine/AeAfController;
.super Ljava/lang/Object;
.source "AeAfController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AeAfController"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private final mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    return-void
.end method

.method private getAeMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFrontFlashSetting(IZ)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isNightScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isNightScreenFlashAvailable()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFrontFlashSetting(IZ)I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getTorch()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isManualExposure()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByTorchSetting(IZ)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isManualExposure()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result p0

    return p0
.end method

.method private getDefaultActiveArray()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 2

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object v0, p0, v1

    return-object p0
.end method

.method private getExposureMetering(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "makerSettings",
            "isWeighted"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getHdr()I

    move-result v2

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getWeightedExposureMetering(I)I

    move-result p0

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getExposureMetering(I)I

    move-result p0

    :goto_2
    return p0
.end method

.method private getMeteringRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/util/Size;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cropRegion",
            "focusPoint",
            "focusSize"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "AeAfController"

    if-nez p1, :cond_0

    const-string p0, "getMeteringRectangle : cropRegion is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getRatioFocusRect(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMeteringRectangle : ratioFocusRect="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getCropRegionByPreviewAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget v2, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr p3, v2

    float-to-int p3, p3

    add-int/2addr p1, p3

    iget p3, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr p3, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr v3, p2

    float-to-int p2, v3

    iget v3, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    invoke-static {p1, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/Util;->clamp(III)I

    move-result p1

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p2

    invoke-static {p3, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/Util;->clamp(III)I

    move-result p3

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v2, p1

    add-int/2addr p2, p3

    invoke-direct {v3, p1, p3, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMeteringRectangle : activeRegion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "getMeteringRectangle : activeRegion is not contained in cropRegion!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance p0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 p1, 0x3e8

    invoke-direct {p0, v3, p1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object p0
.end method

.method private getRatioFocusRect(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRatioFocusRect : previewRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    sub-int p1, v0, p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1, v3, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private isWeightedExposureMetering(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "makerSettings"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$enableFocusPeaking$0(ZLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic lambda$enableMultiAfMode$1(ZLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_MULTI_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_MULTI_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$lockAe$2(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method static synthetic lambda$lockAeAwb$3(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic lambda$setAeExposureCompensation$8(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setAeExtraMode$9(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_AE_EXTRA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_AE_EXTRA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setAfMode$12(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setAperture$13(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAperture(I)F

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setColorTemperature$15(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getColorTemperature(I)I

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_COLOR_TEMPERATURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_COLOR_TEMPERATURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$setWbLevel$25(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    rsub-int/lit8 p0, p0, 0x4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_WB_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_WB_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$unlockAe$26(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2
.end method

.method static synthetic lambda$unlockAeAwb$27(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p0, v0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p0, v0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic lambda$unlockAwb$28(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2
.end method


# virtual methods
.method enableFocusPeaking(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFocusPeaking : enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$CU2pyuHxaxxAzwznSBtzHOdy-Zo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$CU2pyuHxaxxAzwznSBtzHOdy-Zo;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method enableMultiAfMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMultiAfMode : enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isMultiAfSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "enableMultiAfMode : multi af is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OUefrBP79mZL5p0f9ao4TiMftls;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OUefrBP79mZL5p0f9ao4TiMftls;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public synthetic lambda$resetTouchAe$4$AeAfController(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getExposureMetering(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getDefaultActiveArray()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$resetTouchAf$5$AeAfController(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getDefaultActiveArray()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$resetTouchAfWithAe$6$AeAfController(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getDefaultActiveArray()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTouchAeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getExposureMetering(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getDefaultActiveArray()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$resetTrackingAf$7$AeAfController(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getDefaultActiveArray()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$setAeMode$10$AeAfController(IZLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isScreenFlashAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isNightScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isManualExposure()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFrontFlashSetting(IZ)I

    move-result p0

    :goto_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$setAfLensPosition$11$AeAfController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    if-gt p1, v3, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfLensPosition(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;I)I

    move-result p1

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, v3, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->overrideFocusMode(I)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_LENS_FOCUS_LENS_POS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_LENS_FOCUS_LENS_POS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    return v0
.end method

.method public synthetic lambda$setAwbMode$14$AeAfController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAwbMode(I)I

    move-result p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_COLOR_TEMPERATURE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getKelvinValue()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getColorTemperature(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$setExposureMetering$16$AeAfController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->isWeightedExposureMetering(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getWeightedExposureMetering(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getExposureMetering(I)I

    move-result p0

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$setLensFocusDistance$17$AeAfController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    if-gt p1, v3, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getLensFocusDistance(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;I)F

    move-result p1

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, v3, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->overrideFocusMode(I)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    return v0
.end method

.method public synthetic lambda$setSensorExposureTime$18$AeAfController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getExposureTime(I)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getAeMode()I

    move-result p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/32 v2, 0x3b9aca00

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result p0

    int-to-long v4, p0

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$setSensorSensitivity$19$AeAfController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getAeMode()I

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSensorSensitivity(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSensorSensitivity(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$setTorchFlashMode$20$AeAfController(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getFlashMode(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isManualExposure()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByTorchSetting(IZ)I

    move-result p1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isManualExposure()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/32 v1, 0x3b9aca00

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result p0

    int-to-long v4, p0

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v3
.end method

.method public synthetic lambda$setTouchAe$21$AeAfController(Landroid/graphics/Point;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getMeteringRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/util/Size;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getExposureMetering(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v0, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v0, p2

    invoke-interface {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1

    :cond_0
    return p2
.end method

.method public synthetic lambda$setTouchAf$22$AeAfController(Landroid/graphics/Point;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getMeteringRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/util/Size;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->overrideFocusMode(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v0, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v0, p2

    invoke-interface {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1

    :cond_0
    return p2
.end method

.method public synthetic lambda$setTouchAfWithAe$23$AeAfController(Landroid/graphics/Point;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getMeteringRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/util/Size;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->overrideFocusMode(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v2, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v2, p2

    invoke-interface {p3, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTouchAeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p3, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getExposureMetering(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v0, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v0, p2

    invoke-interface {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    return p2
.end method

.method public synthetic lambda$setTrackingAf$24$AeAfController(Landroid/graphics/Point;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->getMeteringRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/util/Size;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->overrideFocusMode(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v1, p2

    invoke-interface {p3, p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v0

    :cond_1
    return p2
.end method

.method lockAe()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "lockAe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OLTJQvNTYLH4XAcOoCCfY8sCBtg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OLTJQvNTYLH4XAcOoCCfY8sCBtg;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method lockAeAwb()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "lockAeAwb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$1lMK9t93B0AV0l58-UNWmrBlUEA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$1lMK9t93B0AV0l58-UNWmrBlUEA;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method resetTouchAe()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "resetTouchAe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$E1-9o-gg_1f1OkE1QPh2EDxgvaY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$E1-9o-gg_1f1OkE1QPh2EDxgvaY;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method resetTouchAf()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "resetTouchAf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$aOwoEGpDIw3Ufht36Ug41hM0yuE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$aOwoEGpDIw3Ufht36Ug41hM0yuE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isCafSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isAfSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_0
    return-void
.end method

.method resetTouchAfWithAe()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "resetTouchAfWithAe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$00ghFckzwMXk4unzhI6C_VX3xPk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$00ghFckzwMXk4unzhI6C_VX3xPk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isCafSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isAfSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_0
    return-void
.end method

.method resetTrackingAf()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "resetTrackingAf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$hjxjD9-h_PsD1soSuSuPkYpkJ1U;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$hjxjD9-h_PsD1soSuSuPkYpkJ1U;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setAeExposureCompensation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAeExposureCompensation : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$KEOPZYKxfpvJNPk3JafHwYbHkNE;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$KEOPZYKxfpvJNPk3JafHwYbHkNE;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setAeExtraMode(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iso",
            "shutterSpeed"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeExtraMode(II)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$jzifaDclcac9pF2Ww-N6h5AMrXg;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$jzifaDclcac9pF2Ww-N6h5AMrXg;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setAeMode(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flash",
            "isNightScreenFlash"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAeMode : flash= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isNightScreenFlash= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$__JvkWUsByFqt0Gkyt2_bv9zcwo;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;IZ)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setAfLensPosition(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAfLensPosition : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$IQ41A_Ol81oAMaloZ3_8zsNk5QA;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$IQ41A_Ol81oAMaloZ3_8zsNk5QA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setAfMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAfMode : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$Rhv-haMJYv-W9CKUMhLOF3A-NyU;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$Rhv-haMJYv-W9CKUMhLOF3A-NyU;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setAperture(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAperture : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isVariableLensApertureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$srlwQtdc3GBXWCchQk37GqgABZk;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$srlwQtdc3GBXWCchQk37GqgABZk;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setAwbMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAwbMode : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$v8I9YGCm2hef80jS5EPRIHIFazA;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$v8I9YGCm2hef80jS5EPRIHIFazA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setColorTemperature(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setColorTemperature : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$Azu_LFjbQCX7fYaNaPokC-8Upbs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$Azu_LFjbQCX7fYaNaPokC-8Upbs;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setExposureMetering(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureMetering : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$0WriDNBBAhb9YkACS5wfYfG4cpg;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$0WriDNBBAhb9YkACS5wfYfG4cpg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setLensFocusDistance(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLensFocusDistance : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$8_Lw43nYfb-w1Pj5cYY7cpO90lI;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$8_Lw43nYfb-w1Pj5cYY7cpO90lI;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setSensorExposureTime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSensorExposureTime : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$nGk_m4qU7VPYNcuUi3ajVjM-CCA;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$nGk_m4qU7VPYNcuUi3ajVjM-CCA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setSensorSensitivity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSensorSensitivity : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$MdszbtaExb-RqKv5nnqrcsDjL-Q;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$MdszbtaExb-RqKv5nnqrcsDjL-Q;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setTorchFlashMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTorchFlashMode : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$apxEh5rhCGqIGjw8_JIZgjjbrmA;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$apxEh5rhCGqIGjw8_JIZgjjbrmA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTouchAe: focusPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$J3Xi36i099wHp18Ohp2spukM7uE;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$J3Xi36i099wHp18Ohp2spukM7uE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;Landroid/graphics/Point;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTouchAf: focusPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$uI7FjlF-qJqQOvEm7BlRkXsiNvU;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;Landroid/graphics/Point;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method setTouchAfWithAe(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTouchAfWithAe: focusPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$xihejaBi8Xg5Kdmznlmuo7Echyo;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$xihejaBi8Xg5Kdmznlmuo7Echyo;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;Landroid/graphics/Point;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method setTrackingAf(Landroid/graphics/Point;Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusPoint",
            "focusSize"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrackingAf: focusPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$8-F7gXovJmcAIn4LfvDPefSCNBU;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$8-F7gXovJmcAIn4LfvDPefSCNBU;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfController;Landroid/graphics/Point;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setWbLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWbLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getWbLevelRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$iIUgqHr3h_6qD3fDdY7OCvpnCXA;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$iIUgqHr3h_6qD3fDdY7OCvpnCXA;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method unlockAe()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "unlockAe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OiHRVF9-Vjh6Lrpv7aOFU_Url24;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$OiHRVF9-Vjh6Lrpv7aOFU_Url24;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method unlockAeAwb()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "unlockAeAwb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$yRpcoViHvnQXsigUdTViCcNW9Yc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$yRpcoViHvnQXsigUdTViCcNW9Yc;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method unlockAwb()V
    .locals 2

    const-string v0, "AeAfController"

    const-string v1, "unlockAwb"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$WtEzlny8WUe-zFz66iY1ptSlnlQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfController$WtEzlny8WUe-zFz66iY1ptSlnlQ;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method
