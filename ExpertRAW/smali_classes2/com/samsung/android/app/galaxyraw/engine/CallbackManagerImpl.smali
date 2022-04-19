.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$ZoomLockStateCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackManager"


# instance fields
.field private final mAdaptiveLensModeInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;

.field private final mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

.field private final mAfLensInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;

.field private final mBokehInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;

.field private final mBrightnessValueCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mCompositionGuideEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;

.field private final mDepthInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;

.field private final mDynamicShotCaptureDurationCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

.field private final mDynamicShotInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private final mFaceDetectionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

.field private final mFoodEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;

.field private final mHandGestureDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

.field private final mHdrStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;

.field private final mIntelligentGuideEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;

.field private mIsLiveThumbnailPreviewCallbackEnabled:Z

.field private final mLensDirtyDetectCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

.field private final mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

.field private mLiveThumbnailPreviewListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;

.field private final mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

.field private mPreviewCallbackEnabled:Z

.field private final mPreviewSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

.field private final mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

.field private final mRecordingMotionSpeedModeInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;

.field private final mSceneDetectionEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;

.field private final mSceneDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;

.field private final mSensorInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

.field private final mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

.field private final mSmartScanEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;

.field private final mStillCaptureProgressCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;

.field private final mSubPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

.field private final mZoomLockStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$ZoomLockStateCallbackManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "engine",
            "aeAfManager",
            "recordingManager"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLiveThumbnailPreviewListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMakerHolder()Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAdaptiveLensModeInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAfLensInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBokehInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCompositionGuideEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDepthInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mFoodEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHandGestureDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHdrStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mIntelligentGuideEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLensDirtyDetectCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mRecordingMotionSpeedModeInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSceneDetectionEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSceneDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSmartScanEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mStillCaptureProgressCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSubPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$ZoomLockStateCallbackManager;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$ZoomLockStateCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mZoomLockStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$ZoomLockStateCallbackManager;

    return-void
.end method

.method static synthetic access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->isPalmDetectionAvailable()Z

    move-result p0

    return p0
.end method

.method private enableAeAfStateCallbacks(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeInfoCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAfInfoCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getTouchAeStateCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getObjectTrackingInfoCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;)V

    return-void
.end method

