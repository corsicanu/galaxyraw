.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;
.super Ljava/lang/Object;
.source "ShootingModeFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedNightType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;
    }
.end annotation


# virtual methods
.method public abstract getCameraId(II)I
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
.end method

.method public getFixedOrientationForCapture()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMediaRecorderProfile(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewTopGuideLine()F
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    return p0
.end method

.method public getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    return-object p0
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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    return-object p0
.end method

.method public getSupportedNightType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedNightType;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedNightType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedNightType;

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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;

    return-object p0
.end method

.method public getSupportedZoomType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAeAfLockSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isAeAwbLockRequired(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isAeLockRequired(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isAgifBurstCaptureSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isAngleChangeSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isAudioInputControlSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isBeautyFaceSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isBurstCaptureSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return p0
.end method

.method public isEffectSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFocusGuideSupported()Z
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return p0
.end method

.method public isInclinometerSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLevelMeterSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLiveHdrSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return p0
.end method

.method public isMotionPhotoSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPalmDetectionSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isQuickTakeSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecordingMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecordingSnapshotSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRecordingSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReviewSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSingleAfRequired(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isSingleTakePictureSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuperResolutionSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isSwitchFacingWhileRecordingSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTakingPictureSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTakingPostProcessingPictureSupported()Z
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return p0
.end method

.method public isWatchModeSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomBarSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomInMicSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return p0
.end method
