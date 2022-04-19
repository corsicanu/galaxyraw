.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.super Ljava/lang/Object;
.source "CallbackForwarder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ZoomLockStateCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$TouchAeStateCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ThumbnailCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StillCaptureProgressCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StarEffectEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SingleBokehEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SwFaceDetectionEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SuperSlowMotionInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SensorSensitivityCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordingMotionSpeedModeInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordStateCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RawPictureCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewStateCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PostProcessorCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ObjectTrackingInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$MultiViewInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LightConditionCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensSuggestionCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensDirtyDetectCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$IntelligentGuideEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HandGestureDetectionInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FoodEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceDetectionInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceRecognitionEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceLandmarkEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceAlignmentEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ExposureTimeCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$EventFinderResultCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$EvCompensationValueCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotCaptureDurationCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DofMultiInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DepthInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CompositionGuideCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ColorTemperatureCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CameraRunningDebugInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BurstShotFpsCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BurstPictureCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BrightnessValueCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BokehInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BeautyEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AutoFramingInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AfInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AeInfoCallbackForwarder;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Callback_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mForwardToken:Ljava/lang/Object;

.field protected final mHandler:Landroid/os/Handler;

.field protected final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TCallback_T;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback_T;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;->mForwardToken:Ljava/lang/Object;

    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "handler"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelForwardedCallbacksWithToken()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;->mForwardToken:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
