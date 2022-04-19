.class Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;
.super Ljava/lang/Object;
.source "RecordingManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;


# static fields
.field private static final CHECK_RECORDING_TICK_TIME_INTERVAL:I = 0x64

.field private static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field private static final TAG:Ljava/lang/String; = "RecordingManagerImpl"


# instance fields
.field private final mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mCurrentPreparedStorage:I

.field private mCurrentRecordingFileSizeInKb:J

.field private mCurrentRecordingFileTimeInMs:J

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mInitialRecordingFacing:I

.field private mIsNeedToRestoreTorchSetting:Z

.field private mIsNeedToRestoreTorchSettingForRecording:Z

.field private mIsNoInputFrameError:Z

.field private mIsRecordingFailedByVideoCapability:Z

.field private mIsRecordingFailedByWifiDisplayNotAllowed:Z

.field private mIsRecordingTimeLimitedByLowStorage:Z

.field private mIsRecordingTimeLimitedByProfile:Z

.field private mIsRecordingTimeLimitedBySystem:Z

.field private mIsRestartingRecordingByEsdError:Z

.field private mIsShownCallingToast:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLocation:Landroid/location/Location;

.field private mMaxRecordingTimeLimitInMs:I

.field private mMaxVideoFileSize:J

.field private final mMediaRecorderPrepareLock:Ljava/lang/Object;

.field private mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

.field private final mMediaRecorderReleaseLock:Ljava/lang/Object;

.field private mPreviousBackZoomValue:I

.field private mPreviousFrontZoomValue:I

.field private mPreviousRecordingTimeInMs:J

.field private mPreviousSuperSteadyZoomType:I

.field private mPreviousTorchSetting:I

.field private mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

.field private mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

.field private final mRecordingSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;

.field private mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

.field private final mRecordingTickRunnable:Ljava/lang/Runnable;

.field private final mSuperSlowMotionRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;

.field private mTickInterval:I

.field private mTorchSettingForQuickTakeRecording:I

