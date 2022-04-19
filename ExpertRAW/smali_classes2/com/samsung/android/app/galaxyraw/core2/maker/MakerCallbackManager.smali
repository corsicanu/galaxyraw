.class Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;
.super Ljava/lang/Object;
.source "MakerCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;
    }
.end annotation


# static fields
.field public static final DEFAULT_INJECTED_DS_VALUE:I = -0xa

.field private static final FORCE_LOW_MEMORY_CAPTURE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field protected final mActivityManager:Landroid/app/ActivityManager;

.field private final mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

.field private mAdaptiveLensModeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;

.field private final mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

.field private mAeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;

.field private final mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

.field private mAfInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;

.field private mAgifEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;

.field private final mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

.field private mAutoFramingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;

.field private mBeautyEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BeautyEventCallback;

.field private final mBokehInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

.field private mBokehInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;

.field private mBrightnessValue:Ljava/lang/Integer;

.field private mBrightnessValueCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;

.field private mBurstShotFps:Ljava/lang/Integer;

.field private mBurstShotFpsCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;

.field private mCameraRunningDebugInfo:[B

.field private mCameraRunningDebugInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;

.field private mCenterDepth:Ljava/lang/Integer;

.field private mColorTemperature:Ljava/lang/Integer;

.field private mColorTemperatureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;

.field private mCompositionGuideEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;

.field private mDepthInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;

.field private mDofMultiInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;

.field private mDsCaptureDuration:Ljava/lang/Integer;

.field private mDynamicShotCaptureDurationCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;

.field private mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

.field private mDynamicShotInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;

.field private mEvCompensationValue:Ljava/lang/Integer;

.field private mEvCompensationValueCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;

.field private mEventFinderResultCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;

.field private final mEventHandler:Landroid/os/Handler;

.field private mExposureTime:Ljava/lang/Long;

.field private mExposureTimeCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;

.field private mFaceAlignmentEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;

.field private mFaceDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;

.field private mFaceLandmarkEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;

.field private mFaceRecognitionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;

.field private mFacialAttributeEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;

.field private mFoodEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;

.field private mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

.field private final mForceLowMemoryCaptureTimeChecker:Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;

.field private mHandGestureDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;

.field private mHumanTrackingEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;

.field private mInjectedDsCondition:I

.field private mInjectedDsExtraInfo:I

.field private mIntelligentGuideEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;

.field private mLensDirtyDetect:Ljava/lang/Boolean;

.field private mLensDirtyDetectCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;

.field private final mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

.field private mLensInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;

.field private mLensSuggestion:Ljava/lang/Integer;

.field private mLensSuggestionCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;

.field private mLightCondition:Ljava/lang/Integer;

.field private mLightConditionCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;

.field private mLiveHdrState:Ljava/lang/Integer;

.field private mLiveHdrStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;

.field private mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mMultiViewInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;

.field private mNeedHgNotDetectedCb:Z

.field private mNeedNullFaceCb:Z

.field private mObjectTrackingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;

.field private mOldDsCondition:I

.field private mPalmDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;

.field private mPanoramaEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;

.field private mPostProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;

.field private mPreviewSnapShotCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;

.field private mPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;

.field private mQRCodeDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;

.field private final mRecordingMotionSpeedModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

.field private mRecordingMotionSpeedModeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;

.field private mSTPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;

.field private mSceneDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;

.field private mSceneDetectionInfo:[J

.field private mSceneDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;

.field private mSensorSensitivity:Ljava/lang/Integer;

.field private mSensorSensitivityCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;

.field private mSingleBokehEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;

.field private mSlowMotionEventDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;

.field private mSmartScanEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;

.field private mStarEffectEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;

.field private mStillCaptureProgress:Ljava/lang/Integer;

.field private mStillCaptureProgressCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;

.field private final mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

.field private mSuperSlowMotionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;

.field private mSwFaceDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;

.field private mTouchAeState:Ljava/lang/Integer;

.field private mTouchAeStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;

.field private mZoomLockState:Ljava/lang/Integer;

.field private mZoomLockStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "context",
            "handler"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mOldDsCondition:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    const/16 v0, -0xa

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mInjectedDsCondition:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mInjectedDsExtraInfo:I

    if-nez p3, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No handler given, and current thread has no looper!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    const-string p1, "activity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mActivityManager:Landroid/app/ActivityManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;

    const-wide/16 p2, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureTimeChecker:Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;

    return-void
.end method

.method private isDsInfoChangeable(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "dsCondition"
        }
    .end annotation

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isSuperNightDsMode(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isHighResolutionDsMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method static synthetic lambda$sendBrightnessValueCallback$0(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;->onBrightnessValueChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method


# virtual methods
.method getAgifEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAgifEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;

    return-object p0
.end method

.method getBrightnessValue()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBrightnessValue:Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getCompositionGuideEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCompositionGuideEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;

    return-object p0
.end method

.method getEventHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getFaceAlignmentEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFaceAlignmentEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;

    return-object p0
.end method

.method getFaceLandmarkEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFaceLandmarkEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;

    return-object p0
.end method

.method getFaceRecognitionEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFaceRecognitionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;

    return-object p0
.end method

.method getFacialAttributeEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFacialAttributeEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;

    return-object p0
.end method

.method getFoodEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFoodEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;

    return-object p0
.end method

.method getHumanTrackingEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mHumanTrackingEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;

    return-object p0
.end method

.method getIntelligentGuideEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mIntelligentGuideEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;

    return-object p0
.end method

.method getPalmDetectionEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPalmDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;

    return-object p0
.end method

.method getPanoramaEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPanoramaEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;

    return-object p0
.end method

.method getPostProcessorStatusCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPostProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;

    return-object p0
.end method

.method getPreviewSnapShotCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPreviewSnapShotCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;

    return-object p0
.end method

.method getPreviewStateCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;

    return-object p0
.end method

.method getQRCodeDetectionEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mQRCodeDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;

    return-object p0
.end method

.method getSTPictureCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSTPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;

    return-object p0
.end method

.method getSceneDetectionEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSceneDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;

    return-object p0
.end method

.method getSingleBokehEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSingleBokehEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;

    return-object p0
.end method

.method getSlowMotionEventDetectionEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSlowMotionEventDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;

    return-object p0
.end method

.method getSmartScanEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSmartScanEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;

    return-object p0
.end method

.method getStarEffectEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mStarEffectEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;

    return-object p0
.end method

.method getSwFaceDetectionEventCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSwFaceDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;

    return-object p0
.end method

.method sendAdaptiveLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ADAPTIVE_LENS_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ADAPTIVE_LENS_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ADAPTIVE_LENS_MODE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->getAdaptiveLensCondition()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->getAdaptiveLensModeState()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->getAdaptiveLensMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->setAdaptiveLensCondition(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->setAdaptiveLensModeState(Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->setAdaptiveLensMode(Ljava/lang/Integer;)V

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-direct {p0, v1, p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;->onAdaptiveLensModeInfoChanged(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method sendAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureAePriorityModeAvailable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AE_EXTRA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeMode()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeExtraMode()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->setAeMode(Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->setAeState(Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->setAeRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v4, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->setAeExtraMode(Ljava/lang/Integer;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-direct {v4, v1, v2, v3, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;)V

    invoke-interface {v0, p2, v4, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;->onAeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendAeInfoCallback - TimeStamp(%d) %s, camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method sendAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->setAfMode(Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->setAfState(Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->setAfTrigger(Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->setAfRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-direct {p0, v1, v2, v3, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-interface {v0, p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;->onAfInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method sendAutoFramingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AUTO_FRAMING_MANUAL_TRACKING_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AUTO_FRAMING_MANUAL_TRACKING_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AUTO_FRAMING_TRACKING_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->getAutoFramingManualTrackingState()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->getAutoFramingManualTrackingRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->getAutoFramingTrackingRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->getCropRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->setAutoFramingManualTrackingState(Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->setAutoFramingManualTrackingRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->setAutoFramingTrackingRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v4, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->setCropRegion(Landroid/graphics/Rect;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-direct {v4, v1, v2, v3, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;-><init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, v4, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;->onAutoFramingInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendAutoFramingInfoCallback - TimeStamp(%d) %s, camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BOKEH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BOKEH_FOCUSED_RECTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {v3, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehFocusedRects()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->setBokehState(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->setBokehFocusedRects([Landroid/hardware/camera2/params/MeteringRectangle;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->setBokehCropRegion(Landroid/graphics/Rect;)V

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-direct {p0, v1, v2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;-><init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;->onBokehInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method sendBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BRIGHTNESS_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBrightnessValue:Ljava/lang/Integer;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBrightnessValue:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBrightnessValueCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerCallbackManager$M_oYT_rHHkhS4fTUn-5KvShd3L4;

    invoke-direct {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerCallbackManager$M_oYT_rHHkhS4fTUn-5KvShd3L4;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method sendBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBurstShotFpsCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BURST_SHOT_FPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBurstShotFps:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBurstShotFps:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;->onBurstShotFpsChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendBurstShotFpsCallback - TimeStamp(%d) BurstShotFps(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendCameraRunningDebugInfo(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_CAMERA_RUNNING_DEBUG_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfo:[B

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfo:[B

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;->onCameraRunningDebugInfoChanged(Ljava/lang/Long;[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method sendColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mColorTemperatureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_COLOR_TEMPERATURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mColorTemperature:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mColorTemperature:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;->onColorTemperatureChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method sendDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDepthInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->DEPTH_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget p3, p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCenterDepth:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCenterDepth:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;->onDepthInfoChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method sendDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDofMultiInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DOF_MULTI_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->isDofMultiInfoCallbackRequired(Ljava/lang/Integer;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DOF_MULTI_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {v2, p3, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;-><init>(Ljava/lang/Integer;[I[I)V

    invoke-interface {p0, p2, v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;->onDofMultiInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method sendDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotCaptureDurationCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_CAPTURE_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    invoke-direct {p0, p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->isDsInfoChangeable(II)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->TIME_WAIT:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    if-ne p3, v1, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/high16 v1, -0x80000000

    if-eq p3, v1, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    aput-object v3, v1, v2

    const-string v3, "sendDynamicShotCaptureDurationCallback - Memory is not enough(%s) : duration is set to 0"

    invoke-static {p3, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    invoke-interface {v0, p2, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;->onDynamicShotCaptureDurationChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    aput-object v1, p3, v6

    const/4 p2, 0x2

    aput-object p1, p3, p2

    const-string p1, "sendDynamicShotCaptureDurationCallback - TimeStamp(%d) dynamicShotCaptureDuration(%d) camDevice: %s"

    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method sendDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result",
            "dsExtraInfo"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_0

    :cond_0
    move-wide v10, v8

    :goto_0
    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v7, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v7, v12, :cond_5

    invoke-direct {v0, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->isDsInfoChangeable(II)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->TIME_WAIT:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    if-ne v3, v7, :cond_2

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsCondition()I

    move-result v3

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsExtraInfo()I

    move-result v3

    if-ne v3, v7, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsDeviceInfo()J

    move-result-wide v10

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v3, v10, v15

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsCondition()I

    move-result v3

    if-nez v3, :cond_3

    iget v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mOldDsCondition:I

    if-eq v3, v5, :cond_4

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v7, v13, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    aput-object v10, v7, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v14

    const-string v10, "sendDynamicShotInfoCallback - Memory is not enough(%s) : Change DsMode 0x%X to SINGLE"

    invoke-static {v3, v10, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iput v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mOldDsCondition:I

    const/high16 v3, -0x10000

    and-int v3, p4, v3

    move v5, v6

    move-wide v11, v8

    goto :goto_1

    :cond_5
    move/from16 v3, p4

    move-wide v11, v10

    :goto_1
    iget v7, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mInjectedDsExtraInfo:I

    if-ltz v7, :cond_6

    or-int/2addr v3, v7

    iget-object v8, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    const-string v7, "Injecting dsExtraInfo value: 0x%x "

    invoke-static {v8, v7, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move v10, v3

    iget v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mInjectedDsCondition:I

    if-ltz v3, :cond_7

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v7, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "Injecting dsCondition value: 0x%x "

    invoke-static {v5, v8, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    move v9, v3

    goto :goto_2

    :cond_7
    move v9, v5

    :goto_2
    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsCondition()I

    move-result v3

    if-ne v3, v9, :cond_9

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsExtraInfo()I

    move-result v3

    if-eq v3, v10, :cond_8

    goto :goto_3

    :cond_8
    move v3, v6

    goto :goto_4

    :cond_9
    :goto_3
    move v3, v14

    :goto_4
    if-nez v3, :cond_a

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsDeviceInfo()J

    move-result-wide v7

    cmp-long v5, v7, v11

    if-eqz v5, :cond_b

    :cond_a
    invoke-static {v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsProcessingMode(II)I

    move-result v8

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v5, v8}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->setProcessingMode(I)V

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v5, v9}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->setDsCondition(I)V

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v5, v10}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->setDsExtraInfo(I)V

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v5, v11, v12}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->setDsDeviceInfo(J)V

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;-><init>(IIIJ)V

    invoke-interface {v4, v2, v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;->onDynamicShotInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    aput-object v0, v4, v14

    aput-object v1, v4, v13

    const-string v0, "sendDynamicShotInfoCallback - TimeStamp(%d) dynamicShotInfo(%s) camDevice: %s"

    invoke-static {v3, v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method sendEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEvCompensationValueCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_EV_COMPENSATION_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEvCompensationValue:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEvCompensationValue:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;->onEvCompensationValueChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendEvCompensationValueCallback - TimeStamp(%d) evCompensationValue(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventFinderResultCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_EVENT_FINDER_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_EVENT_FINDER_RESULT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-eqz p3, :cond_0

    invoke-interface {v0, p2, v1, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;->onEventFinderResult(Ljava/lang/Long;Ljava/lang/Integer;[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object v1, v0, p2

    const/4 p2, 0x2

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "sendEventFinderResultCallback - TimeStamp(%d) eventFinderMode(%d) eventFinderResult(%s) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mExposureTimeCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mExposureTime:Ljava/lang/Long;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mExposureTime:Ljava/lang/Long;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;->onExposureTimeChanged(Ljava/lang/Long;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendExposureTimeCallback - TimeStamp(%d) ExposureTime(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendFaceDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFaceDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "sendFaceDetectionInfoCallback - TimeStamp(%d) Faces Length(%d) camDevice: %s"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v2, :cond_0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;

    invoke-direct {v2, v1, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;->onFaceDetection(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iput-boolean v7, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mNeedNullFaceCb:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v6

    array-length p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v7

    aput-object p1, p3, v3

    invoke-static {p0, v5, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mNeedNullFaceCb:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;

    invoke-direct {v2, v1, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V

    invoke-interface {v0, p2, v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;->onFaceDetection(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iput-boolean v6, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mNeedNullFaceCb:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v6

    array-length p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v7

    aput-object p1, p3, v3

    invoke-static {p0, v5, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "sendFaceDetectionInfoCallback - Faces(null)"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method sendHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mHandGestureDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_HAND_GESTURE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_HAND_GESTURE_RESULT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    array-length v4, p3

    if-lez v4, :cond_0

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/container/HandGestureInfo;->unMarshal([I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v4, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;->onHandGestureDetected(Ljava/lang/Integer;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mNeedHgNotDetectedCb:Z

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mNeedHgNotDetectedCb:Z

    if-eqz v4, :cond_1

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/container/HandGestureInfo;->unMarshal([I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v4, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;->onHandGestureDetected(Ljava/lang/Integer;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mNeedHgNotDetectedCb:Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object v1, v0, v2

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "sendHandGestureDetectionInfoCallback - TimeStamp(%d) handGestureMode(%d) handGestureResult(%s) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method sendLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensDirtyDetectCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LENS_DIRTY_DETECT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensDirtyDetect:Ljava/lang/Boolean;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensDirtyDetect:Ljava/lang/Boolean;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;->onLensDirtyDetectChanged(Ljava/lang/Long;Ljava/lang/Boolean;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendLensDirtyDetectCallback - TimeStamp(%d) LensDirtyDetect(%b) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->LENS_INFO_CURRENT_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    const/4 v5, 0x0

    new-array v6, v5, [I

    invoke-virtual {p3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    array-length v6, p3

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    aget p3, p3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->getLensAperture()Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->getLensCurrentPosition()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->getLensFocusDistance()Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->getLensState()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->setLensAperture(Ljava/lang/Float;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {p3, v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->setLensCurrentPosition(Ljava/lang/Integer;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->setLensFocusDistance(Ljava/lang/Float;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->setLensState(Ljava/lang/Integer;)V

    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-direct {p3, v2, v4, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;-><init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;->onLensInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendLensInfoCallback - TimeStamp(%d) %s camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method sendLensSuggestionCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensSuggestionCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LENS_SUGGESTION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensSuggestion:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensSuggestion:Ljava/lang/Integer;

    invoke-interface {v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;->onLensSuggestionChanged(Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendLensSuggestionCallback - TimeStamp(%d) LensSuggestion(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLightConditionCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LIGHT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLightCondition:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLightCondition:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;->onLightConditionChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendLightConditionCallback - TimeStamp(%d) LightCondition(0x%X) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLiveHdrStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LIVE_HDR_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLiveHdrState:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLiveHdrState:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;->onLiveHdrStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendLiveHdrStateCallback - TimeStamp(%d) HdrState(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendMultiViewInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mMultiViewInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_MULTIVIEW_CROP_ROI:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;-><init>([Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-interface {v0, p2, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;->onMultiViewInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendMultiViewInfoCallback - TimeStamp(%d) multiViewCropRoiRects(%s) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mObjectTrackingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/Rect;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_OBJECT_TRACKING_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_OBJECT_TRACKING_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/lang/Integer;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;-><init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;Landroid/graphics/Rect;)V

    invoke-interface {p0, p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;->onObjectTrackingInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    return-void
.end method

.method sendRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RECORDING_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RECORDING_SUGGESTED_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->getRecordingMotionSpeedMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->getRecordingSuggestedMotionSpeedMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->setRecordingMotionSpeedMode(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->setRecordingSuggestedMotionSpeedMode(Ljava/lang/Integer;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-direct {v2, v1, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v0, p2, v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;->onRecordingMotionSpeedModeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendRecordingMotionSpeedModeInfoCallback - TimeStamp(%d) %s camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method sendSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSceneDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SCENE_DETECTION_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [J

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSceneDetectionInfo:[J

    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSceneDetectionInfo:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    aget-wide v3, p3, v1

    long-to-int v3, v3

    invoke-interface {v0, p2, v3, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;->onSceneDetectionInfo(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, p2, v2, v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;->onSceneDetectionInfo(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendSceneDetectionInfoCallback - TimeStamp(%d) SceneDetectionInfo(%s) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSensorSensitivityCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSensorSensitivity:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSensorSensitivity:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;->onSensorSensitivityChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendSensorSensitivityCallback - TimeStamp(%d) SensorSensitivity(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mStillCaptureProgressCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_STILL_CAPTURE_PROGRESS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mStillCaptureProgress:Ljava/lang/Integer;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mStillCaptureProgress:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-interface {v0, p2, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;->onStillCaptureProgressChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object v1, v0, p2

    const/4 p2, 0x2

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "sendStillCaptureProgressCallback - TimeStamp(%d) StillCaptureProgress(%d) FrameNumber(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SUPER_SLOW_MOTION_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SUPER_SLOW_MOTION_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->getSuperSlowMotionMode()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->getSuperSlowMotionState()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->getSuperSlowMotionTrigger()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->setSuperSlowMotionMode(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->setSuperSlowMotionState(Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {v3, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->setSuperSlowMotionTrigger(Ljava/lang/Integer;)V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-direct {v3, v1, v2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v0, p2, v3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;->onSuperSlowMotionInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    aput-object p0, v0, p2

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "sendSuperSlowMotionInfoCallback - TimeStamp(%d) %s camDevice: %s"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method sendTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mTouchAeStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_TOUCH_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mTouchAeState:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mTouchAeState:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;->onTouchAeStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendTouchAeStateCallback - TimeStamp(%d) TouchAeState(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/lang/Long;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "timeStamp",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mZoomLockStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ZOOM_LOCK_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mZoomLockState:Ljava/lang/Integer;

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mZoomLockState:Ljava/lang/Integer;

    invoke-interface {v0, p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;->onZoomLockStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "sendZoomLockStateCallback - TimeStamp(%d) ZoomLockState(%d) camDevice: %s"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method setAdaptiveLensModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptiveLensModeInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AdaptiveLensModeInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAdaptiveLensModeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;

    return-void
.end method

.method setAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAeInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AeInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AeInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;

    return-void
.end method

.method setAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAfInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AfInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AfInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAfInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;

    return-void
.end method

.method setAgifEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAgifEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAgifEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;

    return-void
.end method

.method setAutoFramingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoFramingInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AutoFramingInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AutoFramingInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mAutoFramingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;

    return-void
.end method

.method setBeautyEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BeautyEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BeautyEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BeautyEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BeautyEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBeautyEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BeautyEventCallback;

    return-void
.end method

.method public setBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBokehInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BokehInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BokehInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBokehInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;

    return-void
.end method

.method setBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightnessValueCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBrightnessValue:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BrightnessValueCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BrightnessValueCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBrightnessValueCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;

    return-void
.end method

.method setBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBurstShotFpsCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBurstShotFps:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BurstShotFpsCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BurstShotFpsCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mBurstShotFpsCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;

    return-void
.end method

.method setCameraRunningDebugInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraRunningDebugInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfo:[B

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CameraRunningDebugInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CameraRunningDebugInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCameraRunningDebugInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;

    return-void
.end method

.method setColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorTemperatureCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mColorTemperature:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ColorTemperatureCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ColorTemperatureCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mColorTemperatureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;

    return-void
.end method

.method setCompositionGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCompositionGuideEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CompositionGuideCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CompositionGuideCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCompositionGuideEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;

    return-void
.end method

.method setDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDepthInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mCenterDepth:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DepthInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DepthInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDepthInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;

    return-void
.end method

.method setDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDofMultiInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DofMultiInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DofMultiInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDofMultiInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;

    return-void
.end method

.method setDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicShotCaptureDurationCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDsCaptureDuration:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotCaptureDurationCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotCaptureDurationCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotCaptureDurationCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;

    return-void
.end method

.method setDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicShotInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DynamicShotInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mDynamicShotInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;

    return-void
.end method

.method setEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEvCompensationValueCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEvCompensationValue:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$EvCompensationValueCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$EvCompensationValueCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEvCompensationValueCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;

    return-void
.end method

.method setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEventFinderResultCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$EventFinderResultCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$EventFinderResultCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventFinderResultCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;

    return-void
.end method

.method setExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureTimeCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mExposureTime:Ljava/lang/Long;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ExposureTimeCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ExposureTimeCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mExposureTimeCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;

    return-void
.end method

.method setFaceAlignmentEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceAlignmentEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceAlignmentEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceAlignmentEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFaceAlignmentEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;

    return-void
.end method

.method setFaceDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceDetectionInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFaceDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;

    return-void
.end method

.method setFaceLandmarkEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceLandmarkEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceLandmarkEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceLandmarkEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFaceLandmarkEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;

    return-void
.end method

.method setFaceRecognitionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceRecognitionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceRecognitionEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceRecognitionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFaceRecognitionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;

    return-void
.end method

.method setFacialAttributeEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFacialAttributeEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFacialAttributeEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;

    return-void
.end method

.method setFoodEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFoodEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FoodEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FoodEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mFoodEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;

    return-void
.end method

.method setHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandGestureDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HandGestureDetectionInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HandGestureDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mHandGestureDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;

    return-void
.end method

.method setHumanTrackingEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHumanTrackingEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$HumanTrackingEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mHumanTrackingEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;

    return-void
.end method

.method setInjectedDSC(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "injectedDsCondition",
            "injectedDsExtraInfo"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mInjectedDsCondition:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mInjectedDsExtraInfo:I

    return-void
.end method

.method setIntelligentGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIntelligentGuideEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$IntelligentGuideEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$IntelligentGuideEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mIntelligentGuideEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;

    return-void
.end method

.method setLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLensDirtyDetectCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensDirtyDetect:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensDirtyDetectCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensDirtyDetectCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensDirtyDetectCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;

    return-void
.end method

.method setLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLensInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;

    return-void
.end method

.method setLensSuggestionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLensSuggestionCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensSuggestion:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensSuggestionCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensSuggestionCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLensSuggestionCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;

    return-void
.end method

.method setLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightConditionCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLightCondition:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LightConditionCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LightConditionCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLightConditionCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;

    return-void
.end method

.method setLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLiveHdrStateCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLiveHdrState:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mLiveHdrStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;

    return-void
.end method

.method setMultiViewInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiViewInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$MultiViewInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$MultiViewInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mMultiViewInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;

    return-void
.end method

.method setObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setObjectTrackingInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ObjectTrackingInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ObjectTrackingInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mObjectTrackingInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;

    return-void
.end method

.method setPalmDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPalmDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPalmDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;

    return-void
.end method

.method setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPanoramaEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPanoramaEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$r5BFdod16YgQ0jdEFx6oqefMTTU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$r5BFdod16YgQ0jdEFx6oqefMTTU;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPanoramaEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;

    return-void
.end method

.method setPostProcessorStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostProcessorStatusCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PostProcessorCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PostProcessorCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPostProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;

    return-void
.end method

.method setPreviewSnapShotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSnapShotCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPreviewSnapShotCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;

    return-void
.end method

.method setPreviewStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewStateCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewStateCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewStateCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;

    return-void
.end method

.method setQRCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQRCodeDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mQRCodeDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;

    return-void
.end method

.method setRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMotionSpeedModeInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback$RecordingMotionSpeedModeInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordingMotionSpeedModeInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RecordingMotionSpeedModeInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mRecordingMotionSpeedModeInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;

    return-void
.end method

.method setSTPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSTPictureCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$STPictureCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSTPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;

    return-void
.end method

.method setSceneDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSceneDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;

    return-void
.end method

.method setSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneDetectionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSceneDetectionInfo:[J

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSceneDetectionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;

    return-void
.end method

.method setSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSensorSensitivityCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSensorSensitivity:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SensorSensitivityCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SensorSensitivityCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSensorSensitivityCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;

    return-void
.end method

.method setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSingleBokehEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SingleBokehEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SingleBokehEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSingleBokehEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;

    return-void
.end method

.method setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlowMotionEventDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SlowMotionEventDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSlowMotionEventDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;

    return-void
.end method

.method setSmartScanEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartScanEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SmartScanEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSmartScanEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;

    return-void
.end method

.method setStarEffectEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStarEffectEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StarEffectEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StarEffectEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mStarEffectEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;

    return-void
.end method

.method setStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStillCaptureProgressCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mStillCaptureProgress:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StillCaptureProgressCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StillCaptureProgressCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mStillCaptureProgressCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;

    return-void
.end method

.method setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuperSlowMotionInfoCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfo:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->reset()V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SuperSlowMotionInfoCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SuperSlowMotionInfoCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSuperSlowMotionInfoCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;

    return-void
.end method

.method setSwFaceDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwFaceDetectionEventCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SwFaceDetectionEventCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SwFaceDetectionEventCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mSwFaceDetectionEventCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;

    return-void
.end method

.method setTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchAeStateCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mTouchAeState:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$TouchAeStateCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$TouchAeStateCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mTouchAeStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;

    return-void
.end method

.method setZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;Landroid/os/Handler;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomLockStateCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mZoomLockState:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ZoomLockStateCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ZoomLockStateCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mZoomLockStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;

    return-void
.end method

.method updateLowMemoryCaptureState()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->TIME_WAIT:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    const-string v2, "updateLowMemoryCaptureState - "

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureTimeChecker:Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;->isElapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->STARTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureTimeChecker:Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;->isElapsed()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->TIME_WAIT:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isAvailableMemoryEnough(Landroid/app/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureTimeChecker:Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeChecker;->checkTime()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;->STARTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->mForceLowMemoryCaptureState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager$ForceLowMemoryCaptureState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