.method private enableBurstCaptureCallbacks(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isBurstCaptureSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableBurstPictureCallback(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableBurstShotFpsCallback(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAgifBurstCaptureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableAgifEventCallback(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private enableDynamicShotInfoCallback(Z)V
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

    const-string v1, "enableDynamicShotInfoCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;)V

    return-void
.end method

.method private enableFaceDetectionEventCallbacks(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ShootingModeFeature$SupportedFaceDetectionType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isFaceDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableFaceDetectionCallback(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableSwFaceDetectionEventCallback(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isFaceDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableFaceDetectionCallback(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableSwFaceDetectionEventCallback(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private enableLensDirtyDetectCallback(Z)V
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

    const-string v1, "enableLensDirtyDetectCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLensDirtyDetectCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;)V

    return-void
.end method

.method private enablePreviewCallback(Z)V
    .locals 3
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

    const-string v1, "enablePreviewCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    if-nez p1, :cond_1

    const-string p1, "enablePreviewCallback : Preview callback enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPreviewCallbackManager()Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePreviewCallback : isLiveThumbnailPreviewEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isMotionPhotoEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isHistogramEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->isHistogramEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->isHistogramEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "enablePreviewCallback : Preview callback disabled"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private isPalmDetectionAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p0, v0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public enableAdaptiveLensModeInfoCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAdaptiveLensModeInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setAdaptiveLensModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;)V

    return-void
.end method

.method public enableAfLensInfoCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAfLensInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;)V

    return-void
.end method

.method public enableAgifEventCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getAgifBurstCaptureController()Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setAgifEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;)V

    return-void
.end method

.method public enableBokehInfoCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBokehInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;)V

    return-void
.end method

.method public enableBrightnessValueCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;)V

    return-void
.end method

.method public enableBurstPictureCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getBurstCaptureController()Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setBurstPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;)V

    return-void
.end method

.method public enableBurstShotFpsCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getBurstCaptureController()Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;)V

    return-void
.end method

.method public enableCompositionGuideEventCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCompositionGuideEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setCompositionGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;)V

    return-void
.end method

.method enableDefaultCallbacks()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableAeAfStateCallbacks(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableBurstCaptureCallbacks(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableFaceDetectionEventCallbacks(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableBrightnessValueCallback(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableLightConditionCallback(Z)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getHdr()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableHdrStateCallback(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isHandGestureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->enableHandGestureDetectionInfoCallback(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->enablePalmDetectionCallback(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->enablePalmDetection(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableRecordStateCallback(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enablePictureCallback(Z)V

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->is120FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableVideoSnapshotCallback(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isPreviewCallbackRequired()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enablePreviewCallback(Z)V

    :cond_6
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_INTELLIGENT_GUIDE_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableLensDirtyDetectCallback(Z)V

    :cond_7
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PICTURE_PROCESSING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isDynamicShotInfoSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableDynamicShotInfoCallback(Z)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setPreviewSnapShotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestEventManager()Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setPreviewStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;)V

    return-void
.end method

.method public enableDepthInfoCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDepthInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;)V

    return-void
.end method

.method public enableDofMultiInfoCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getDofMultiInfoCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;)V

    return-void
.end method

.method public enableEstimatedCaptureDurationCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;)V

    return-void
.end method

.method public enableFaceDetectionCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setFaceDetectionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;)V

    return-void
.end method

.method public enableFoodEventCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mFoodEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setFoodEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;)V

    return-void
.end method

.method public enableHandGestureDetectionInfoCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHandGestureDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;)V

    return-void
.end method

.method public enableHdrStateCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHdrStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;)V

    return-void
.end method

.method public enableHistogramPreviewCallback(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enablePreviewCallback(Z)V

    return-void
.end method

.method public enableIntelligentGuideEventCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mIntelligentGuideEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setIntelligentGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;)V

    return-void
.end method

.method public enableLightConditionCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;)V

    return-void
.end method

.method public enableLiveThumbnailPreviewCallback(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enablePreviewCallback(Z)V

    return-void
.end method

.method public enableMotionPhotoPreviewCallback(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enablePreviewCallback(Z)V

    return-void
.end method

.method public enablePalmDetectionCallback(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHandGestureDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setPalmDetectionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enablePictureCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureCallbackManager()Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;)V

    return-void
.end method

.method public enableRawPictureCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureCallbackManager()Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->getRawPictureCallbackManager()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setRawPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;)V

    return-void
.end method

.method public enableRecordStateCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestEventManager()Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setRecordStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordStateCallback;)V

    return-void
.end method

.method public enableRecordingMotionSpeedModeInfoCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mRecordingMotionSpeedModeInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;)V

    return-void
.end method

.method public enableSceneDetectionEventCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSceneDetectionEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSceneDetectionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;)V

    return-void
.end method

.method public enableSceneDetectionInfoCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSceneDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;)V

    return-void
.end method

.method public enableSensorInfoCallback(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    :cond_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;)V

    return-void
.end method

.method public enableSmartScanEventCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSmartScanEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSmartScanEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;)V

    return-void
.end method

.method public enableStillCaptureProgressCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mStillCaptureProgressCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;)V

    return-void
.end method

.method public enableSwFaceDetectionEventCallback(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSwFaceDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_SW_FACE_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableVideoSnapshotCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingSnapShotCallbackManager()Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setVideoSnapshotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;)V

    return-void
.end method

.method public enableZoomLockStateCallback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mZoomLockStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$ZoomLockStateCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;)V

    return-void
.end method

.method public enableZoomMapViewPreviewCallback(ZLandroid/util/Size;)V
    .locals 0
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

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSubPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->access$2400(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSubPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSubPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->access$2500(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;)V

    :goto_0
    return-void
.end method

.method getBrightnessValueForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->getBrightnessValueForCapture()I

    move-result p0

    return p0
.end method

.method getDynamicShotCaptureDurationForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->getDynamicShotCaptureDurationForCapture()I

    move-result p0

    return p0
.end method

.method getDynamicShotInfoListForCapture()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->getDynamicShotInfoListForCapture()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method getLightConditionForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;->getLightConditionForCapture()I

    move-result p0

    return p0
.end method

.method getLiveThumbnailPreviewListener()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLiveThumbnailPreviewListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;

    return-object p0
.end method

.method handlePreviewSnapShotError()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->handleError()V

    return-void
.end method

.method isHistogramEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isHistogramSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method isLiveThumbnailPreviewCallbackEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    return p0
.end method

.method notifyCurrentDynamicShotCaptureDurationTime()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->access$3400(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V

    return-void
.end method

.method notifyCurrentLightCondition()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;->access$3500(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;)V

    return-void
.end method

.method public registerDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDepthInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->registerDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V

    return-void
.end method

.method public registerHandGestureListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHandGestureDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->registerHandGestureListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V

    return-void
.end method

.method public registerHdrStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HdrStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHdrStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;->registerHdrStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HdrStateListener;)V

    return-void
.end method

.method public registerLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;->registerLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V

    return-void
.end method

.method resetFlags()V
    .locals 2

    const-string v0, "CallbackManager"

    const-string v1, "resetFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->access$3600(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->access$3700(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->access$3800(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;->access$3900(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;)V

    return-void
.end method

.method public setAdaptiveLensModeInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAdaptiveLensModeInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;->setAdaptiveLensModeInfoListenerListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;)V

    return-void