.field private mTotalRecordingTimeInMs:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "aeAfManager"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderReleaseLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderPrepareLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByLowStorage:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByProfile:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsShownCallingToast:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTickInterval:I

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$1;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNoInputFrameError:Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$2;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->handleWiredHeadsetPluggedIn()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->onRecordingRestricted(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTickInterval:I

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method private buildMediaRecorderProfile(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result v7

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    new-instance v2, Landroid/util/Range;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMinFps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailableEffectRecordingFpsRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result v1

    :goto_0
    move v8, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v9

    new-instance v10, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHevcEnabled()Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v6

    move-object v1, v10

    move-object v2, p1

    move v3, v8

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;IZZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildMediaRecorderProfile - resolution ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], effect processor ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordingManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHevcEnabled()Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v10, v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->videoEncoder(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v1

    const/16 v3, 0xa

    if-eqz v1, :cond_3

    invoke-virtual {v10, v3}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->recordingMode(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->recordingMode(I)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    if-ge v8, v7, :cond_5

    invoke-virtual {v10, v8}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v10, v7}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->captureRate(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getMediaRecorderProfile(I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v6, "recordingBitrate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, v2

    goto :goto_4

    :sswitch_1
    const-string v6, "recordingAudioBitrate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x4

    goto :goto_4

    :sswitch_2
    const-string v6, "recordingMode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v5, 0x3

    goto :goto_4

    :sswitch_3
    const-string v6, "recordingAudioDisable"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x2

    goto :goto_4

    :sswitch_4
    const-string v6, "recordingAudioSamplingRate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    move v5, v7

    goto :goto_4

    :sswitch_5
    const-string v6, "recordingFps"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    const/4 v5, 0x0

    :goto_4
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->videoEncodingBitrate(I)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->audioEncodingBitrate(I)V

    goto :goto_3

    :pswitch_2
    const/4 v4, 0x7

    if-ne v1, v4, :cond_f

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isSuperSlowMotionSupported()Z

    move-result v4

    const/16 v5, 0x9

    if-eqz v4, :cond_d

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_FRC_FIXED:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result v4

    if-ne v4, v7, :cond_e

    :cond_d
    move v1, v5

    :cond_e
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->recordingMode(I)V

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->disableAudioEncoding()V

    goto/16 :goto_3

    :cond_f
    const/16 v4, 0x10

    if-ne v1, v4, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    move v1, v3

    :cond_10
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->recordingMode(I)V

    goto/16 :goto_3

    :cond_11
    const/16 v4, 0xd

    if-eq v1, v4, :cond_13

    const/16 v4, 0xc

    if-ne v1, v4, :cond_12

    goto :goto_5

    :cond_12
    if-ne v1, v2, :cond_6

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->recordingMode(I)V

    goto/16 :goto_3

    :cond_13
    :goto_5
    invoke-direct {p0, p1, v10}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->buildProfileForSlowMotion(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;)V

    goto/16 :goto_3

    :pswitch_3
    if-ne v1, v7, :cond_6

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->disableAudioEncoding()V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->audioSamplingRate(I)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    goto/16 :goto_3

    :cond_14
    if-eqz v9, :cond_15

    invoke-direct {p0, v10}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateAttachVideoProfile(Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;)V

    :cond_15
    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->build()Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cf6fac8 -> :sswitch_5
        -0x4ec59994 -> :sswitch_4
        -0x46664d3d -> :sswitch_3
        -0x31e534cc -> :sswitch_2
        0x4fe30b48 -> :sswitch_1
        0x50cc343c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildProfileForSlowMotion(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "builder"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x16e3600

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;->videoEncodingBitrate(I)V

    goto :goto_0

    :cond_0
    const v0, 0x895440

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;->videoEncodingBitrate(I)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x78

    const/16 v2, 0xd

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;->recordingMode(I)V

    invoke-interface {p2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;->captureRate(I)V

    goto :goto_1

    :cond_1
    const/16 p0, 0xc

    invoke-interface {p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;->recordingMode(I)V

    const/16 p0, 0xf0

    invoke-interface {p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;->captureRate(I)V

    goto :goto_1

    :cond_2
    invoke-interface {p2, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;->recordingMode(I)V

    invoke-interface {p2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;->captureRate(I)V

    :goto_1
    return-void
.end method

.method private changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeRecordingState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    return-void
.end method

.method private checkRecordingSessionCreateCondition()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNumberOfMediaRecorder()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNumberOfMediaRecorder()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private checkRequestedAttachSize()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    :goto_1
    add-int/2addr v2, v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result v0

    if-ne v0, v1, :cond_2

    int-to-float v0, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    float-to-int v2, v0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long p0, v3, v5

    if-gez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkRequestedAttachSize - size limit failed. finish. requestedRecordingSizeLimit : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", minBytesToRecordOneSec : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RecordingManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method private cleanupTempFiles(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRestarting"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNextFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNextFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mTempVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->cleanupTempFile()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->cleanupTempFile()V

    return-void
.end method

.method private clearFileResources()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->resetMediaRecorder()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->closeFileDescriptor()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->cleanupTempFiles(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->cleanupFile()V

    return-void
.end method

.method private createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "storage",
            "mimeString",
            "fileInfo",
            "title"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->createVideoDirectory(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string p1, "recording directory make fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, "video/3gpp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ".3gp"

    goto :goto_0

    :cond_1
    const-string p2, ".mp4"

    const-string p1, "video/mp4"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->regenerateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p4, "/"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setDisplayName(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setMimeType(Ljava/lang/String;)V

    return-object p0
.end method

.method private getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMaxRecordingTimeLimitBySystem(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fps",
            "recordingMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    const/16 v1, 0xc

    if-eq p2, v1, :cond_1

    const/16 v1, 0xd

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getRecordingTimeLimit(Landroid/util/Size;I)I

    move-result p0

    :goto_0
    mul-int/lit16 p0, p0, 0x3e8

    return p0

    :cond_1
    :goto_1
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getHighSpeedRecordingTimeLimit(Landroid/util/Size;I)I

    move-result p0

    goto :goto_0
.end method

.method private getMediaBitrate()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v1

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private getVideoMimeString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFormat"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string p0, "video/mp4"

    return-object p0

    :cond_0
    const-string p0, "video/3gpp"

    return-object p0
.end method

.method private handleRecordingError(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRecordingError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->releaseMediaRecorder()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->onMediaRecorderReleased()V

    const/16 v0, -0xb

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "handleRecordingError - Unknown Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    const-string v2, "Return, camera is finishing"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onCancelRecordingRequested()V

    goto/16 :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    if-eqz p1, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onCancelRecordingRequested()V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ERROR_RECORDING_START_FAIL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->clearFileResources()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$9jh3wrpzGbjCoYKGGjiK37ibA_M;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$9jh3wrpzGbjCoYKGGjiK37ibA_M;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$0dVpCYbdk2xZWpf7OtM-LHs8Ifk;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$0dVpCYbdk2xZWpf7OtM-LHs8Ifk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleWiredHeadsetPluggedIn()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f1203e4

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f1203e5

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private isHevcEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRequestedFileUriForAttachMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSetFlipModeRequired(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "facing"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SAVE_AS_FLIPPED_IN_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilter()I

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$resetFlipMode$16(IILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getScalerFlipMode(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getScalerFlipMode(I)I

    move-result p0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetFlipMode : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v0
.end method

.method static synthetic lambda$setFpsRange$7(Landroid/util/Range;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$setMultiRecordingView$8([Landroid/hardware/camera2/params/MeteringRectangle;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_MULTIVIEW_CROP_ROI:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$setRecordingMotionSpeed$9(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_RECORDING_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getRecordingMotionSpeed(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_RECORDING_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getRecordingMotionSpeed(I)I

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

.method static synthetic lambda$setRecordingOverheatLevel$10(ILcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SSRM_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SSRM_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private notifyRecordingInfo(Z)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isStarting"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    if-nez v1, :cond_0

    const-string v0, "RecordingManagerImpl"

    const-string v1, "notifyRecordingInfo return - MediaRecorder is not prepared yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v12, 0x3c

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-ne v1, v12, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz p1, :cond_7

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v6

    if-ne v6, v4, :cond_2

    move v13, v5

    goto :goto_1

    :cond_2
    move v13, v4

    :goto_1
    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getHdr()I

    move-result v14

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v15

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_4

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_4

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v6

    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v16, v5

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v16, v4

    :goto_3
    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v10

    const-string v4, "Camera_recording_UHD60fps"

    move v6, v13

    move v7, v14

    move v8, v15

    move-object v9, v2

    move/from16 v11, v16

    invoke-static/range {v3 .. v11}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;ZZ)V

    :cond_5
    if-lt v1, v12, :cond_6

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v10

    const-string v4, "Camera_recording_over_60fps"

    move v6, v13

    move v7, v14

    move v8, v15

    move-object v9, v2

    move/from16 v11, v16

    invoke-static/range {v3 .. v11}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;ZZ)V

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v10

    const-string v4, "Camera_recording"

    move v6, v13

    move v7, v14

    move v8, v15

    move-object v9, v2

    move/from16 v11, v16

    invoke-static/range {v3 .. v11}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;ZZ)V

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Camera_recording_UHD60fps"

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_8
    if-lt v1, v12, :cond_9

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording_over_60fps"

    invoke-static {v1, v2, v5}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_9
    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording"

    invoke-static {v0, v1, v5}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_4
    return-void
.end method

.method private onMaxFileSizeApproaching()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isUnlimitedVideoFileSizeSupported(I)Z

    move-result v0

    const-string v1, "RecordingManagerImpl"

    if-eqz v0, :cond_0

    const-string p0, "onMaxFileSizeApproaching return - unlimited size recording is supported"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v2, :cond_1

    const-string p0, "onMaxFileSizeApproaching return - not supported with current state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const-string p0, "onMaxFileSizeApproaching return - max video file size is under 4GB"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v2

    long-to-float v0, v2

    const v2, 0x4f8ccccd

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    const-string p0, "onMaxFileSizeApproaching return - remain storage is under 4GB"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "onMaxFileSizeApproaching return -- dual recorder"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getTempVideoTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNextFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v4

    const-string v5, "video/mp4"

    invoke-direct {p0, v4, v5, v2, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setTempFilename(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getTempFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->tempInsertToDb(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5
    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMediaRecorder(I)Landroid/media/MediaRecorder;

    move-result-object p0

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "onMaxFileSizeApproaching IOException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "onMaxFileSizeApproaching FileNotFoundException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method private onNextOutputFileStarted()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "4GB"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f1204d4

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;I)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    iget-wide v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->startRecordingTickTimer()V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->registerVideo(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->replaceFileInfoToNext()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNextFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getContentUriForReading()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForReading(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForWriting(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNextFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getNewVideoTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-direct {p0, v2, v4, v1, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setFileName(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateMaxVideoFileSize(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateMaxRecordingTime()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_0
    return-void
.end method

.method private onRecordingRestricted(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRestricted"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "RecordingManagerImpl"

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "onRecordingRestricted : true"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingRestricted(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, v2, :cond_1

    const-string p1, "onRecordingRestricted : false"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingRestricted(Z)V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsShownCallingToast:Z

    :cond_2
    return-void
.end method

.method private prepareRecorder(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "index"
        }
    .end annotation

    const-string v0, "RecordingManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareRecorder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderPrepareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMediaRecorder(I)Landroid/media/MediaRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v2

    invoke-virtual {v1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    invoke-virtual {v1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->isVideoSavedOnRequestedUri()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->closeFileDescriptor()V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "video/mp4"

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getVideoMimeString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getTempVideoTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setTempFilename(Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->tempInsertToDb(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rw"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v3

    :try_start_6
    const-string v4, "RecordingManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    :try_start_7
    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catch_1
    :try_start_8
    const-string v2, "RecordingManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoSource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getAudioSource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->semSetAuthor(I)V

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->semSetIframeInterval(I)V

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getFileSizeInterval()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x388

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(JI)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getOutputFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFacing(I)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isSetFlipModeRequired(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;I)Z

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_8

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->semSetVideoFlip(I)V

    goto :goto_4

    :cond_7
    const/16 p1, 0x3e8

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result p1

    const/4 v3, 0x7

    if-eq p1, v3, :cond_9

    const/16 v3, 0x9

    if-eq p1, v3, :cond_9

    const/16 v3, 0x8

    if-eq p1, v3, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getCaptureRate()I

    move-result p1

    int-to-double v3, p1

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoWidth()I

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoHeight()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoEncoder()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getAudioChannels()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getAudioSamplingRate()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getAudioEncoder()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateLocationInfo()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getPersistentInputSurface(I)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAudioInputControlSupported()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->setMediaRecorder(Landroid/media/MediaRecorder;)V

    :cond_b
    monitor-exit v0

    return-void

    :catch_2
    new-instance p0, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;-><init>(I)V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0
.end method

.method private registerVideo(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRestarting"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerVideo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateVideoThumbnail()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;->VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentType(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNumberOfMediaRecorder()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMainIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateToDB(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMainIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateToDB(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->makeHighLightVideo()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onVideoSaved()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->cleanupTempFiles(Z)V

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateVideoThumbnail()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->closeNextFileDescriptor()V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->closeFileDescriptor()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Srk0A9DG04lMYaoblizTgPqM7Pk;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Srk0A9DG04lMYaoblizTgPqM7Pk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetFlipMode()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mInitialRecordingFacing:I

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$dgVdAefSWOyBUv9Yz0SryQNyIr8;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$dgVdAefSWOyBUv9Yz0SryQNyIr8;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private resetMediaRecorder()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "resetMediaRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->resetMediaRecorder()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private resetPreviousZoomValues()V
    .locals 1

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousSuperSteadyZoomType:I

    return-void
.end method

.method private restoreTorchFlashMode()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ShootingModeFeature$SupportedFlashType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setTorchFlashEnabled(Z)V

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTorchSettingForQuickTakeRecording:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setTorch(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousTorchSetting:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setTorch(I)V

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    return-void
.end method

.method private setEffectRecordingSurface(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingSurface"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getEffectController()Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setRecordingSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMultiCameraEffectController()Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->setRecordingSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPreviousZoomValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    :goto_0
    return-void
.end method

.method private startRecordingTickTimer()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->stopInactivityTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingTick(JJ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.RECORDING_START_TIMER_TICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private tempInsertToDb(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileInfo",
            "resolution"
        }
    .end annotation

    const-string v0, "RecordingManagerImpl"

    const-string v1, "tempInsertToDb start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "do not update DB."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHevcEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "H.264"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "H.265"

    :goto_1
    move-object v7, v1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->insertToDbForVideo(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->clear()V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clear()V

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForReading(Landroid/net/Uri;)V

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForWriting(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setTempFilename(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "Not enough space in database"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const p1, 0x7f12030c

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :goto_2
    const-string p0, "tempInsertToDb end"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAttachVideoProfile(Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string p1, "there is no extra information for attach video."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->videoEncoder(I)V

    :cond_1
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->captureRate(I)V

    :cond_2
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->videoEncodingBitrate(I)V

    :cond_3
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioEncoder()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioEncoder()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->audioEncoder(I)V

    :cond_4
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->audioEncodingBitrate(I)V

    :cond_5
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioChannels()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioChannels()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->audioChannels(I)V

    :cond_6
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioSamplingRate()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioSamplingRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->audioSamplingRate(I)V

    :cond_7
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getFileSizeInterval()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getFileSizeInterval()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->fileSizeInterval(I)V

    :cond_8
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile$Builder;->outputFormat(I)V

    :cond_9
    return-void
.end method

.method private updateLocationInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->isLocationAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMediaRecorderList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$XD6LCYeMVW8gTP0WdKE0cAeshWI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$XD6LCYeMVW8gTP0WdKE0cAeshWI;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private updateMainSessionInfo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNumberOfMediaRecorder()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->setFacing(II)V

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNumberOfMediaRecorder()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFacing(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->setMainIndex(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateMaxRecordingTime()V
    .locals 10

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getMediaBitrate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getRemainTimeInMS(II)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getMediaBitrate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getRemainTimeInMS(II)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNumberOfMediaRecorder()I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getMaxRecordingTimeLimitBySystem(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->getMaxDuration()I

    move-result v3

    const v4, 0x36ee80

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v1, v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eq v3, v0, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByProfile:Z

    if-lez v2, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_5
    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    const-string v5, "RecordingManagerImpl"

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMaxRecordingTime : limitRecordingTime by system="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    if-ne v4, v0, :cond_6

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    goto :goto_4

    :cond_6
    if-ge v2, v4, :cond_7

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_7
    :goto_4
    iget-wide v6, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_8

    long-to-int v4, v6

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMaxRecordingTime : limitRecordingTime by storage="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    if-ne v2, v0, :cond_9

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    goto :goto_5

    :cond_9
    if-ge v1, v2, :cond_a

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_a
    :goto_5
    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByProfile:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMaxRecordingTime : limitRecordingTime by profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    if-ne v1, v0, :cond_b

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    goto :goto_6

    :cond_b
    if-ge v3, v1, :cond_c

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_c
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMaxRecordingTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateMaxVideoFileSize(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storage"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNumberOfMediaRecorder()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestedRecordingSize by intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isUnlimitedVideoFileSizeSupported(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    const-wide v2, 0xffffffffL

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    :cond_2
    return-void
.end method

.method private updateToDB(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getContentUriForReading()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    iget-wide v9, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->updateToDbForVideo(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;J)V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getContentUriForReading()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForReading(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForWriting(Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;->VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendNewVideoBroadcast(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RecordingManagerImpl"

    const-string v0, "Not enough space in database"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const p1, 0x7f12030c

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :goto_0
    return-void
.end method

.method private updateTorchSetting()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTorchSettingForQuickTakeRecording:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getTorch()I

    move-result v0

    if-ne v0, v1, :cond_2

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousTorchSetting:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setTorch(I)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private updateVideoThumbnail()V
    .locals 7

    const-string v0, "RecordingManagerImpl"

    const-string v1, "updateVideoThumbnail : start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMainIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMainIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v4, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->process(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    :cond_2
    const-string p0, "video thumbnail is not updated because bitmap is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string p0, "updateVideoThumbnail : end"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelRestoreTorchFlashModeRecording()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    return-void
.end method

.method public cancelSuperSlowMotionRecording(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forced"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSuperSlowMotionRecording : forced("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;->cancelSuperSlowMotionRecording(Z)V

    return-void
.end method

.method public cancelVideoRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "cancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getStopRecordingScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->start()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->enablePalmDetection(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->restoreTorchFlashMode()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->resetPreviousZoomValues()V

    return-void
.end method

.method public changeSuperSlowMotionRecordingFPS(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frc"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;->changeSuperSlowMotionRecordingFPS(Z)V

    return-void
.end method

.method public createRecordingSessionController()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->checkRecordingSessionCreateCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;-><init>(ZI)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    :cond_0
    return-void
.end method

.method public enableSuperSlowMotionAutoDetect(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "detectionType",
            "area",
            "previewLayout"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSuperSlowMotionAutoDetect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;->enableSuperSlowMotionAutoDetect(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getCurrentRecordingFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    return-wide v0
.end method

.method public getCurrentRecordingFileTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    return-wide v0
.end method

.method public getCurrentRecordingFileTimeInSecond()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitialRecordingFacing()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mInitialRecordingFacing:I

    return p0
.end method

.method public getMaxRecordingTimeLimitInSecond()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMediaRecorder(I)Landroid/media/MediaRecorder;

    move-result-object p0

    return-object p0
.end method

.method getMediaRecorderList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMediaRecorderList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getPersistentInputSurface(I)Landroid/view/Surface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getRecordingSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousSuperSteadyZoomType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousSuperSteadyZoomType:I

    return p0
.end method

.method public getPreviousZoomValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    return p0
.end method

.method getRecordingSnapShotCallbackManager()Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;

    return-object p0
.end method

.method public getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    return-object p0
.end method

.method public getRecordingStorage()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRemainRecordingTimeInMsByStorage()J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getMediaBitrate()I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getRemainTimeInMS(II)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTotalRecordingTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    return-wide v0
.end method

.method public getZoomValueByMultiRecordingLensType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiRecordingLensType"
        }
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3e8

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BACK_TELE_CAMERA_ZOOM_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BACK_TELE_CAMERA_ZOOM_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d0

    :goto_0
    return p0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 v1, 0x3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getSubCameraId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getScalerAvailableMinDigitalZoom(I)F

    move-result p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getScalerAvailableMinDigitalZoom(I)F

    move-result p0

    :goto_1
    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public handleCamcorderSettingChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getNextCameraId(Z)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->switchCamera(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->reconnectMaker()V

    :goto_0
    return-void
.end method

.method handleStorageChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storage"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const-string v1, "RecordingManagerImpl"

    if-nez v0, :cond_0

    const-string p0, "handleStorageChanged : Camera is not running, return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "handleStorageChanged : shooting mode is not activated, return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    if-eq v0, p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_2
    return-void
.end method

.method public isAudioRecordingDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result p0

    return p0
.end method

.method public isDualMediaRecorderRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingSaveOption()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHdr10RecordingEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isHdr10RecordingAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string v0, "HDR10 not supported device"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public isNeedToRestoreTorchFlashMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    return p0
.end method

.method public isPauseRecordingAvailable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isRecordingControlAvailable()Z

    move-result p0

    return p0
.end method

.method public isRecordingAvailableResolution(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionId",
            "cameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isVideoResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method

.method public isRecordingControlAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->PAUSING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RESUMING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecordingTimeLimited()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RecordingManagerImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v0

    if-lez v0, :cond_0

    const-string p0, "RecordingTimeLimited - requested recording duration limit"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v0, :cond_1

    const-string p0, "RecordingTimeLimited - system limitation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v0, :cond_2

    const-string p0, "RecordingTimeLimited - low storage"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByProfile:Z

    if-eqz p0, :cond_3

    const-string p0, "RecordingTimeLimited - recorder profile"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isRestoreTorchFlashMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return p0
.end method

.method public isSnapshotAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSnapShotCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->isSnapshotAvailable(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;)Z

    move-result p0

    return p0
.end method

.method public isStopRecordingAvailable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isRecordingControlAvailable()Z

    move-result p0

    return p0
.end method

.method public isSwitchFacingWhileRecordingSupported()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isSwitchFacingWhileRecordingSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SAVE_AS_FLIPPED_IN_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result p0

    if-ne p0, v3, :cond_6

    return v1

    :cond_6
    return v3
.end method

.method public isVideoBeautyFaceSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isVideoBeautyFaceSupported(Landroid/util/Size;I)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$handleRecordingError$13$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleRecordingError$14$RecordingManagerImpl()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v1, 0x7f1204c5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onBackgroundRecordingStopped$0$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onMediaRecorderPrepared$1$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->PREPARED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRecordingCancelled$2$RecordingManagerImpl()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRecordingPaused$3$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->PAUSED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRecordingResumed$4$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->RESUMED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRecordingStarted$5$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRecordingStopped$6$RecordingManagerImpl()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$registerVideo$15$RecordingManagerImpl(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onVideoSaved(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;)V

    return-void
.end method

.method public synthetic lambda$startMultiMicZoomFocus$11$RecordingManagerImpl()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v1

    new-instance v2, Landroid/util/Range;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMinZoomLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMaxZoomLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->prepareMultiMicController(ILandroid/util/Range;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p0

    invoke-interface {v0, v2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->enableMultiMicZoomFocus(ZI)V

    return-void
.end method

.method public synthetic lambda$updateLocationInfo$17$RecordingManagerImpl(Landroid/media/MediaRecorder;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateOrientationHint$12$RecordingManagerImpl(Landroid/media/MediaRecorder;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :cond_0
    return-void
.end method

.method public notifyCancelSuperSlowMotionCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;->notifyCancelSuperSlowMotionCompleted()V

    return-void
.end method

.method public onBackgroundRecordingStopped()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onBackgroundRecordingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->abandonAudioFocus()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->clearFileResources()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$gKCLAqrl0tvlz3x-uy4iBRjK90g;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$gKCLAqrl0tvlz3x-uy4iBRjK90g;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mr",
            "what",
            "extra"
        }
    .end annotation

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    const/16 v1, -0x3ef

    const-string v2, "RecordingManagerImpl"

    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    const-string p0, "onError - MEDIA_RECORDER_ERROR_UNKNOWN ignored : cancel recording is in progress."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError - MEDIA_RECORDER_ERROR_UNKNOWN : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/16 v0, -0xb

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    if-ne p3, v1, :cond_2

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNoInputFrameError:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mr",
            "what",
            "extra"
        }
    .end annotation

    const/16 p1, 0x385

    const-string v0, "onInfo returned - recording is stopping or unregistered."

    const-string v1, "RecordingManagerImpl"

    if-eq p2, p1, :cond_6

    const/16 p1, 0x386

    if-eq p2, p1, :cond_5

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "onInfo - MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->onNextOutputFileStarted()V

    goto/16 :goto_4

    :pswitch_1
    const-string p1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_APPROACHING"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->onMaxFileSizeApproaching()V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingMaxFileSizeReached()V

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingTick(JJ)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingMaxDurationReached()V

    goto :goto_4

    :cond_4
    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    int-to-long p1, p3

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onInfo - MEDIA_RECORDER_INFO_DURATION_PROGRESS "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->startRecordingTickTimer()V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_a

    int-to-long p1, p3

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaRecorderPrepared()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onMediaRecorderPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$DyqexOTwHdOMFG0WVDBaB9UbDAg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$DyqexOTwHdOMFG0WVDBaB9UbDAg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaRecorderReleased()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onMediaRecorderReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->cleanupTempFiles(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    :cond_0
    return-void
.end method

.method public onRecordingCancelled()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isZoomInMicSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->releaseMultiMicZoomFocus()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->resetFlipMode()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->clearFileResources()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$YJVizul0_SibCyrrW29R-Rql5ac;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$YJVizul0_SibCyrrW29R-Rql5ac;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onRecordingFailed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingFailed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->handleRecordingError(I)V

    return-void
.end method

.method public onRecordingPaused()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$MT2CD4lJ4f06Tqahk0O4o_DPoLo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$MT2CD4lJ4f06Tqahk0O4o_DPoLo;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRecordingResumed()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$1efjJJa6FndXD7s0xLos9-AvupM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$1efjJJa6FndXD7s0xLos9-AvupM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GATE"

    const-string v1, "<GATE-M>VIDEO_RECORDING</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getPersistentInputSurface(I)Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$uMvTtgkSwYQJefjypx7-9SyGeaQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$uMvTtgkSwYQJefjypx7-9SyGeaQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecordingStopped()V
    .locals 6

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    iget-wide v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->registerVideo(Z)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getNewVideoTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v3

    const-string v4, "video/mp4"

    invoke-direct {p0, v3, v4, v2, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;->setFileName(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->VIDEO_RECORD:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->RECORDING_STOP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isZoomInMicSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->releaseMultiMicZoomFocus()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->resetFlipMode()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNoInputFrameError:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->cleanupTempFiles(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNoInputFrameError:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->registerVideo(Z)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " </GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GATE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$S6swAcVWL2ukrK4D7OF11NlIT5Y;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$S6swAcVWL2ukrK4D7OF11NlIT5Y;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileSizeInKb:J

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onStartVideoPreviewRequested()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isNeedToRestoreTorchFlashMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateTorchSetting()V

    :cond_0
    return-void
.end method

.method public pauseVideoRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->PAUSING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareMediaRecorder()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;
        }
    .end annotation

    const-string v0, "RecordingManagerImpl"

    const-string v1, "prepareMediaRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->buildMediaRecorderProfile(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->checkRequestedAttachSize()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/MediaRecorderProfile;->dumpProfile()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->resetMediaRecorder()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->cleanupTempFile()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->cleanupNextTempFile()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMediaRecorderPrepareLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->createMediaRecorder()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateMaxVideoFileSize(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateMaxRecordingTime()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateMainSessionInfo()V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getNumberOfMediaRecorder()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMainIndex()I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->prepareRecorder(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMainIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->prepareRecorder(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public prepareQuickTakeRecording()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setPreviousZoomValue(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTorchSettingForQuickTakeRecording:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTorchSettingForQuickTakeRecording:I

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    :goto_2
    return-void
.end method

.method public prepareVideoRecording()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string v1, "prepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public register(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.LIMIT_RECORDING_SEAMLESS_ZOOM"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.OVERHEAT_LEVEL_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.VIDEO_CAPABILITY"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsShownCallingToast:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v1, 0x7f1204d2

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsShownCallingToast:Z

    :cond_1
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "releaseMediaRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->releaseMediaRecorder()V

    :cond_0
    return-void
.end method

.method public resetAfTrigger()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "resetAfTrigger"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->unlockAeAwb()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->unlockAe()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetAeAfAwb()V

    :cond_2
    :goto_0
    return-void
.end method

.method restartVideoRecordingOnEsdError()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string v1, "restartVideoRecordingOnEsdError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CLOSE_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->OPEN_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CONNECT_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public restoreZoomValue()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    :goto_0
    return-void
.end method

.method public resumeVideoRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "resumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->requestAudioFocus()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RESUMING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public setEffectRecordingPipRect(Landroid/graphics/RectF;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rect",
            "scaleFactor"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMultiCameraEffectController()Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/MultiCameraEffectController;->setPipRectPosition(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public setFpsRange(Landroid/util/Range;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$ecdGHy9Nbgl98IUl_SSCXqFXf_s;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$ecdGHy9Nbgl98IUl_SSCXqFXf_s;-><init>(Landroid/util/Range;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setMultiRecordingView(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    const/16 v3, 0x9

    new-array v3, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    :goto_0
    const/16 v4, 0x8

    if-gt v2, v4, :cond_1

    if-ne v2, p1, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    move-object v4, v0

    :goto_1
    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$0zGPqXBJ3OpawC9CDfQA8SLUSTw;

    invoke-direct {p1, v3}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$0zGPqXBJ3OpawC9CDfQA8SLUSTw;-><init>([Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setRecordingMotionSpeed(I)V
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

    const-string v1, "setRecordingMotionSpeed : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Yal6F6BxmuRCoN_Ew9fQInLt22g;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$Yal6F6BxmuRCoN_Ew9fQInLt22g;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setRecordingOverheatLevel(I)V
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

    const-string v1, "setRecordingOverheatLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSsrmHintLevel(I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$PtcFYtZsc75sWq5Xw1C9PfYuet8;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$PtcFYtZsc75sWq5Xw1C9PfYuet8;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->applySettings(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setRestoreTorchFlashMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restore"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return-void
.end method

.method public startAfTrigger()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "startAfTrigger"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->lockAeAwb()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->lockAe()V

    :cond_2
    :goto_0
    return-void
.end method

.method public startBackgroundRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "startBackgroundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_BACKGROUND_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public startMicLevelMonitor()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateOrientationForCapture()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v1

    new-instance v2, Landroid/util/Range;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMinZoomLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMaxZoomLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->prepareMultiMicController(ILandroid/util/Range;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->startLevelMonitor()V

    return-void
.end method

.method public startMultiMicZoomFocus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateOrientationForCapture()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$mUL9XlvHSkAG-ZT6xxDD6FTL1-s;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$mUL9XlvHSkAG-ZT6xxDD6FTL1-s;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startSuperSlowMotionRecording(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detectionType"
        }
    .end annotation

    const-string v0, "RecordingManagerImpl"

    const-string v1, "startSuperSlowMotionRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getStartRecordingScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getNewVideoTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-direct {p0, v2, v4, v1, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/SuperSlowMotionRecordingManager;->startSuperSlowMotionRecording(I)V

    return-void
.end method

.method public startVideoRecording()V
    .locals 7

    const-string v0, "RecordingManagerImpl"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getStartRecordingScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->enablePalmDetection(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->requestAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->RECORDING_START:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->VIDEO_RECORD:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isZoomInMicSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->startMultiMicZoomFocus()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mInitialRecordingFacing:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_STEADY_ZOOM_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousSuperSteadyZoomType:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mInitialRecordingFacing:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setPreviousZoomValue(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateCaptureInfo(Z)V

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateTorchSetting()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    const-string v3, "video/mp4"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getVideoMimeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getNewVideoTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getNewVideoTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getNewVideoTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_A"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v3, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RecordingUtil;->getNewVideoTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getFileInfo(I)Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;

    move-result-object v1

    invoke-direct {p0, v4, v3, v1, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController$FileInfo;->mVideoFilenameWithPath:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->updateLocationInfo()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isDualMediaRecorderRequired()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_MULTI_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->stopVideoRecording(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->RELEASE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0, v2, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->changeShootingMode(IZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stopBackgroundRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "stopBackgroundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BACKGROUND_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->restoreTorchFlashMode()V

    :cond_0
    return-void
.end method

.method public stopMicLevelMonitor()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->stopLevelMonitor()V

    return-void
.end method

.method public stopVideoRecording(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restartPreview"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoRecording : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getStopRecordingScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->start()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->restoreTorchFlashMode()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->resetPreviousZoomValues()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->enablePalmDetection(Z)V

    :cond_2
    return-void
.end method

.method public stopVideoStream()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public switchFacing(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->isPauseRecordingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string p1, "switchFacing return --- Pause recording is not available"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->setPreviousZoomValue(II)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const-string v3, "2"

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_STEADY_ZOOM_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mPreviousSuperSteadyZoomType:I

    const-string v1, "0201"

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "0244"

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->changeRecordingState(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->SWITCH_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-interface {v1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->requestPreviewAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->changeShootingMode(IZ)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    if-eqz v0, :cond_4

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DELAY_TIME_TO_RESUME_WHEN_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DELAY_TIME_TO_RESUME_WHEN_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->restoreZoomValue()V

    return-void
.end method

.method public unregister()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingState:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mTickInterval:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->RELEASE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return-void
.end method

.method public updateOrientationHint()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->updateOrientationForCapture()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;->mRecordingSessionController:Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/RecordingSessionController;->getMediaRecorderList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$-sVIftJZoTqiipWcVxklUXLETsQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingManagerImpl$-sVIftJZoTqiipWcVxklUXLETsQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
