.class public Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue$EmptyListener;
.implements Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GalaxyRaw/CommonEngine"

.field private static final TRANSIENT_CAPTURE_TIMEOUT:I = 0x1f4


# instance fields
.field private final mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

.field private final mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

.field private final mBeautyController:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

.field private final mBokehEffectController:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

.field private final mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

.field private final mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraDeviceStateListener:Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;

.field private final mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mCaptureEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureProcessingToast:Landroid/widget/Toast;

.field private mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

.field private final mCreatingOutputFileLock:Ljava/lang/Object;

.field private mCurrentCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

.field private mCurrentState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

.field private final mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

.field private final mGenericEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

.field private final mHistogramController:Lcom/samsung/android/app/galaxyraw/engine/HistogramController;

.field private mIsShutterReceived:Z

.field private final mLastContentData:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

.field private mLastOrientation:I

.field private mLastOrientationForCapture:I

.field private mMakerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;

.field private final mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

.field private final mMakerStateListener:Lcom/samsung/android/app/galaxyraw/engine/MakerStateListener;

.field private final mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

.field private final mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

.field private mOutputFilePath:Ljava/lang/String;

.field private final mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

.field private final mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

.field private final mPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;

.field private final mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

.field private final mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

.field private final mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

.field private final mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

.field private final mRequestQueueEmptyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

.field private final mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

.field private final mShutterTimerManager:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

.field private final mStopTransientCapture:Ljava/lang/Runnable;

.field private mTakePictureType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

.field private mUiThreadRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiThreadRunnableListLock:Ljava/lang/Object;

