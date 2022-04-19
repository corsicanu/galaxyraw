.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;
.super Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
.source "CamDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private mArCoreRequestCnt:I

.field private final mBurstPictureCbMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCHSPreviewExtraRequestCnt:I

.field private mCHSRecordRequestCnt:I

.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mCamDeviceCaptureCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

.field private mCamDeviceReadyLatch:Ljava/util/concurrent/CountDownLatch;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private volatile mCaptureState:I

.field private final mContext:Landroid/content/Context;

.field private mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

.field private mFirstRecordRequestCnt:I

.field private mFirstRecordSurface:Landroid/view/Surface;

.field private final mId:Ljava/lang/String;

.field private final mInterfaceLock:Ljava/lang/Object;

.field private mIsClosed:Z

.field private final mIsSupportArCore:Z

.field private final mLastId:Ljava/lang/String;

.field private mLatestBurstRequestOptions:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

.field private mLatestPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

.field private mLatestPreviewTimestamp:J

.field private mLatestRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

.field private mLatestSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

.field private mMainCHSPreviewCbRequestCnt:I

.field private mMainCHSPreviewRequestCnt:I

.field private mMainPreviewCbRequestCnt:I

.field private mMainPreviewImageReader:Landroid/media/ImageReader;

.field private mMainPreviewRequestCnt:I

.field private mMainPreviewSurface:Landroid/view/Surface;

.field private final mMultiPictureCbMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPicImageReaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mPictureCbMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPictureDepthCbMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

.field private mPictureRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPictureRequestInfoMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewCbMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/ImageReader;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewDepthCbMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/ImageReader;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewDepthImageReader:Landroid/media/ImageReader;

.field private mPreviewDepthRequestCnt:I

.field private mPreviewExtraRequestCnt:I

.field private mPreviewExtraSurface:Landroid/view/Surface;

.field private mPreviewRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRepeatingBurstPicRecord:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

.field private final mRepeatingPicture:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

.field private final mRepeatingPreview:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

.field private final mRepeatingRecord:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

.field private mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

.field private final mRepeatingStopped:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

.field private mRequestBuildNumber:J

.field private mSecondRecordRequestCnt:I

.field private mSecondRecordSurface:Landroid/view/Surface;

.field private mSessionMode:I

.field private final mSessionStateCbMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedCamera:Lcom/google/ar/core/SharedCamera;

.field private final mSharedSession:Lcom/google/ar/core/Session;

.field private final mStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

.field private mSubCHSPreviewCbRequestCnt:I

.field private mSubPreviewCbRequestCnt:I

.field private mSubPreviewImageReader:Landroid/media/ImageReader;

.field private final mThumbnailCbMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

