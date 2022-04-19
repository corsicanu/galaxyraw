.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomLockStateListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$IntelligentGuideEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HdrStateListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DynamicViewingResultListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;
    }
.end annotation


# static fields
.field public static final LIGHT_CONDITION_FLASH:I = 0x4

.field public static final LIGHT_CONDITION_HIGH:I = 0x0

.field public static final LIGHT_CONDITION_LLS_FLASH:I = 0x5

.field public static final LIGHT_CONDITION_LLS_LOW:I = 0x3

.field public static final LIGHT_CONDITION_LOW:I = 0x1

.field public static final LIGHT_CONDITION_SIS_LOW:I = 0x2

.field public static final LIGHT_CONDITION_TORCH_FLASH:I = 0x6


# virtual methods
.method public abstract enableAdaptiveLensModeInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableAfLensInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableAgifEventCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableBokehInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableBrightnessValueCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableBurstPictureCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableBurstShotFpsCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableCompositionGuideEventCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableDepthInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableDofMultiInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableEstimatedCaptureDurationCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableFaceDetectionCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableFoodEventCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableHandGestureDetectionInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableHdrStateCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableHistogramPreviewCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableIntelligentGuideEventCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableLightConditionCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableLiveThumbnailPreviewCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableMotionPhotoPreviewCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enablePalmDetectionCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enablePictureCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableRawPictureCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableRecordStateCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableRecordingMotionSpeedModeInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableSceneDetectionEventCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableSceneDetectionInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableSensorInfoCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableSmartScanEventCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableStillCaptureProgressCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableSwFaceDetectionEventCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableVideoSnapshotCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableZoomLockStateCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableZoomMapViewPreviewCallback(ZLandroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "previewSize"
        }
    .end annotation
.end method

.method public abstract registerDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerHandGestureListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerHdrStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HdrStateListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setAdaptiveLensModeInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setAfLensInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setBokehInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setBrightnessValueListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setCompositionGuideEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setEstimatedCaptureDurationListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setFoodEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setIntelligentGuideEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$IntelligentGuideEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setLensDirtyDetectListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setLiveThumbnailPreviewListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setMultiViewCropRoiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setOutFocusEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$OutFocusEventCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setPreviewSnapShotListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setQrCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setRecordingMotionSpeedModeInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setSceneDetectionEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setSceneDetectionInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setSensorInfoEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setSmartScanEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setStillCaptureProgressListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setSwFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setZoomLockStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomLockStateListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setZoomMapviewListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterHandGestureListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterHdrStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HdrStateListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
