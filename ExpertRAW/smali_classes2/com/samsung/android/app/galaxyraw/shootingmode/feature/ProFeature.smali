.class Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ProFeature;
.super Ljava/lang/Object;
.source "ProFeature.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraId(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "lensType"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCameraId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;II)I

    move-result p0

    return p0
.end method

.method public getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    return-object p0
.end method

.method public getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    :goto_0
    return-object p0
.end method

.method public getSupportedTouchEvType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;

    return-object p0
.end method

.method public getSupportedZoomType()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public isDivideAeAfSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    return p0
.end method

.method public isHistogramSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isInclinometerSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLevelMeterSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLowLightDetectionSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isReviewSupported()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_REVIEW:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    return p0
.end method

.method public isTakingPictureSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTakingPostProcessingPictureSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTouchAeSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isTrackingAfSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public isWatchModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