.field private final mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/ar/core/Session;Lcom/google/ar/core/SharedCamera;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "sharedSession",
            "sharedCamera",
            "callback",
            "camCapability",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;-><init>(Landroid/content/Context;Lcom/google/ar/core/Session;Lcom/google/ar/core/SharedCamera;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ar/core/Session;Lcom/google/ar/core/SharedCamera;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "sharedSession",
            "sharedCamera",
            "callback",
            "camCapability",
            "handler",
            "lastId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSessionStateCbMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewCbMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthCbMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureCbMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMultiPictureCbMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailCbMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mBurstPictureCbMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthCbMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureRequestInfoMappingTable:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingStopped:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingPreview:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingPicture:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateRecord;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateRecord;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingRecord:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateBurstPicRecord;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateBurstPicRecord;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingBurstPicRecord:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceCaptureCallbackList:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSessionMode:I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceReadyLatch:Ljava/util/concurrent/CountDownLatch;

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureState:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    :try_start_0
    const-string v2, "context"

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "callback"

    invoke-static {p4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "camCapability"

    invoke-static {p5, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLastId:Ljava/lang/String;

    if-nez p6, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p5

    if-nez p5, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string p2, "No handler given, and current thread has no looper!"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p6, Landroid/os/Handler;

    invoke-direct {p6, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_2
    invoke-static {p4, p6}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedSession:Lcom/google/ar/core/Session;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    move p2, p4

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->startBackgroundHandlerThread()V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    aput-object p7, p0, p4

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "CamDeviceImpl is created : Id %s, LastId %s, IsSupportArCore %b"

    invoke-static {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDeviceConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->getStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->getLastCameraId()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;-><init>(Landroid/content/Context;Lcom/google/ar/core/Session;Lcom/google/ar/core/SharedCamera;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSessionStateCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mBurstPictureCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsClosed:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceReadyLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLastId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    return-object p0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    return-object p0
.end method

.method private clearCamDeviceCaptureCallbacks()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceCaptureCallbackList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceCaptureCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->disableForwardCallback()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceCaptureCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clearDepthImageReaders()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPreviewDepthImageReader()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPictureDepthImageReader()V

    return-void
.end method

.method private clearMainPreviewImageReader()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewCbMappingTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "clearMainPreviewImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private clearPicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$nK0v4ZHjjrTWaOk0FvyMMFDLz7k;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$nK0v4ZHjjrTWaOk0FvyMMFDLz7k;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private clearPicImageReaders()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$mPKYbACvtQUEgnMzxiFXhU5paqQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$mPKYbACvtQUEgnMzxiFXhU5paqQ;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private clearPictureDepthImageReader()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "clearPictureDepthImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private clearPreviewDepthImageReader()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthCbMappingTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "clearPreviewDepthImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private clearPreviewImageReaders()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearMainPreviewImageReader()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearSubPreviewImageReader()V

    return-void
.end method

.method private clearSubPreviewImageReader()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewCbMappingTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "clearSubPreviewImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private clearThumbnailImageReader()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "clearThumbnailImageReader"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private createCaptureSessionInternal(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sessionConfig",
            "sessionMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    const-string v0, "Prepare-CreateCaptureSession"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->dump()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "createCaptureSessionInternal E"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->prepareCreateCaptureSession()V

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->surfaceConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getSurface()Landroid/view/Surface;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v8, "previewExtraSurfaceConfig %s "

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v4

    invoke-static {v7, v8, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getUseSharing()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v7, "highSpeedCaptureSession only support SurfaceSharing"

    invoke-static {v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getSurfaceSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getSurfaceSource()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getSurfaceSize()Landroid/util/Size;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    const-class v7, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v6, v2, v7}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v7, "previewExtraSurfaceConfig %s "

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v4

    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getUseSharing()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v6, "highSpeedCaptureSession only support SurfaceSharing"

    invoke-static {v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getFirstRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getFirstRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getFirstRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getSurface()Landroid/view/Surface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordSurface:Landroid/view/Surface;

    invoke-direct {p0, v8, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getFirstRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getFirstRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordSurface:Landroid/view/Surface;

    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getSecondRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getSecondRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getSecondRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getSurface()Landroid/view/Surface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordSurface:Landroid/view/Surface;

    invoke-direct {p0, v8, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getSecondRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->getSecondRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordSurface:Landroid/view/Surface;

    :goto_4
    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->previewCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePreviewImageReaders(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;)V

    if-nez p2, :cond_a

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReaders(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->depthCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->prepareDepthImageReaders(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->prepareThumbnailImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V

    goto :goto_5

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPicImageReaders()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearDepthImageReaders()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearThumbnailImageReader()V

    :goto_5
    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->getPreviewRequestBuilderMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->getPictureRequestBuilderMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureRequestBuilderMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->getRecordRequestBuilderMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V

    if-nez p2, :cond_c

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {v2}, Lcom/google/ar/core/SharedCamera;->getArCoreSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v8, Landroid/util/Pair;

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v6

    invoke-direct {v8, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Lcom/google/ar/core/SharedCamera;->createARSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v1

    :cond_c
    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->cameraParameter:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCameraParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;)V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "CreateCaptureSession"

    invoke-static {v2, v4}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    new-instance v6, Landroid/hardware/camera2/params/SessionConfiguration;

    if-nez p2, :cond_e

    goto :goto_8

    :cond_e
    move v4, v5

    :goto_8
    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$0bXg4zobFsu4ajgvvcJ8cwTGe8o;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$0bXg4zobFsu4ajgvvcJ8cwTGe8o;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    invoke-direct {v6, v4, v2, v5, v1}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->findBuilder(Ljava/util/Map;Landroid/util/Pair;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$Lq39aJrroUinRVCwTrPqr9JGenA;

    invoke-direct {v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$Lq39aJrroUinRVCwTrPqr9JGenA;-><init>(Landroid/hardware/camera2/params/SessionConfiguration;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSessionMode:I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "createCaptureSessionInternal X"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private createMainPreviewImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createMainPreviewImageReader"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->MAIN_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/ar/core/SharedCamera;->setAppSurfaces(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private createOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "klass",
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Landroid/hardware/camera2/params/OutputConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/hardware/camera2/params/OutputConfiguration;->semCreateOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->createOutputConfigurationForDeferred(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$5y1rs4CfmH_Bu_Qb_BVpUSP_lrQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$5y1rs4CfmH_Bu_Qb_BVpUSP_lrQ;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/OutputConfiguration;

    return-object p0
.end method

.method private createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surface",
            "option"
        }
    .end annotation

    const/4 p0, -0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->semCreateOutputConfiguration(ILandroid/view/Surface;II)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private createPicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureRequestType",
            "config",
            "imgCnt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils;->checkBlockingImageReader(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/util/Size;Ljava/lang/Integer;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string p1, "createPicImageReader - reuse(%s)"

    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->setPhysicalId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "createPicImageReader - create(%s, cnt:%d)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v4, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->getPicType()Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;

    invoke-direct {p2, p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->getImageReaderHandlerType(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private createPictureDepthImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils;->checkBlockingImageReader(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/util/Size;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createPictureDepthImageReader - reuse"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->setPhysicalId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPictureDepthImageReader()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createPictureDepthImageReader - create"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->PICTURE_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private createPreviewDepthImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createPreviewDepthImageReader"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x3

    invoke-static {v0, v1, p1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->PREVIEW_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private createSubPreviewImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createSubPreviewImageReader"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x3

    invoke-static {v0, v1, p1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->SUB_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private createThumbnailImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils;->checkBlockingImageReader(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/util/Size;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createThumbnailImageReader - reuse"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->setPhysicalId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearThumbnailImageReader()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createThumbnailImageReader - create"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicTypeImgAvailableCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->THUMBNAIL:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getImageReaderHandler(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$L6gGV7IwU3zvSr0j3xN2jFGlU50(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void
.end method

.method static synthetic lambda$createCaptureSessionInternal$1(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$createCaptureSessionInternal$3(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method static synthetic lambda$createOutputConfiguration$8()Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    return-object v0
.end method

.method public static synthetic lambda$mPKYbACvtQUEgnMzxiFXhU5paqQ(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V

    return-void
.end method

.method private prepareCreateCaptureSession()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getRepeatingState()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->getId()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareCreateCaptureSession - stopRepeating is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearCamDeviceCaptureCallbacks()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSessionStateCbMappingTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$6IoJBPlNb4GXZqSp2o8BxPEuoTY;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$6IoJBPlNb4GXZqSp2o8BxPEuoTY;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private prepareDepthImageReaders(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "depthCbConfigCollector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPreviewDepthImageReader()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPreviewDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidImageCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPreviewDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createPreviewDepthImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPreviewDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPreviewDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPreviewDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPictureDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidImageCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPictureDepthImageReader()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPictureDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createPictureDepthImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPictureDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPictureDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->getPictureDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureRequestType",
            "picCbConfigCollector",
            "imgCnt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->getPicFormat()Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->getPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidImageCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createPicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;I)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private preparePicImageReaders(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$AhRSMDl-0yjqDmXJ1MX3bWamknI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$AhRSMDl-0yjqDmXJ1MX3bWamknI;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->firstPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->FIRST_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    const/4 v2, 0x5

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->FIRST_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mYuvPictureImageReaderMaxImageCnt:I

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->FIRST_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRawPictureImageReaderMaxImageCnt:I

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->secondPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->SECOND_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->SECOND_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mYuvPictureImageReaderMaxImageCnt:I

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->SECOND_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRawPictureImageReaderMaxImageCnt:I

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thirdPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->THIRD_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-direct {p0, v0, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->THIRD_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mYuvPictureImageReaderMaxImageCnt:I

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->THIRD_RAW:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRawPictureImageReaderMaxImageCnt:I

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->preparePicImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;I)V

    return-void
.end method

.method private preparePreviewImageReaders(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewCbConfigCollector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearMainPreviewImageReader()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getMainPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidImageCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getMainPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createMainPreviewImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getMainPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getMainPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getMainPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearSubPreviewImageReader()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getSubPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidImageCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getSubPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createSubPreviewImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getSubPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getSubPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->getSubPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private prepareThumbnailImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidImageCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearThumbnailImageReader()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createThumbnailImageReader(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mOutputConfigurationList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getStreamOption()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createOutputConfiguration(Landroid/view/Surface;I)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private setCameraParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "raw params"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraParameter - rawParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->applyToCameraDevice(Landroid/hardware/camera2/CameraDevice;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputConfig",
            "physicalId"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    return-object p1
.end method

.method private setSessionMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSessionMode - sessionMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSessionMode:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startPreviewRepeatingInternal(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;Z)I
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "previewStateCallback",
            "isHighSpeedRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "startPreviewRepeatingInternal E - mainPreviewCb %d, subPreviewCb %d, mainPreview %d, previewDepth %d, arCore %d, extra %d, Cb %s, isHighSpeedRequests %b"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v3, v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewRequestCnt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewDepthRequestCnt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getArCoreRequestCnt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v10

    :goto_1
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewDepthRequestCnt()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v10

    :goto_2
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_DEPTH_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    move v5, v10

    :goto_3
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_EXTRA_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v5, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewRequestCnt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewDepthRequestCnt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getArCoreRequestCnt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v15

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_4

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v17

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v10, v4

    move/from16 v4, v16

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    move-object/from16 v6, v18

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object v6, v5

    :goto_4
    if-lez v11, :cond_5

    new-instance v10, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v7, v6

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object v7, v6

    :goto_5
    if-lez v12, :cond_7

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_6

    new-instance v10, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "startPreviewRepeatingInternal - mMainPreviewSurface is null, may be in deferred preview surface case"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_7
    :goto_6
    if-nez v8, :cond_a

    if-lez v13, :cond_8

    new-instance v10, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-lez v14, :cond_a

    iget-boolean v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {v1}, Lcom/google/ar/core/SharedCamera;->getArCoreSurfaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/Surface;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v2, "arCoreRequestCnt must be zero in normal camDevice"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0

    :cond_a
    if-lez v15, :cond_b

    new-instance v10, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    move-object v1, v10

    move-object/from16 v2, p0

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v7, v3, v1, v2, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->createCaptureRequestGroup(Ljava/util/List;IJZ)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;

    move-object/from16 v3, p2

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V

    if-nez v8, :cond_c

    iget-boolean v4, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getArCoreRequestCnt()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/google/ar/core/SharedCamera;->setCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    :try_start_3
    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->getCaptureRequestList()Ljava/util/List;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->registerCamDeviceCaptureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;)V

    iput-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingPreview:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewRepeatingInternal X - sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v9

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private startRecordRepeatingInternal(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;Z)I
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "recordStateCallback",
            "isHighSpeedRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p3

    iget-object v9, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "startRecordRepeatingInternal E - firstRecord %d, secondRecord %d, mainPreviewCb %d, subPreviewCb %d, mainPreview %d, extra %d, Cb %s, isHighSpeedRequests %b"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getFirstRecordRequestCnt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v3, v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSecondRecordRequestCnt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v3, v11

    const/4 v4, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewRequestCnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    iget-object v2, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-boolean v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getFirstRecordRequestCnt()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v11

    goto :goto_1

    :cond_1
    move v1, v10

    :goto_1
    iget-object v2, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordSurface:Landroid/view/Surface;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSecondRecordRequestCnt()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v11

    goto :goto_2

    :cond_2
    move v1, v10

    :goto_2
    iget-object v2, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordSurface:Landroid/view/Surface;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v11

    goto :goto_3

    :cond_3
    move v1, v10

    :goto_3
    iget-object v2, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v11

    goto :goto_4

    :cond_4
    move v1, v10

    :goto_4
    iget-object v2, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v11

    goto :goto_5

    :cond_5
    move v1, v10

    :goto_5
    iget-object v2, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_EXTRA_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getFirstRecordRequestCnt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSecondRecordRequestCnt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewRequestCnt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v16

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_6

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    const/16 v17, 0x1

    iget-object v2, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordSurface:Landroid/view/Surface;

    move-object v1, v4

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object v11, v4

    move/from16 v4, v17

    move-object v10, v5

    move-object/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    move-object v10, v5

    :goto_6
    if-lez v12, :cond_7

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v5, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordSurface:Landroid/view/Surface;

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-lez v13, :cond_b

    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_a

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v8, :cond_8

    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    goto :goto_7

    :cond_8
    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    :goto_7
    move-object v3, v1

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    iget-object v5, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "startRecordRepeatingInternal - mMainPreviewSurface is null, may be in deferred preview surface case"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_b
    :goto_9
    if-lez v14, :cond_e

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v8, :cond_c

    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    goto :goto_a

    :cond_c
    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    :goto_a
    move-object v3, v1

    if-eqz v8, :cond_d

    const/4 v4, 0x1

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-lez v15, :cond_11

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v8, :cond_f

    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    goto :goto_c

    :cond_f
    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    :goto_c
    move-object v3, v1

    if-eqz v8, :cond_10

    const/4 v4, 0x1

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    :goto_d
    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v11

    move-object/from16 v2, p0

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    if-lez v16, :cond_14

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    if-eqz v8, :cond_12

    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    goto :goto_e

    :cond_12
    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    :goto_e
    move-object v3, v1

    if-eqz v8, :cond_13

    const/4 v4, 0x1

    goto :goto_f

    :cond_13
    const/4 v4, 0x0

    :goto_f
    iget-object v5, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v10, v3, v1, v2, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->createCaptureRequestGroup(Ljava/util/List;IJZ)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRecCaptureCallback;

    invoke-direct {v2, v7, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRecCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->getCaptureRequestList()Ljava/util/List;

    move-result-object v1

    iget-object v4, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v7, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->registerCamDeviceCaptureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;)V

    iput-object v0, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    iget-object v0, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingRecord:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V

    iget-object v0, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecordRepeatingInternal X - sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v9

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v1

    :catch_3
    move-exception v0

    iget-object v1, v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecordRepeatingInternal - CamDeviceCaptureRequestGroup.createCaptureRequestGroup is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v2, "startRecordRepeatingInternal isn\'t supported in ArCoreCamDevice"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method


# virtual methods
.method public addMainPreviewSurface(Landroid/view/Surface;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewSurface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    const-string v0, "mainPreviewSurface"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMainPreviewSurface - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_DEFERRED_PREVIEW_OUTPUT_CONFIGURATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public applySettings()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->applySettings()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySettings -  sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v1, "applySettings isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "close E - cameraDevice(%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsClosed:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "close - CamDevice is closed already"

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsClosed:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingStopped:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearCamDeviceCaptureCallbacks()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSessionStateCbMappingTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    :cond_2
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$sDevV4_0Fy3B_aM5njGy_EURZzY;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$sDevV4_0Fy3B_aM5njGy_EURZzY;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "post SessionCallback(onDeviceClosed) fail - post fail"

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "post SessionCallback(onDeviceClosed) fail - postHandler is null"

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$L6gGV7IwU3zvSr0j3xN2jFGlU50;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$L6gGV7IwU3zvSr0j3xN2jFGlU50;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mDeferredPreviewOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordSurface:Landroid/view/Surface;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordSurface:Landroid/view/Surface;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->stopImageReaderHandlerThread()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->stopBackgroundHandlerThread()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPreviewImageReaders()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearPicImageReaders()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearDepthImageReaders()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearThumbnailImageReader()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewCbMappingTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureCbMappingTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mBurstPictureCbMappingTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthCbMappingTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthCbMappingTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailCbMappingTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "close X"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public closeCaptureSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "closeCaptureSession"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingStopped:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->clearCamDeviceCaptureCallbacks()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createCaptureSession(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "sessionConfig"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    const-string v1, "sessionConfig.callback"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createCaptureSessionInternal(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;I)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createHighSpeedCaptureSession(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "sessionConfig"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    const-string v1, "sessionConfig.callback"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createCaptureSessionInternal(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;I)V

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v0, "highSpeedCaptureSession isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method createPreviewCaptureRequestList(Ljava/util/Map;Z)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputMeta",
            "isHighSpeedRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v7, p2

    iget-object v8, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    :try_start_0
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewCbRequestCnt:I

    move v6, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewCbRequestCnt:I

    if-lez v1, :cond_1

    move v6, v9

    goto :goto_0

    :cond_1
    move v6, v10

    :goto_0
    if-eqz v7, :cond_2

    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubCHSPreviewCbRequestCnt:I

    move v11, v1

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewCbRequestCnt:I

    if-lez v1, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    move v11, v10

    :goto_1
    if-eqz v7, :cond_4

    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewRequestCnt:I

    move v12, v1

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewRequestCnt:I

    if-lez v1, :cond_5

    move v12, v9

    goto :goto_2

    :cond_5
    move v12, v10

    :goto_2
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v6, :cond_6

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    :cond_6
    if-lez v11, :cond_7

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_8

    new-instance v14, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v14

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-lez v11, :cond_9

    new-instance v14, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v14

    move-object v2, p0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-lez v12, :cond_b

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_a

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    move-object v1, v11

    move-object v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "createPreviewCaptureRequestList - mMainPreviewSurface is null, may be in deferred preview surface case"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_b
    :goto_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v6, v11}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->get(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_c
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v2

    invoke-static {v13, v10, v2, v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->createCaptureRequestGroup(Ljava/util/List;IJZ)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewRequestBuilderMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createPreviewCaptureRequestList - captureRequest list size %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->getCaptureRequestList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->getCaptureRequestList()Ljava/util/List;

    move-result-object v0

    monitor-exit v8

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method createRecordCaptureRequestList(Ljava/util/Map;Z)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputMeta",
            "isHighSpeedRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p2

    iget-object v8, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    :try_start_0
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCHSRecordRequestCnt:I

    move v6, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordRequestCnt:I

    if-lez v1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v10

    :goto_0
    if-eqz v7, :cond_3

    :cond_2
    move v11, v10

    goto :goto_1

    :cond_3
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordRequestCnt:I

    if-lez v1, :cond_2

    const/4 v11, 0x1

    :goto_1
    if-eqz v7, :cond_4

    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewCbRequestCnt:I

    move v12, v1

    goto :goto_2

    :cond_4
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewCbRequestCnt:I

    if-lez v1, :cond_5

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    move v12, v10

    :goto_2
    if-eqz v7, :cond_6

    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubCHSPreviewCbRequestCnt:I

    move v13, v1

    goto :goto_3

    :cond_6
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewCbRequestCnt:I

    if-lez v1, :cond_7

    const/4 v13, 0x1

    goto :goto_3

    :cond_7
    move v13, v10

    :goto_3
    if-eqz v7, :cond_8

    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewRequestCnt:I

    move v14, v1

    goto :goto_4

    :cond_8
    iget v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewRequestCnt:I

    if-lez v1, :cond_9

    const/4 v14, 0x1

    goto :goto_4

    :cond_9
    move v14, v10

    :goto_4
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v6, :cond_a

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v10

    :goto_5
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordSurface:Landroid/view/Surface;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v11, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v10

    :goto_6
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordSurface:Landroid/view/Surface;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_RECORD_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v12, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v10

    :goto_7
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    if-lez v13, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    move v1, v10

    :goto_8
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(ZLjava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_e

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordSurface:Landroid/view/Surface;

    move-object v1, v5

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    move-object v9, v5

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-lez v11, :cond_f

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordSurface:Landroid/view/Surface;

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    if-lez v12, :cond_10

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    if-lez v13, :cond_11

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    if-lez v14, :cond_13

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_12

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    move-object v1, v9

    move-object/from16 v2, p0

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILandroid/view/Surface;I)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "createRecordCaptureRequestList - mMainPreviewSurface is null, may be in deferred preview surface case"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_13
    :goto_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v6, v9}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->get(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :cond_14
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v2

    invoke-static {v15, v10, v2, v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->createCaptureRequestGroup(Ljava/util/List;IJZ)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_b

    :cond_15
    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createRecordCaptureRequestList - captureRequest list size %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->getCaptureRequestList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureRequestGroup;->getCaptureRequestList()Ljava/util/List;

    move-result-object v0

    monitor-exit v8

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public createRequestBuilder(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDeviceTemplate",
            "physicalCameraIdSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "createRequestBuilder Template %d IdSet %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method getAndIncreaseRequestBuildNumber()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRequestBuildNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRequestBuildNumber:J

    return-wide v0
.end method

.method public getArCoreShareCamera()Lcom/google/ar/core/SharedCamera;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    return-object p0
.end method

.method public getArCoreSharedSession()Lcom/google/ar/core/Session;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSharedSession:Lcom/google/ar/core/Session;

    return-object p0
.end method

.method getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method getBurstPictureCbMappingTable()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mBurstPictureCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method public getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    return-object p0
.end method

.method public getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method getCaptureCallbackHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getCaptureCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public getCaptureState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureState:I

    return p0
.end method

.method getFirstRecordSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mId:Ljava/lang/String;

    return-object p0
.end method

.method getLatestBurstRequestOptions()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestBurstRequestOptions:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    return-object p0
.end method

.method getLatestPreviewStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    return-object p0
.end method

.method getLatestPreviewTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestPreviewTimestamp:J

    return-wide v0
.end method

.method getLatestRecordStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    return-object p0
.end method

.method getMainPreviewCbRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewCbRequestCnt:I

    return p0
.end method

.method getMainPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method getMainPreviewRequestCnt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewRequestCnt:I

    return p0
.end method

.method getMainPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getMultiPictureCbMappingTable()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMultiPictureCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method getPicImageReaderMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    return-object p0
.end method

.method getPictureCbMappingTable()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method getPictureDepthCbMappingTable()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getPictureRequestBuilderMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureRequestBuilderMap:Ljava/util/Map;

    return-object p0
.end method

.method getPictureRequestInfoMappingTable()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureRequestInfoMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method getPreviewCbMappingTable()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/media/ImageReader;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method getPreviewDepthCbMappingTable()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/media/ImageReader;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method getPreviewExtraSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getRecordRequestBuilderMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRecordRequestBuilderMap:Ljava/util/Map;

    return-object p0
.end method

.method getRepeatingBurstPicRecord()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingBurstPicRecord:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    return-object p0
.end method

.method public getRepeatingState()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getRepeatingStatePicture()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingPicture:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    return-object p0
.end method

.method getRepeatingStatePreview()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingPreview:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    return-object p0
.end method

.method getRepeatingStateRecord()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingRecord:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    return-object p0
.end method

.method getRepeatingStateStopped()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingStopped:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    return-object p0
.end method

.method getSecondRecordSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getSendPictureHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method getSendShutterHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendShutterHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method getSessionMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSessionMode:I

    return p0
.end method

.method getStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    return-object p0
.end method

.method getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object p0
.end method

.method getThumbnailCbMappingTable()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailCbMappingTable:Ljava/util/Map;

    return-object p0
.end method

.method getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailImageReader:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getTimestampToPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-object p0
.end method

.method public isSupportArCore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    return p0
.end method

.method public synthetic lambda$clearPicImageReader$4$CamDeviceImpl(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "clearPicImageReader %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->close()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPicImageReaderMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$close$0$CamDeviceImpl(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "post SessionCallback(onDeviceClosed)"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;->onDeviceClosed()V

    return-void
.end method

.method public synthetic lambda$createCaptureSessionInternal$2$CamDeviceImpl(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$LILg6X9l58qLIeOHCX1dMa4tkiU;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$LILg6X9l58qLIeOHCX1dMa4tkiU;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$prepareCreateCaptureSession$5$CamDeviceImpl(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "post SessionCallback(onDisconnected) - session(%s)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;->onDisconnected()V

    return-void
.end method

.method public synthetic lambda$prepareCreateCaptureSession$6$CamDeviceImpl(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$3clHm3qyHG0OxKd9vDUvGrdZRGA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "post SessionCallback(onDisconnected) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "post SessionCallback(onDisconnected) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$preparePicImageReaders$7$CamDeviceImpl(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getMaxBufferNumOfYuvImageReader()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mYuvPictureImageReaderMaxImageCnt:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getMaxBufferCountOfRawImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRawPictureImageReaderMaxImageCnt:I

    return-void
.end method

.method public prepareSurface(Landroid/view/Surface;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "prepareSurface"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSurface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->prepare(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method registerCamDeviceCaptureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDeviceCaptureCallback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceCaptureCallbackList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceCaptureCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method restartHighSpeedRecordRepeatingInternal()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "restartHighSpeedRecordRepeatingInternal"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find recordStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->create()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCHSRecordRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setFirstRecordRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewCbRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubCHSPreviewCbRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setSubPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCHSPreviewExtraRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setPreviewExtraRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->startHighSpeedRecordRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restartPreviewRepeating()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "restartPreviewRepeating"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->restartPreviewRepeating()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v1, "restartPreviewRepeating isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method restartPreviewRepeatingInternal()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "restartPreviewRepeatingInternal"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find previewStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->create()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewCbRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubCHSPreviewCbRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setSubPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCHSPreviewExtraRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setPreviewExtraRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->startHighSpeedPreviewRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->create()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewCbRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewCbRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setSubPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setPreviewDepthRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mArCoreRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setArCoreRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setPreviewExtraRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->startPreviewRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method restartRecordRepeatingInternal()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "restartRecordRepeatingInternal"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find recordStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->create()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setFirstRecordRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setSecondRecordRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewCbRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewCbRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setSubPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraRequestCnt:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setPreviewExtraRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->startRecordRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method sendPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureData"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceHandlerManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->sendPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method public setAePreCaptureTrigger(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setAePreCaptureTrigger(%d) - sequenceId %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->setAePreCaptureTrigger(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v0, "setAePreCaptureTrigger isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public setAfAndAePreCaptureTrigger(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "afTrigger",
            "aePreCaptureTrigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setAfAndAePreCaptureTrigger(%d)(%d) - sequenceId %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->setAfAndAePreCaptureTrigger(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string p2, "setAfAndAePreCaptureTrigger isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public setAfTrigger(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setAfTrigger(%d) - sequenceId %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->setAfTrigger(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v0, "setAfTrigger isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public setBurstPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setBurstPictureCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mBurstPictureCbMappingTable:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method setCamDeviceReadyLatchEnable()Ljava/util/concurrent/CountDownLatch;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceReadyLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceReadyLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceReadyLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public setCameraAudioRestriction(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraAudioRestriction - mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "cameraDevice"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method setCaptureState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureState"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureState - captureState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureState:I

    return-void
.end method

.method setLatestPreviewTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestPreviewTimestamp:J

    return-void
.end method

.method public setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewImageReader:Landroid/media/ImageReader;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setMainPreviewCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewCbMappingTable:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setMultiPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setMultiPictureCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMultiPictureCbMappingTable:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    :try_start_0
    const-string v0, "parameters"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v2, "cameraDevice"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->setParameters(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setPictureCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureCbMappingTable:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setPictureDepthCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setPictureDepthCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPictureDepthCbMappingTable:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setPreviewDepthCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthImageReader:Landroid/media/ImageReader;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setPreviewDepthCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthCbMappingTable:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatingState"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatingState - repeatingState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewImageReader:Landroid/media/ImageReader;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setSubPreviewCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewCbMappingTable:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setThumbnailCallback(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mThumbnailCbMappingTable:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 6
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
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "setTrigger %s : %s - sequenceId : %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string p2, "setTrigger isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public startBurstPicRecordRepeating(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestOptionsList",
            "recordStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "startBurstPicRecordRepeating E - requestOptionsList size %d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v7, "    startBurstPicRecordRepeating - requestOptionsList(%d) - %s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v4, v8, v3

    invoke-static {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->startBurstPicRecordRepeating(Ljava/util/List;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBurstPicRecordRepeating X - sequenceId "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string p2, "startBurstPicRecordRepeating isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public startBurstPictureRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "startBurstPictureRepeating E - requestOptions %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mLatestBurstRequestOptions:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->startBurstPictureRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBurstPictureRepeating X - sequenceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v0, "startBurstPictureRepeating isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public startHighSpeedPreviewRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "previewStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mIsSupportArCore:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewCbRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubCHSPreviewCbRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCHSPreviewExtraRequestCnt:I

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->startPreviewRepeatingInternal(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;Z)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->UNSUPPORTED_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string p2, "startHighSpeedPreviewRepeating isn\'t supported in ArCoreCamDevice"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string p2, "sessionMode is not highSpeed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public startHighSpeedRecordRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "recordStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getFirstRecordRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCHSRecordRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainCHSPreviewCbRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubCHSPreviewCbRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCHSPreviewExtraRequestCnt:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->startRecordRepeatingInternal(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;Z)I

    move-result p0

    return p0
.end method

.method public startPreviewRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "previewStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewCbRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewCbRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewDepthRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewDepthRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getArCoreRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mArCoreRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraRequestCnt:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->startPreviewRepeatingInternal(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;Z)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string p2, "sessionMode is highSpeed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public startRecordRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "recordStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getFirstRecordRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mFirstRecordRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSecondRecordRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSecondRecordRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getMainPreviewCbRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mMainPreviewCbRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getSubPreviewCbRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mSubPreviewCbRequestCnt:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->getPreviewExtraRequestCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mPreviewExtraRequestCnt:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->startRecordRepeatingInternal(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;Z)I

    move-result p0

    return p0
.end method

.method public stopBurstPicRecordRepeating()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->stopBurstPicRecordRepeating()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopBurstPicRecordRepeating - sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopBurstPictureRepeating()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->stopBurstPictureRepeating()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopBurstPictureRepeating - sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopRepeating()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "stopRepeating"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->stopRepeating()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public takeMultiPicture(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptionsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "takeMultiPicture - requestOptionsList size %d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v7, "    takeMultiPicture - requestOptionsList(%d) - %s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v4, v8, v3

    invoke-static {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->takeMultiPicture(Ljava/util/List;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takeMultiPicture - sequenceId %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public takePicture(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "takePicture - requestOptions %s sequenceId %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mRepeatingState:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->takePicture(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "%s(%s) - id(%s) - CameraDevice(%s)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unregisterCamDeviceCaptureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDeviceCaptureCallback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceCaptureCallbackList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->disableForwardCallback()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->mCamDeviceCaptureCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