.end method

.method public setAfLensInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mAfLensInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;->access$2600(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AfLensInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;)V

    return-void
.end method

.method public setBokehInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBokehInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;->setBokehInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BokehInfoListener;)V

    return-void
.end method

.method public setBrightnessValueListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->setBrightnessValueListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$BrightnessValueListener;)V

    return-void
.end method

.method public setCompositionGuideEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mCompositionGuideEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;->setCompositionGuideEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$CompositionGuideEventListener;)V

    return-void
.end method

.method public setEstimatedCaptureDurationListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->setEstimatedCaptureDurationListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V

    return-void
.end method

.method public setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;)V

    return-void
.end method

.method public setFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->setFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;)V

    return-void
.end method

.method public setFoodEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mFoodEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;->access$2700(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;)V

    return-void
.end method

.method public setIntelligentGuideEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$IntelligentGuideEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mIntelligentGuideEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;->access$2800(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$IntelligentGuideEventListener;)V

    return-void
.end method

.method public setLensDirtyDetectListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLensDirtyDetectCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->access$2900(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LensDirtyDetectListener;)V

    return-void
.end method

.method public setLiveThumbnailPreviewListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLiveThumbnailPreviewListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;

    return-void
.end method

.method public setMultiViewCropRoiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setMultiViewCropRoiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;)V

    return-void
.end method

.method public setOutFocusEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$OutFocusEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setOutFocusEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$OutFocusEventCallback;)V

    return-void
.end method

.method public setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;)V

    return-void
.end method

.method public setPreviewSnapShotListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mPreviewSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->setPreviewSnapShotListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;)V

    return-void
.end method

.method public setQrCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setQrCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;)V

    return-void
.end method

.method public setRecordingMotionSpeedModeInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mRecordingMotionSpeedModeInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;->access$3000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$RecordingMotionSpeedModeInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$RecordingMotionSpeedModeInfoListener;)V

    return-void
.end method

.method public setSceneDetectionEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSceneDetectionEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;->access$3100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;)V

    return-void
.end method

.method public setSceneDetectionInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSceneDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;->access$3200(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;)V

    return-void
.end method

.method public setSensorInfoEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SensorInfoCallbackManager;->setSensorInfoEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;)V

    return-void
.end method

.method public setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;)V

    return-void
.end method

.method public setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V

    return-void
.end method

.method public setSmartScanEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSmartScanEventCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SmartScanEventCallbackManager;->setSmartScanEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SmartScanEventListener;)V

    return-void
.end method

.method public setStillCaptureProgressListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mStillCaptureProgressCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$StillCaptureProgressCallbackManager;->setStillCaptureProgressListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$StillCaptureProgressListener;)V

    return-void
.end method

.method public setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;)V

    return-void
.end method

.method public setSwFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->setSwFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;)V

    return-void
.end method

.method public setZoomLockStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomLockStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mZoomLockStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$ZoomLockStateCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$ZoomLockStateCallbackManager;->setZoomLockStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomLockStateListener;)V

    return-void
.end method

.method public setZoomMapviewListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSubPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->access$3300(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;)V

    return-void
.end method

.method start()V
    .locals 0

    return-void
.end method

.method stop()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mSubPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->access$2500(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;)V

    return-void
.end method

.method public unregisterDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDepthInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DepthInfoCallbackManager;->unregisterDepthInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$DepthInfoListener;)V

    return-void
.end method

.method public unregisterHandGestureListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHandGestureDetectionInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HandGestureDetectionInfoCallbackManager;->unregisterHandGestureListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HandGestureDetectionListener;)V

    return-void
.end method

.method public unregisterHdrStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HdrStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mHdrStateCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$HdrStateCallbackManager;->unregisterHdrStateListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$HdrStateListener;)V

    return-void
.end method

.method public unregisterLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;->unregisterLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V

    return-void
.end method

.method updateCaptureInfo(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPictureRequest"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->updateDynamicShotCaptureDurationForCapture()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->updateDynamicShotInfoListForCapture()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$LightConditionCallbackManager;->updateLightConditionForCapture()I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->updateBrightnessValueForCapture()I

    return-void
.end method
