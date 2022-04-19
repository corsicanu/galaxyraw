.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/Capability;
.super Ljava/lang/Object;
.source "Capability.java"


# virtual methods
.method public abstract dumpCapability()V
.end method

.method public abstract getAeCompensationStep()Landroid/util/Rational;
.end method

.method public abstract getAvailableDualBokehFpsRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableEffectPreviewFpsRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableEffectRecordingFpsRange(Landroid/util/Range;)Landroid/util/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableJpegPictureSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAvailableJpegPictureSizes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSensorCropEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableLensApertures()[F
.end method

.method public abstract getAvailablePreviewSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAvailablePreviewSizes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSensorCropEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableThumbnailSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHighSpeedRecordingTimeLimit(Landroid/util/Size;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionSize",
            "fps"
        }
    .end annotation
.end method

.method public abstract getHorizontalViewAngle(F)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRatio"
        }
    .end annotation
.end method

.method public abstract getLensFacing()I
.end method

.method public abstract getLensInfoAvailableFocalLengths()[F
.end method

.method public abstract getLensInfoMinimumFocalDistance()F
.end method

.method public abstract getMaxLensPosition()I
.end method

.method public abstract getMinLensPosition()I
.end method

.method public abstract getRecordingTimeLimit(Landroid/util/Size;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionSize",
            "fps"
        }
    .end annotation
.end method

.method public abstract getScalerAvailableMaxDigitalZoom(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract getScalerAvailableMinDigitalZoom(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract getSensorInfoActiveArraySize()Landroid/graphics/Rect;
.end method

.method public abstract getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSensorCropEnabled"
        }
    .end annotation
.end method

.method public abstract getSensorInfoExposureTimeRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorInfoSensitivityRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation
.end method

.method public abstract getSensorOrientation()I
.end method

.method public abstract getSuperSlowMotionImageCount(Landroid/util/Size;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionSize"
        }
    .end annotation
.end method

.method public abstract getVdisCropRatio(Landroid/util/Size;I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionSize",
            "fps"
        }
    .end annotation
.end method

.method public abstract getVerticalViewAngle(F)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRatio"
        }
    .end annotation
.end method

.method public abstract getWbLevelRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getZoomMapRatio()F
.end method

.method public abstract isAeAfLockSupported()Z
.end method

.method public abstract isAfSupported()Z
.end method

.method public abstract isBeautyFaceSupported()Z
.end method

.method public abstract isBokehLightingSupported()Z
.end method

.method public abstract isBokehNightSupported()Z
.end method

.method public abstract isBokehSpecialEffectSupported()Z
.end method

.method public abstract isBokehSupported()Z
.end method

.method public abstract isCafSupported()Z
.end method

.method public abstract isDepthSupported()Z
.end method

.method public abstract isDynamicFovSupported()Z
.end method

.method public abstract isDynamicShotInfoSupported()Z
.end method

.method public abstract isEventFinderSupported()Z
.end method

.method public abstract isFaceDetectionFullModeSupported()Z
.end method

.method public abstract isFaceDetectionSimpleModeSupported()Z
.end method

.method public abstract isFaceDetectionSupported()Z
.end method

.method public abstract isFilterRecordingUsingVideoMakerSupported()Z
.end method

.method public abstract isFrontPhotoNightModeSupported()Z
.end method

.method public abstract isHandGestureInVideoSupported()Z
.end method

.method public abstract isHandGestureSupported()Z
.end method

.method public abstract isHdr10RecordingAvailable()Z
.end method

.method public abstract isLensDistortionCorrectionSupported()Z
.end method

.method public abstract isLiveHdrSupported()Z
.end method

.method public abstract isMacroSupported()Z
.end method

.method public abstract isMultiAfSupported()Z
.end method

.method public abstract isNightScreenFlashSupported()Z
.end method

.method public abstract isPhaseAfSupported()Z
.end method

.method public abstract isPreviewStabilizationSupported()Z
.end method

.method public abstract isRequestPartialResultSupported()Z
.end method

.method public abstract isSceneOptimizerSupported()Z
.end method

.method public abstract isSecondPictureConfigSupported()Z
.end method

.method public abstract isSelfieToneModeSupported()Z
.end method

.method public abstract isSensorCropSupported()Z
.end method

.method public abstract isSingleTakeSecondPictureConfigSupported()Z
.end method

.method public abstract isSingleTakeSupportPartialCapture()Z
.end method

.method public abstract isSmoothZoomSupported()Z
.end method

.method public abstract isSubPreviewCallbackSupported()Z
.end method

.method public abstract isSuperSlowMotionFrcSupported()Z
.end method

.method public abstract isSuperSlowMotionGmcSupported()Z
.end method

.method public abstract isSuperSlowMotionSupported()Z
.end method

.method public abstract isSyncCancelSuperSlowMotionAutoDetectSupported()Z
.end method

.method public abstract isTouchAeSupported()Z
.end method

.method public abstract isTouchAfSupported()Z
.end method

.method public abstract isVariableLensApertureSupported()Z
.end method

.method public abstract isVideoBeautyFaceSupported(Landroid/util/Size;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "fps"
        }
    .end annotation
.end method

.method public abstract isVideoBeautySnapshotSupported()Z
.end method

.method public abstract isVideoBokehEffectSupported()Z
.end method

.method public abstract isVideoResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation
.end method

.method public abstract isZoomInOutPhotoSupported()Z
.end method

.method public abstract isZoomLockSupported()Z
.end method