.field private final mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mTakePictureType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientationForCapture:I

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$x3M2P8UY2t-d_9WzPLFodCNnXQQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$x3M2P8UY2t-d_9WzPLFodCNnXQQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mStopTransientCapture:Ljava/lang/Runnable;

    const-string v1, "Create CommonEngine"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraDeviceStateListener:Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/MakerStateListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/MakerStateListener;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerStateListener:Lcom/samsung/android/app/galaxyraw/engine/MakerStateListener;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mGenericEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;)V

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-direct {p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-direct {v1, p0, v3, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->setEmptyListener(Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue$EmptyListener;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBeautyController:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBokehEffectController:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mHistogramController:Lcom/samsung/android/app/galaxyraw/engine/HistogramController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShutterTimerManager:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastContentData:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/HistogramController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mHistogramController:Lcom/samsung/android/app/galaxyraw/engine/HistogramController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    return-object p0
.end method

.method private bindMakerService()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PICTURE_PROCESSING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "bindMakerService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->bindMakerService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private cancelStitchingCapture()V
    .locals 4

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "cancelStitchingCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastContentData:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastContentData:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getContentUriForReading()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->updateToDb(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastContentData:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clear()V

    return-void
.end method

.method private cancelTakePicture()V
    .locals 2

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "cancelTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private connectMaker(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectMaker : cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->UPDATE_MULTI_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->UPDATE_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result p1

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CONNECT_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private getCameraDisplayOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCameraOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    add-int/lit16 v1, v1, -0xb4

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getSensorOrientation()I

    move-result p0

    add-int/2addr p0, v1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getSensorOrientation()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    :goto_1
    return p0
.end method

.method private isCameraOrientationLandscape()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

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

.method private isTakePictureAvailable()Z
    .locals 8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GalaxyRaw/CommonEngine"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Take picture is not available because wrong state for take picture = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;->isStartPreviewRequestApplied()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Take picture is not available because start preview is not completed."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Take picture is not available because wrong capture state for take picture: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCaptureRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Take picture is not available because capture is already requested."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Take picture is not available because start connecting maker is requested."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getQueuedTaskCount()J

    move-result-wide v4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MAX_SAVING_TASK_QUEUE_SIZE_FOR_MMC:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    const-string p0, "Take picture is not available because saving task queue size limit exceeded"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->isMaxPostProcessingCountReached()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->showProcessingToast()V

    const-string p0, "Take picture is not available because maximum count of post processing has been reached."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    return v3
.end method

.method private isTakingPostProcessingPictureAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTakingPostProcessingPictureSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorTakePictureRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getReview()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    if-eq v0, v3, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method private isTakingSinglePictureAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getProcessingMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_12000X9000:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isTakingPostProcessingPictureAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$disableRecordingSeamlessZoom$0(ZLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$enablePalmDetection$1(ZLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getHandGestureMode(Z)I

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_HAND_GESTURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_HAND_GESTURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setDetectedSceneInfo$5([JLcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SCENE_DETECTION_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SCENE_DETECTION_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setFrontPictureStreamType$6(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getFrontPictureStreamType(I)I

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setLiveHdr$11(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getLiveHdrMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setOverheatLevel$7(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setScalerFlipMode$12(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getScalerFlipMode(I)I

    move-result p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setSelfieToneMode$8(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PERSONAL_PRESET_INDEX:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PERSONAL_PRESET_INDEX:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setSuperNightShotMode$10(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$x3M2P8UY2t-d_9WzPLFodCNnXQQ(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->stopTransientCapture()V

    return-void
.end method

.method private removeOutputFilePath()V
    .locals 3

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "removeOutputFilePath"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setDeviceOrientation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_ORIENTATION:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private setLiveFocusDualCapture(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLiveFocusDualCapture : mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalaxyRaw/CommonEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isZoomInOutPhotoSupported()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "setLiveFocusDualCapture : Returned because it is not supported current device."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setLiveHdr(I)V
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

    const-string v1, "setLiveHdr : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setLiveHdr : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->RESTART_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$nNw0d-6l6WuusNeUl1NML9IUbNw;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$nNw0d-6l6WuusNeUl1NML9IUbNw;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private setScalerFlipMode(I)V
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

    const-string v1, "setScalerFlipMode : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$gfXL6xwXt4ugYeomhBXOr4naFew;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$gfXL6xwXt4ugYeomhBXOr4naFew;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setTakePictureType()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mTakePictureType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    return-void
.end method

.method private showProcessingToast()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureProcessingToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12039f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureProcessingToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startCapture(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCapture : CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->logCurrentMemoryStatus(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getTakePictureScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->start()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startStitchingCapture()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->takePicture()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$cfgp2km7hWpqfGs6XfGT1jniVdY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$cfgp2km7hWpqfGs6XfGT1jniVdY;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private startStitchingCapture()V
    .locals 2

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "startStitchingCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->insertToDb(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->lockAeAwb()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private startTransientCapture()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isLongTakePicture()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startTransientCaptureStopTimer()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_TRANSIENT_CAPTURE_ACTION:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private stopStitchingCapture()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private stopTakePicture()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private stopTransientCapture()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCaptureRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_TRANSIENT_CAPTURE_ACTION:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startTransientCaptureStopTimer()V

    return-void
.end method

.method private switchCameraInternal(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchCameraInternal : cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CLOSE_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->OPEN_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private takePicture()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takePicture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mTakePictureType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$TakePictureType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mTakePictureType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported take picture type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mTakePictureType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private unbindMakerService()V
    .locals 1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PICTURE_PROCESSING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "GalaxyRaw/CommonEngine"

    const-string v0, "unbindMakerService"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->unbindMakerService()V

    :cond_0
    return-void
.end method


# virtual methods
.method applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updater"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->APPLY_SETTINGS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public cancelCapture(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCapture : CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->cancelStitchingCapture()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->cancelTakePicture()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public cancelShutterAction()V
    .locals 2

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "cancelShutterAction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetAeAfAwb()V

    return-void
.end method

.method cancelShutterTimerCapture()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_PREPARE_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method

.method public changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method

.method public changeCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCaptureState"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCaptureState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    return-void
.end method

.method public changeShootingMode(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "isFacingSwitch"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeShootingMode : shootingModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isFacingSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getChangeShootingModeScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getNextCameraId(Z)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->switchCameraInternal(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->INITIALIZE_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CONNECT_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public changeState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    return-void
.end method

.method public clearApplySettingsSequenceId()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;->clearApplySettingsSequenceId()V

    return-void
.end method

.method public clearLastContentData()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastContentData:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clear()V

    return-void
.end method

.method public countDownPictureLatch()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->countDownPictureLatch()V

    return-void
.end method

.method public createEffectProcessor(ILandroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectProcessorMode",
            "handler"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->createEffectProcessor(IILandroid/os/Handler;)V

    return-void
.end method

.method public createExtraSurface(Landroid/view/SurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraSurfaceView"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->createExtraSurface(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public createMultiCameraEffectProcessor(ILandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectMode",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->createProcessor(ILandroid/os/Handler;)V

    return-void
.end method

.method public createNewOutputFilePath(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "GalaxyRaw/CommonEngine"

    const-string v2, "createNewOutputFilePath - start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->makeDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getPictureSavingStorage(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->makeDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;J)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    const-string p0, "GalaxyRaw/CommonEngine"

    const-string p1, "createNewOutputFilePath - end"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to Create Directory :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to Create Directory :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroyEffectProcessor()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->destroyEffectProcessor()V

    return-void
.end method

.method public destroyMultiCameraEffectProcessor()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->destroyProcessor()V

    return-void
.end method

.method public disableRecordingSeamlessZoom(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableRecordingSeamlessZoom : disable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$zC7o7O9dOKfOCeden1-qr9hvFo8;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$zC7o7O9dOKfOCeden1-qr9hvFo8;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public dumpCapability()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->dumpCapability()V

    return-void
.end method

.method public dumpLastCaptureResult()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->dumpLastCaptureResult()V

    :cond_0
    return-void
.end method

.method public enableIntelligentGuide(Z)V
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

    const-string v1, "enableIntelligentGuide = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableNonLinearDngCompression(Z)V
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

    const-string v1, "enableNonLinearDngCompression = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enablePalmDetection(Z)V
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

    const-string v1, "enablePalmDetection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isHandGestureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$jzAhpPQw-yz3SK8usT-56VCsS94;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$jzAhpPQw-yz3SK8usT-56VCsS94;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->PALM_DETECTION_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getPalmDetectionMode(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public enablePostProcessingMotionPhoto(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_MOTION_PHOTO_PPP:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableQrCodeDetection(ZJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "interval",
            "enableQrImage"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableQrCodeDetection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DATA_MATRIX_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BARCODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->QR_CODE_DETECTION_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->QR_CODE_DETECTION_INTERVAL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_CROPPED_QR_IMG_CB:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    :cond_3
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableShapeCorrection(Z)V
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

    const-string v1, "enableShapeCorrection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_FACE_SHAPE_CORRECTION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableSlowMotionEventDetection(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_SLOWMOTION_EVENT_DETECT:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    return-object p0
.end method

.method getAgifBurstCaptureController()Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    return-object p0
.end method

.method public getAgifBurstCaptureThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    return-object p0
.end method

.method public getBrightnessValueForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->getBrightnessValueForCapture()I

    move-result p0

    return p0
.end method

.method getBurstCaptureController()Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    return-object p0
.end method

.method public getBurstCaptureFps()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->getBurstCaptureFps()I

    move-result p0

    return p0
.end method

.method public getBurstCaptureSoundId()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->getBurstCaptureSoundId()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    move-result-object p0

    return-object p0
.end method

.method public getBurstCaptureThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    return-object p0
.end method

.method public getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    return-object p0
.end method

.method public getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method public getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getTargetCameraId()I

    move-result v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    return-object p0
.end method

.method public getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureEventListeners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method getCurrentCaptureType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    return-object p0
.end method

.method public getCurrentPreviewSurface(I)Landroid/view/Surface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleCameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    return-object p0
.end method

.method public getCurrentTakePictureType()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mTakePictureType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    return-object p0
.end method

.method public getDummyRecordingSurface(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/view/Surface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "resolution"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getDummyRecordingSurface(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method getDynamicShotInfoForCapture()Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->getDynamicShotInfoListForCapture()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    return-object p0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->getDynamicShotInfoListForCapture()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method getEffectController()Lcom/samsung/android/app/galaxyraw/engine/EffectController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    return-object p0
.end method

.method public getEstimatedCaptureDuration()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->getDynamicShotCaptureDurationForCapture()I

    move-result p0

    return p0
.end method

.method public getExtraPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getExtraPreviewSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getExtraSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method public getFixedSurfaceSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getFrontCropAngleZoomValue()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getFrontCropAngleZoomValue()I

    move-result p0

    return p0
.end method

.method public getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mGenericEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    return-object p0
.end method

.method public getInitialCameraId()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getNextCameraId(Z)I

    move-result p0

    return p0
.end method

.method public getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastContentData:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    return-object p0
.end method

.method public getLightConditionForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->getLightConditionForCapture()I

    move-result p0

    return p0
.end method

.method public getMakerEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;

    return-object p0
.end method

.method getMakerHolder()Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    return-object p0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getMaxZoomLevel(I)I

    move-result p0

    return p0
.end method

.method public getMaxZoomLevel(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getMaxZoomLevel(I)I

    move-result p0

    return p0
.end method

.method public getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object p0

    return-object p0
.end method

.method public getMediaRecorderList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getMediaRecorderList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getMinZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getMinZoomLevel(I)I

    move-result p0

    return p0
.end method

.method public getMinZoomLevel(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getMinZoomLevel(I)I

    move-result p0

    return p0
.end method

.method getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    return-object p0
.end method

.method getMultiCameraEffectController()Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    return-object p0
.end method

.method public getMultiCameraPreviewSurface(I)Landroid/view/Surface;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    new-instance v0, Landroid/view/Surface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public getNewOutputFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getNextCameraId(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFacingSwitch"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    if-ne v0, v3, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    move v1, p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v1

    :goto_2
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne v0, v3, :cond_4

    const/16 p1, 0x66

    :cond_4
    const/16 v1, 0x14

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSeamlessZoomAvailable(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, p1

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingType()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    if-ne v0, v3, :cond_6

    const/16 p1, 0xc8

    goto :goto_4

    :cond_6
    const/16 p1, 0xc9

    :goto_4
    move v2, p1

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSingleTakeCustomizedOptionUseMultiRecording()I

    move-result p0

    if-ne p0, v3, :cond_9

    if-ne v0, v3, :cond_8

    const/16 p0, 0xca

    goto :goto_5

    :cond_8
    const/16 p0, 0xcb

    :goto_5
    move v2, p0

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getNextCameraId : nextId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalaxyRaw/CommonEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getOrientationForCapture()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientationForCapture:I

    return p0
.end method

.method getPictureCallbackManager()Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    return-object p0
.end method

.method getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    return-object p0
.end method

.method getPreviewCallbackManager()Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;

    return-object p0
.end method

.method public getPreviewDisplayMatrix(ILandroid/graphics/Rect;)Landroid/graphics/Matrix;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "screenWidth",
            "previewRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraDisplayOrientation()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p0, v1

    const/high16 v0, 0x44fa0000    # 2000.0f

    div-float v4, p0, v0

    int-to-float v2, v2

    div-float v0, v2, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    div-float/2addr v2, v0

    invoke-virtual {v3, p0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sub-int/2addr p1, v1

    int-to-float p0, p1

    div-float/2addr p0, v0

    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v3
.end method

.method public getRecordingEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    return-object p0
.end method

.method public getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    return-object p0
.end method

.method public getRequestEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RequestEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    return-object p0
.end method

.method getRequestEventManager()Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    return-object p0
.end method

.method getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    return-object p0
.end method

.method public getScalerCropRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getScalerCropRegion()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getScalerCropRegion(II)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "level"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getScalerCropRegion(II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getScreenFlashController()Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    return-object p0
.end method

.method public getSeamlessZoomValueArray()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->getSeamlessZoomValueArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getSensorInfoActiveArraySize(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getSensorInfoActiveArraySize(I)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isSensorCropSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isDynamicFovSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShutterTimerManager:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

    return-object p0
.end method

.method public getThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->getThumbnailCallbackManager()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;

    move-result-object p0

    return-object p0
.end method

.method getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getTotalZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getTotalZoomLevel()I

    move-result p0

    return p0
.end method

.method getZoomController()Lcom/samsung/android/app/galaxyraw/engine/ZoomController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    return-object p0
.end method

.method public getZoomType()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getZoomType()I

    move-result p0

    return p0
.end method

.method public handleBurstShutterPressed(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->BURST_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->handleBurstShutterPressed(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->handleAgifBurstShutterPressed(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleBurstShutterReleased()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->handleBurstShutterReleased()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->handleAgifBurstShutterReleased()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleCamAccessException(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorReason"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    :goto_0
    return-void
.end method

.method public handleCameraError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->HANDLE_CAMERA_ERROR:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method handleEsdError()V
    .locals 3

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "handleEsdError"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->restartVideoRecordingOnEsdError()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CLOSE_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->OPEN_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->reconnectMaker()V

    :goto_0
    return-void
.end method

.method handleMakerConnected()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setDeviceOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->enableDefaultCallbacks()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->initPostProcessingCount()V

    return-void
.end method

.method handleMakerDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mStopTransientCapture:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->resetFlags()V

    return-void
.end method

.method public handlePreviewSnapShotError()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->handlePreviewSnapShotError()V

    return-void
.end method

.method public handleShutterReleased(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputType",
            "captureType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleShutterReleased :  InputType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isTakePictureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateCaptureInfo(Z)V

    const-string v1, "TakePictureSequence"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture - TakePictureSequence("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mTakePictureType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") : Start["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GalaxyRaw/CameraPerformance"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mIsShutterReceived:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->stopTransientZooming(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isScreenFlashRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShutterTimerManager:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleShutterTimer(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isNightScreenFlashRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShutterTimerManager:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleShutterTimer(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_NIGHT_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShutterTimerManager:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->handleShutterTimer(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startTransientCapture()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startCapture(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method

.method public handleTakePictureStopped()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->handleTakePictureStopped()V

    return-void
.end method

.method interruptCaptureRequest()V
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_MULTI_VIDEO_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isWaiting(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interruptCaptureRequest : request to interrupt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->interruptRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isAutoFlashRequired()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->getLightConditionForCapture()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

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

.method public isAutoFocusTriggerRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isAutoFocusTriggerRequired()Z

    move-result p0

    return p0
.end method

.method isCameraDeviceOpened()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraDeviceStateListener:Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->isCameraDeviceOpened()Z

    move-result p0

    return p0
.end method

.method public isCancelAfRequiredAfterTakingPicture()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isCancelAfRequiredAfterTakingPicture()Z

    move-result p0

    return p0
.end method

.method isCaptureRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureState"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentCaptureState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCurrentState:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDraftPictureSaved()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->isDraftPictureSaved()Z

    move-result p0

    return p0
.end method

.method public isEffectProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorActivated()Z

    move-result p0

    return p0
.end method

.method public isEffectProcessorRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorRequired()Z

    move-result p0

    return p0
.end method

.method public isExtraPreviewSurfaceCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->isExtraPreviewSurfaceCreated()Z

    move-result p0

    return p0
.end method

.method public isHeifCaptureEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorTakePictureRequired()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isLastSettingsApplied()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;->isLastSettingsApplied()Z

    move-result p0

    return p0
.end method

.method public isLongTakePicture()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getEstimatedCaptureDuration()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isManualExposure()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isManualExposure()Z

    move-result p0

    return p0
.end method

.method public isMotionPhotoAudioRecordingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isAudioRecordingSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiCameraEffectProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result p0

    return p0
.end method

.method public isNightScreenFlashAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isNightScreenFlashAvailable()Z

    move-result p0

    return p0
.end method

.method public isPalmDetectionAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isPalmDetectionSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isHandGestureInVideoSupported()Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isPictureSaving()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getActiveCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getQueuedTaskCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

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

.method public isPreviewSurfaceCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->isPreviewSurfaceCreated()Z

    move-result p0

    return p0
.end method

.method public isRequestQueueEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isScreenFlashAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isScreenFlashAvailable()Z

    move-result p0

    return p0
.end method

.method public isShutterReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mIsShutterReceived:Z

    return p0
.end method

.method public isTorchFlashEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTorchFlashEnabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onEmpty$2$CommonEngine()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;->onEmpty()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$postToUiThread$3$CommonEngine(Ljava/lang/Runnable;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$setAdaptiveLensMode$4$CommonEngine(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAdaptiveLesnMode(I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ADAPTIVE_LENS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADAPTIVE_LENS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ADAPTIVE_LENS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$setSubCameraZoomValue$9$CommonEngine(IILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->getScalerCropRegion(II)Landroid/graphics/Rect;

    move-result-object p0

    int-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public notifyChangePreviewSurfaceSize()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isWaiting(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "ChangePreviewSurfaceSizeRequest"

    invoke-static {v1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface - ChangePreviewSurfaceSize : End["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_0
    return-void
.end method

.method public notifyChangeShootingModeCompleted()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method notifyCurrentDynamicShotCaptureDurationTime()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->notifyCurrentDynamicShotCaptureDurationTime()V

    return-void
.end method

.method notifyCurrentLightCondition()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->notifyCurrentLightCondition()V

    return-void
.end method

.method public notifyStartVideoRecordingPrepared()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public notifySwitchCameraPrepared()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public notifyWaitPreviewSurface()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->roundOrientation(I)I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOrientationChanged : newOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setDeviceOrientation(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->updateDexCameraOrientation(I)V

    :cond_1
    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraSettingChanged : key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GalaxyRaw/CommonEngine"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "setLiveHdr : Returned because shooting mode is not activated yet."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-nez p1, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, p2, :cond_4

    move p2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isLiveHdrSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->enableHdrStateCallback(Z)V

    :cond_5
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setLiveHdr(I)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->handleStorageChanged(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setLiveFocusDualCapture(I)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setScalerFlipMode(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onEmpty()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$RHriCkvRnk1xYevCr34Di6Mkc7s;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$RHriCkvRnk1xYevCr34Di6Mkc7s;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postToUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    if-nez v1, :cond_1

    const-string p0, "GalaxyRaw/CommonEngine"

    const-string p1, "postToUiThread : Can\'t handle runnable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$J8tZllsbInBb7HmOT02O7BeP6Xw;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$J8tZllsbInBb7HmOT02O7BeP6Xw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public prepareToStopEngine()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mShutterTimerManager:Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/ShutterTimerManagerImpl;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->prepareToStop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->release()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    if-eqz v1, :cond_1

    const-string v1, "GalaxyRaw/CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareToStopEngine : Runnable list size that are waiting to be executed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public processPicture()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->processPicture(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPicture - wrong capture type("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalaxyRaw/CommonEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :goto_0
    return-void
.end method

.method public reconnectMaker()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->connectMaker(I)V

    return-void
.end method

.method public registerAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->registerAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public registerBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->registerBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public registerCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->registerPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V

    return-void
.end method

.method public registerPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;->registerPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method public registerRequestQueueEmptyListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method requestShutterTimerCapture()V
    .locals 3

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "requestShutterTimerCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isScreenFlashRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isNightScreenFlashRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_NIGHT_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startCapture(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V

    return-void
.end method

.method public requestSlowMotionEventResult()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;->REQUEST_SLOWMOTION_EVENT_RESULT:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateCommand(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)V

    return-void
.end method

.method resetAeAfTriggerForTakingPicture()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public setAdaptiveLensMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$3P5EtIcd7FN2he-QBR2qjQbHQic;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$3P5EtIcd7FN2he-QBR2qjQbHQic;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setAeModeByFlashSetting(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setAeModeByFlashSetting(I)V

    return-void
.end method

.method public setCompositionGuideCommand(Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$CompositionGuideCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->COMPOSITION_GUIDE_COMMAND:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setCompositionGuideMode(Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$CompositionGuideMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->COMPOSITION_GUIDE_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setDbUpdateCompleteListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->setDbUpdateCompleteListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;)V

    return-void
.end method

.method public setDetectedSceneInfo([J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$RtRNc5Zadee-cgDg7A1EFOurvJo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$RtRNc5Zadee-cgDg7A1EFOurvJo;-><init>([J)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setEffectParameter(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public setEvCompensation(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evCompensationValue"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEvCompensationValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->EV_COMPENSATION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setFixedSurfaceSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->setFixedSurfaceSize(II)V

    return-void
.end method

.method public setFoodBlurPosition(Landroid/graphics/PointF;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->FOOD_SHOT_FOCUS_POSITION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setFrontPictureStreamType(I)V
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

    const-string v1, "setFrontPictureStreamType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isDynamicFovSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setFrontPictureStreamType : returned because dynamic field of view is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$4eqk15ObhAyw6D-mGwFUNS5vIEU;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$4eqk15ObhAyw6D-mGwFUNS5vIEU;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setHdrState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hdrState"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHdrState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->HDR_STATE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setHistogramUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mHistogramController:Lcom/samsung/android/app/galaxyraw/engine/HistogramController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->setHistogramUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;)V

    return-void
.end method

.method public setLabsCaptureMode(Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$LabsCaptureMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->LABS_CAPTURE_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setMakerEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;

    return-void
.end method

.method public setNightScreenFlashEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->setNightScreenFlashEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;)V

    return-void
.end method

.method public setOverheatLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOverheatLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getOverheatHintLevel(I)I

    move-result p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$YO9HRgB03XtY6KHO_l88GeTZF4Q;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$YO9HRgB03XtY6KHO_l88GeTZF4Q;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method setPrivateCommand(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_PRIVATE_COMMAND:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V
    .locals 2
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
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_PRIVATE_SETTING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPrivateSetting;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPrivateSetting;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public setQrCodeDetectionInterval(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQrCodeDetectionInterval : interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->QR_CODE_DETECTION_INTERVAL:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setScalerCropRegion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->setScalerCropRegion(I)V

    return-void
.end method

.method public setSceneDetectionMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneDetectionMode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->SCENE_DETECTION_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setScreenFlashEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->setScreenFlashEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;)V

    return-void
.end method

.method public setSelfieToneMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfieToneMode"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelfieToneMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$vMHyS1bV05zmYS-VZaf75T9PYa4;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$vMHyS1bV05zmYS-VZaf75T9PYa4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->BEAUTY_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setShutterReceived(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReceived"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mIsShutterReceived:Z

    return-void
.end method

.method public setSkinColorLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinColorLevel"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBeautyController:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setSkinColorLevel(I)V

    return-void
.end method

.method public setSkinSmoothnessLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinSmoothnessLevel"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBeautyController:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setSkinSmoothnessLevel(I)V

    return-void
.end method

.method public setSkinToneLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinToneLevel"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBeautyController:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->setSkinToneLevel(I)V

    return-void
.end method

.method public setSmartScanCorner([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_SCAN_MANUAL_CROP:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->SMART_SCAN_CORNER:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubCameraZoomValue(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubCameraZoomValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getSubCameraId(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SWITCH_TARGET_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$rOvtZ-GGgs5EzX9BThFOD7XuYXk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;II)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SWITCH_TARGET_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "It is not multi camera."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSuperNightShotMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superNightShotMode"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuperNightShotMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$bGd8pWcwoVFkQARVt0q_cX3aVHI;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$bGd8pWcwoVFkQARVt0q_cX3aVHI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setTargetZoomRatio(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->setTargetZoomRatio(F)V

    return-void
.end method

.method public setTorchFlashEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setTorchFlashEnabled(Z)V

    return-void
.end method

.method public shutdownEngine()V
    .locals 2

    const-string v0, "GalaxyRaw/CommonEngine"

    const-string v1, "shutdownEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->stop()V

    return-void
.end method

.method startAeAfTriggerForTakingPicture(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrecaptureAllowed"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setAeAfTriggerForTakingPicture(Z)V

    return-void
.end method

.method public startEffectProcessor()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->startEffectProcessor(Landroid/view/Surface;)V

    return-void
.end method

.method public startEngine()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launch - StartEngine : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->start()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->OPEN_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBeautyController:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBokehEffectController:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mHistogramController:Lcom/samsung/android/app/galaxyraw/engine/HistogramController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->registerListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->initialize()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->bindMakerService()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launch - StartEngine : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startMotionPhoto()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_0
    return-void
.end method

.method public startMultiCameraEffectProcessor()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->startProcessor(Landroid/view/Surface;)V

    return-void
.end method

.method public startNightScreenFlash()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->startNightScreenFlash()V

    return-void
.end method

.method public startScreenFlash()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mScreenFlashController:Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->startScreenFlash()V

    return-void
.end method

.method public startTransientCaptureStopTimer()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mStopTransientCapture:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mStopTransientCapture:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startTransientZooming()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->startTransientZooming()V

    return-void
.end method

.method public startZoomLock()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_ZOOM_LOCK:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public stopCapture(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopCapture : CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopCapture : Wrong argument ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->stopStitchingCapture()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->stopTakePicture()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public stopEngine()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit - StopEngine : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mStopTransientCapture:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mStopTransientCapture:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->unregisterListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBeautyController:Lcom/samsung/android/app/galaxyraw/engine/BeautyController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/BeautyController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBokehEffectController:Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/BokehEffectController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mHistogramController:Lcom/samsung/android/app/galaxyraw/engine/HistogramController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CLOSE_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->stop()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->unbindMakerService()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exit - StopEngine : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopMotionPhoto()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMotionPhotoController:Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->stopMotionPhoto()V

    return-void
.end method

.method public stopTransientZooming()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->stopTransientZooming(Z)V

    return-void
.end method

.method public switchCamera(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextCameraId"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->switchCameraInternal(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->connectMaker(I)V

    return-void
.end method

.method public switchMultiCameraFacing()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMutliCameraIdForSwitchFacing(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->UPDATE_MULTI_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SWITCH_MULTI_CAMERA_FACING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public switchMultiCameraFacingInternal()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mMultiCameraEffectController:Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->switchFacing()V

    return-void
.end method

.method public takeEffectPreviewSnapshot()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mEffectController:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->takePreviewSnapshot()V

    return-void
.end method

.method public takePreviewSnapshot(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->PREVIEW_CHANGE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->takePreviewSurfaceSnapshot()V

    :goto_0
    return-void
.end method

.method public takePreviewSurfaceSnapshot()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPreviewSurfaceManager:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->takePreviewSurfaceSnapshot()V

    return-void
.end method

.method public takeVideoSnapshot()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GalaxyRaw/CommonEngine"

    const-string v0, "takeVideoSnapshot : returned because it is already requested."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getTakePictureScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->start()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mZoomController:Lcom/samsung/android/app/galaxyraw/engine/ZoomController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/ZoomController;->stopTransientZooming(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueue:Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAgifCaptureController:Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->unregisterAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public unregisterBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mBurstCaptureController:Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->unregisterBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public unregisterCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->unregisterPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V

    return-void
.end method

.method public unregisterPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestEventManager:Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RequestEventManager;->unregisterPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method public unregisterRequestQueueEmptyListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateCaptureInfo(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPictureRequest"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateOrientationForCapture()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->updateCaptureInfo(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setTakePictureType()V

    :cond_0
    return-void
.end method

.method updateOrientationForCapture()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getFixedOrientationForCapture()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getFixedOrientationForCapture()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->roundOrientation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientation:I

    :goto_0
    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getSensorOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientationForCapture:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SCREEN_ORIENTATION:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientationForCapture:I

    goto :goto_1

    :cond_2
    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0xb4

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientationForCapture:I

    goto :goto_1

    :cond_3
    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientationForCapture:I

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOrientationForCapture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mLastOrientationForCapture:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalaxyRaw/CommonEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public waitAeAfTriggerStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->waitAeAfTriggerStateChanged()V

    return-void
.end method
