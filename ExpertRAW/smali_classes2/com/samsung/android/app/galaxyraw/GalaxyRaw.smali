.class public Lcom/samsung/android/app/galaxyraw/GalaxyRaw;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GalaxyRaw.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_TO_SLEEP:I = 0xfa

.field private static final INACTIVITY_TIMEOUT:I = 0x1d4c0

.field private static final INACTIVITY_TIMER_EXPIRED_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GalaxyRaw1"

.field private static final mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field private final mBestPhotoContentObserver:Landroid/database/ContentObserver;

.field private mBrightnessValue:F

.field private mBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

.field private mCallStateManager:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

.field private mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

.field private mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

.field private mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

.field private mCommandReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

.field private mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

.field private mDvfsManager:Lcom/samsung/android/app/galaxyraw/DvfsManager;

.field private mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mFaceDetectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHapticManager:Lcom/samsung/android/app/galaxyraw/HapticManager;

.field private mHrmSensorManager:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;

.field private mIsEngineRunning:Z

.field private mIsErrorHandled:Z

.field private mIsFirstStartingPreviewCompleted:Z

.field private mIsFirstStartingPreviewRequested:Z

.field private mIsFlashNotificationDisabled:Z

.field private mIsFromApplicationSettings:Z

.field private mIsGalleryActivityLaunching:Z

.field private mIsLaunchedFromOnCreate:Z

.field private mIsLayerInitialized:Z

.field private mIsQuickLaunch:Z

.field private mIsRecreating:Z

.field private mIsResetFromSettingActivity:Z

.field private mIsRestarted:Z

.field private mIsReturnFromAppSettingByBixby:Z

.field private mIsRunning:Z

.field private mIsScreenNotificationDisabled:Z

.field private mIsSettingActivityLaunching:Z

.field private mIsTopResumedActivity:Z

.field private mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

.field private mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

.field private mLocalBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

.field private final mLowMemoryListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

.field private mNoImageToast:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

.field private mNotificationService:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

.field private mPictureSavingEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;

.field private mPlugInFilterManager:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

.field private mPocketChecker:Lcom/samsung/android/app/galaxyraw/PocketChecker;

.field private mPreviewLayoutManager:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

.field private mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

.field private mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

.field private final mViewerFragmentLock:Ljava/lang/Object;

.field private mVoiceRecognizer:Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;

.field private mWatchServiceManager:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mFaceDetectionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLowMemoryListenerList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBrightnessValue:F

    new-instance v0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$1;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBestPhotoContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewerFragmentLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->notifyThumbnailUpdatedEventToWatch()V

    return-void
.end method

.method private checkRestrictionPolicyForRecording(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecordKeyPressed"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->isVideoRecordRestricted(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "GalaxyRaw1"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->getVideoRecordingRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_0
    const-string p0, "checkRestrictionPolicyForRecording - Video recording is restricted."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->isAudioRecordRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->getAudioRecordRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_2
    const-string p0, "checkRestrictionPolicyForRecording - Audio recording is restricted,"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->isMicroPhoneRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->getMicrophoneRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_4
    const-string p0, "checkRestrictionPolicyForRecording - Microphone is restricted."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private checkStorageForRecording(Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecordKeyPressed"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingStorage()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    const-string v2, "GalaxyRaw1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->isSdCardWriteRestricted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->getSdCardWriteRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v4}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_0
    const-string p0, "checkStorageForRecording - SD card writing is restricted."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v5

    const-wide/32 v7, 0x1e00000

    cmp-long v1, v5, v7

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, v0, :cond_4

    const p1, 0x7f1202c5

    invoke-static {p0, p1, v4}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkStorageForRecording - Storage status is not ok (Available storage : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private clearLatestMediaDataInSecureCamera()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->clearSecureContentDataList()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->clearLastContentData()V

    :cond_0
    return-void
.end method

.method private finalizeCameraExecutorManager()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->deInitialize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    :cond_0
    return-void
.end method

.method private finalizeCoverManager()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    :cond_0
    return-void
.end method

.method private finalizeEngine()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->clearLastContentData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-void
.end method

.method private finalizeWatchManager()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mWatchServiceManager:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mWatchServiceManager:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    :cond_0
    return-void
.end method

.method private handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mWatchServiceManager:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->handleEvent(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    :cond_0
    return-void
.end method

.method private initResumedActivityInfo()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$FfWtYrepEpr3ly0_1xNydhjISMA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$FfWtYrepEpr3ly0_1xNydhjISMA;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initializeAttachMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->updateAttachMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initializeCameraExecutorManager()V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BIXBY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "from-bixby"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->setLaunchedFromBixby(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isRequestQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->sendResult()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->waitEmptyRequest()V

    :cond_2
    :goto_0
    return-void
.end method

.method private initializeCameraMode(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOnCreate"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->getMultiWindowMode()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    :goto_0
    const/4 v0, 0x2

    const-string v1, "GalaxyRaw1"

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeCameraMode : MultiWindow mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isLDUModel()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "initializeCameraMode : Retail mode."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getSettingMode()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setSettingMode(I)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->baseLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setResizable(Z)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/app/galaxyraw/util/Util;->isSecureCamera(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KNOX_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isQuickLaunch()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsQuickLaunch:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeCameraMode : QuickLaunch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsQuickLaunch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Secure = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Knox = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isKnoxCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MultiWindow mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsQuickLaunch:Z

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->requestDismissKeyguard(Landroid/app/Activity;)V

    :cond_4
    if-ne v2, v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->registerPreDrawListener()V

    :cond_5
    return-void
.end method

.method private initializeCoverManager()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_COVER_MANAGER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/CoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    :cond_0
    return-void
.end method

.method private initializeEngine()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setEngine(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->setEngine(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    return-void
.end method

.method private initializeLayer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    if-eqz v0, :cond_0

    const-string p0, "GalaxyRaw1"

    const-string v0, "Layer manager view is inflated already."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->layerManager:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->layerManager:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->baseLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$aDXkQL27nT3mInKlKsyN1V2u8PA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$aDXkQL27nT3mInKlKsyN1V2u8PA;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setOrientationEventListener(Lcom/samsung/android/app/galaxyraw/MainLayout$OrientationEventListener;)V

    return-void
.end method

.method private initializeQrScannerMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_qr_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;I)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method private initializeShootingMode(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isOnCreate",
            "initialShootingMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->changeShootingMode(IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->reconnectMaker()V

    :goto_0
    return-void
.end method

.method private initializeWatchManager()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeWatchManager :  launchedFromWatch = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GalaxyRaw1"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mWatchServiceManager:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mWatchServiceManager:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mWatchServiceManager:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->start()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method private isNeedToRecreateActivity()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->isNeedRecreate(Z)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GalaxyRaw1"

    if-eqz v0, :cond_0

    const-string p0, "isNeedToRecreateActivity : Camera should be recreated because multi window mode is changed"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsResetFromSettingActivity:Z

    if-eqz v0, :cond_1

    const-string p0, "isNeedToRecreateActivity : Camera should be recreated because Camera setting got a reset"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsReturnFromAppSettingByBixby:Z

    if-eqz p0, :cond_2

    const-string p0, "isNeedToRecreateActivity : Camera should be recreated because it should be restarted from application camera setting by bixby command"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isQuickLaunch()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "isQuickLaunchMode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    if-eqz v0, :cond_1

    if-eq v3, v1, :cond_2

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "KEYCODE"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQuickLaunch : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", keyCode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalaxyRaw1"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static synthetic lambda$SjgVzeCy5iOcRTc2TqxpH4Iyi24(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->showReview()V

    return-void
.end method

.method static synthetic lambda$initializeLayer$12(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->onOrientationChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onFaceDetection$0([Landroid/graphics/Rect;ZLcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;->onFaceDetection([Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic lambda$onTrimMemory$2(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V
    .locals 1

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;->onLowMemory(I)V

    return-void
.end method

.method static synthetic lambda$onTrimMemory$3(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V
    .locals 1

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;->onLowMemory(I)V

    return-void
.end method

.method private notifyThumbnailUpdatedEventToWatch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$OcdpN0VIADC0F7eQTK5vikMHoAg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$OcdpN0VIADC0F7eQTK5vikMHoAg;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyThumbnailUpdatedEventToWatch(Landroid/graphics/Bitmap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thumbnail",
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$0e1cyEL8uP8xvdcKxBTWbEyXLRc;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onCameraEnterCompleted()V
    .locals 8

    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch - LazyLoading : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->lockCurrentOrientation(Z)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/CoverManager;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "selfie_tone_camera"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsQuickLaunch:Z

    if-eqz v2, :cond_2

    const-string v2, "2"

    goto :goto_0

    :cond_2
    const-string v2, "1"

    :goto_0
    const-string v5, "7001"

    invoke-static {v5, v2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->onActivate()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showTalkBackGuide()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/Constants;->BEST_PHOTO_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBestPhotoContentObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getDisplayRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->enable(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->registerCallStateListeners()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeCameraExecutorManager()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mNotificationService:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/service/NotificationService;->bindNotificationService(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mDvfsManager:Lcom/samsung/android/app/galaxyraw/DvfsManager;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v7}, Lcom/samsung/android/app/galaxyraw/DvfsManager;->setEmmcBurstMode(Landroid/os/Handler;Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startPocketChecker()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPlugInFilterManager:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;->loadPlugInFilters()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->getCurrentShootingModeTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v6

    invoke-static {v2, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->speakCurrentCameraInfo(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->startDisplayCutoutAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startVoiceRecognizer()V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->registerSettingStatusLogging(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getLaunchScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->end()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch - LazyLoading : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onFirstStartPreviewRequested()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GalaxyRaw1"

    const-string v1, "onFirstStartPreviewRequested : Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->postInitialize()V

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsLayerInitialized:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsLayerInitialized:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->initializeView()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->stopVoiceRecorder(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "location_required"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-interface {v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showLocationTagDialog(Z)V

    const-string p0, "onFirstStartPreviewRequested : End"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pauseCamera()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseCamera : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->CAMERA_TERMINATED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->prepareToStopEngine()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->onInactivate()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->stopEngine()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->showPausingView()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$H4sYbrVFISa0eLrDb4VEPReAQMM;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$H4sYbrVFISa0eLrDb4VEPReAQMM;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0xfa

    :goto_0
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finalizeWatchManager()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsErrorHandled:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewCompleted:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewRequested:Z

    return-void
.end method

.method private registerCallStateListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$n3eyhoveiUodbt7TP9C1YdEJ8Lk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$n3eyhoveiUodbt7TP9C1YdEJ8Lk;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerCoverManagerListeners()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->registerScoverForegroundLifetimeListeners()V

    :cond_0
    return-void
.end method

.method private resetFlags()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsQuickLaunch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isQuickLaunchMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_qr_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsErrorHandled:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewCompleted:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewRequested:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFlashNotificationDisabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFromApplicationSettings:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsLaunchedFromOnCreate:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsQuickLaunch:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsResetFromSettingActivity:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRestarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsScreenNotificationDisabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsReturnFromAppSettingByBixby:Z

    return-void
.end method

.method private restartCameraActivity(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSecure"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v1, "isSecure"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private resumeCamera()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeCamera : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->hidePausingView()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeCameraMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateCameraId()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startEngine()Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->reconnectMaker()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeWatchManager()V

    return-void
.end method

.method private showNoImageToast()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120303

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120366

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f120365

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mNoImageToast:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->cancel()V

    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;I)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mNoImageToast:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    return-void
.end method

.method private showReview()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    const-string v1, "GalaxyRaw1"

    if-nez v0, :cond_0

    const-string p0, "showReview : Capturing. return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "showReview : Timer is running. Return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    if-nez v0, :cond_2

    const-string p0, "showReview : Latest media is not ready."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->launchGallery(Z)V

    return-void
.end method

.method private startBackgroundHandler()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private startEngine()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.CAMERA_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->reset()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getLaunchScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->start()V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x4

    const-string v2, "GalaxyRaw1"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Camera is restricted."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finishOnError(I)V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Camera is disabled by DevicePolicyManager."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finishOnError(I)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->checkRuntimePermission(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFromApplicationSettings:Z

    if-eqz v0, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNABLE_TO_USE_CAMERA_DURING_VIDEO_CALL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return v3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->startUpdateCheck(Z)V

    const-string v0, "StartEngine"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isAttachFragmentVisible()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendAppInAppBroadcast(Landroid/content/Context;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendCameraStartBroadcast(Landroid/content/Context;ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Camera_preview"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsEngineRunning:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->startEngine()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return v1
.end method

.method private startInactivityTimer()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "GalaxyRaw1"

    const-string v1, "startInactivityTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    const/4 v0, 0x1

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startLocationRequest()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showImproveAccuracyDialog()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->isGPSProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f12030a

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->baseLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeLocationToast(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;ILandroid/view/ViewGroup;)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    goto :goto_0

    :cond_2
    const v0, 0x7f120309

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->baseLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeLocationToast(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;ILandroid/view/ViewGroup;)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->setLocationRequest()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_network_connection_allowed_in_china_information_security_dialog"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private startPocketChecker()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsQuickLaunch:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/PocketChecker;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/PocketChecker;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPocketChecker:Lcom/samsung/android/app/galaxyraw/PocketChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/PocketChecker;->checkLightCondition()V

    :cond_0
    return-void
.end method

.method private stopBackgroundHandler()V
    .locals 4

    const-string v0, "GalaxyRaw1"

    const-string v1, "stopBackgroundHandler - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopBackgroundHandler : interrupted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    const-string p0, "stopBackgroundHandler - end"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopEngine()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsEngineRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsEngineRunning:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->stopEngine()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "camera.action.CAMERA_STOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendCameraStartBroadcast(Landroid/content/Context;ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "Camera_preview"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private stopPocketChecker()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsQuickLaunch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPocketChecker:Lcom/samsung/android/app/galaxyraw/PocketChecker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/PocketChecker;->stopChecker()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPocketChecker:Lcom/samsung/android/app/galaxyraw/PocketChecker;

    :cond_0
    return-void
.end method

.method private unregisterCallStateListeners()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCallStateManager:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->unregisterCallStateListeners()V

    :cond_0
    return-void
.end method

.method private unregisterCoverManagerListeners()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->unregisterScoverForegroundLifetimeListeners()V

    :cond_0
    return-void
.end method

.method private updateCameraId()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getInitialCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setCameraId(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireDVFSLock(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisecond"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mDvfsManager:Lcom/samsung/android/app/galaxyraw/DvfsManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/DvfsManager;->acquireDVFSLock(Landroid/os/Handler;I)V

    return-void
.end method

.method addSecureContentData(Landroid/net/Uri;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "burstGroupId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->addSecureContentData(Landroid/net/Uri;I)V

    return-void
.end method

.method public changeExtraPreviewSurfaceSize()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->CHANGE_EXTRA_SURFACE_LAYOUT:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    return-void
.end method

.method public changeShootingMode(IZ)Z
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->isCurrentShootingModeId(I)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GalaxyRaw1"

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const-string p0, "Returned, current shooting mode id the same with previous one"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeShootingMode: shootingModeId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isFacingSwitch="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->onInactivate()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->setShootingMode(IZ)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->changeShootingMode(IZ)V

    return v1
.end method

.method public finish()V
    .locals 2

    const-string v0, "GalaxyRaw1"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "finish : Returned because activity is finishing."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public finishOnError(I)V
    .locals 9
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

    const-string v1, "finishOnError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1204e7

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    if-nez v2, :cond_0

    const-string p0, "finishOnError : return. Activity is not running."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsErrorHandled:Z

    if-eqz v2, :cond_1

    const-string p0, "finishOnError : return. error is already handled."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsErrorHandled:Z

    const/16 v3, -0x17

    if-eq p1, v3, :cond_d

    const/16 v3, -0x14

    const-string v4, ")"

    const-string v5, "("

    const-string v6, " : "

    const-string v7, "am_crash"

    if-eq p1, v3, :cond_b

    const/16 v3, -0xe

    if-eq p1, v3, :cond_a

    const/16 v3, -0xb

    if-eq p1, v3, :cond_9

    const/4 v3, -0x7

    const/4 v8, 0x0

    if-eq p1, v3, :cond_6

    const/4 v3, -0x6

    if-eq p1, v3, :cond_5

    const/4 v3, -0x4

    if-eq p1, v3, :cond_4

    const/4 v3, -0x3

    if-eq p1, v3, :cond_3

    const/4 v2, -0x2

    if-eq p1, v2, :cond_2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    const v1, 0x7f120373

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendCameraFailedBroadcast(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/samsung/android/app/galaxyraw/logging/DeviceQualityAnalyticsLogUtil;->sendDQALog(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CAMERA_BUSY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.ERROR_CAMERA_BUSY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    const p1, 0x7f120204

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;IZ)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120208

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12028c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;IZ)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    return-void

    :cond_5
    const p1, 0x7f120327

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsEngineRunning:Z

    if-eqz p1, :cond_7

    const-string p1, "finishOnError : Camera will be paused."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->pauseCamera()V

    return-void

    :cond_7
    const-string p1, "finishOnError : Camera was already paused."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsTopResumedActivity:Z

    if-eqz p1, :cond_8

    const-string p1, "finishOnError : Camera should try to open the camera again!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->resumeCamera()V

    :cond_8
    iput-boolean v8, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsErrorHandled:Z

    return-void

    :cond_9
    const v1, 0x7f1203e1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendCameraFailedBroadcast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_a
    const p1, 0x7f1201fc

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_b
    const v1, 0x7f1204c7

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendCameraFailedBroadcast(Landroid/content/Context;I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FINISH_ON_ERROR:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FINISH_ON_ERROR:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    return-void
.end method

.method public getActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    return-object p0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getBrightnessValue()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBrightnessValue:F

    return p0
.end method

.method public getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    return-object p0
.end method

.method public getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    return-object p0
.end method

.method public getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method public getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCommandReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getCurrentWindowHeight()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->baseLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getCurrentWindowWidth()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->baseLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getWidth()I

    move-result p0

    return p0
.end method

.method public getDisplayRotation()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "GalaxyRaw1"

    const-string v0, "getDisplayRotation() : getDisplay() is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method protected getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-object p0
.end method

.method public getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    return-object p0
.end method

.method public getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeLayer()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    return-object p0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    return-object p0
.end method

.method public getPlugInFilterManager()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPlugInFilterManager:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

    return-object p0
.end method

.method public getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPreviewLayoutManager:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    return-object p0
.end method

.method public getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    return-object p0
.end method

.method getShootingModeProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    return-object p0
.end method

.method public getUriListInSecureCamera()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewerFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->viewerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleSmartScanCaptureEvent(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method hidePausingView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->CameraPausingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GalaxyRaw1"

    const-string v1, "hidePausingView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$U2IAc7Lao2WhTXfC6EtAnUPLnAg;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$U2IAc7Lao2WhTXfC6EtAnUPLnAg;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isAngleChangeSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isAngleChangeSupported(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAttachFragmentVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->getAttachFragment()Lcom/samsung/android/app/galaxyraw/AttachFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->getAttachFragment()Lcom/samsung/android/app/galaxyraw/AttachFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isBixbyRuleRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->isRuleRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCaptureAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->isShootingAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isAttachFragmentVisible()Z

    move-result v0

    const-string v2, "GalaxyRaw1"

    if-eqz v0, :cond_1

    const-string p0, "Capture is not available - attach fragment visible."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Capture is not available - Video attach mode."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isTakingPictureSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isRecordingSnapshotSupported()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Capture is not available - Taking picture is not supported."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "Capture is not available - current state is not PREVIEWING"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "selfie_tone_camera"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Capture is not available - Selfie tone mode"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "Capture is not available - Zoom animation is in progress."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isSliderScrolling()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "Capture is not available - Zoom slider is scrolling."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public isCapturing()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

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

.method public isDestroying()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method public isFilterSupported()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isGalleryActivityLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsGalleryActivityLaunching:Z

    return p0
.end method

.method public isInLockTaskMode()Z
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLayerInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsLayerInitialized:Z

    return p0
.end method

.method public isRawCaptureEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPictureFormat()I

    move-result p0

    if-nez p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public isRecording()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

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

.method public isRecordingAvailable(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecordKeyPressed"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isRecordingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isRecordingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isQuickTakeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->isShootingAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isCalling(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "GalaxyRaw1"

    if-eqz v0, :cond_2

    const-string p0, "Recording is not available - Calling."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Recording is not available - Capturing."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->checkRestrictionPolicyForRecording(Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "Recording is not available - Restricted by recording policy"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->checkStorageForRecording(Z)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "Recording is not available - Storage is not available for recording."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p0, "Recording is not available - current state is not PREVIEWING"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Recording is not available - preview animation is running"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public isRecreating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRecreating:Z

    return p0
.end method

.method public isRestarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRestarted:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    return p0
.end method

.method public isSeamlessZoomAvailable(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isRecordingMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    if-ne p1, v2, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSeamlessZoomRecordingAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    if-ne p1, v2, :cond_3

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackCameraResolution()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontCameraResolution()I

    move-result p0

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public isSensorCropEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isAngleChangeSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public isSettingActivityLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsSettingActivityLaunching:Z

    return p0
.end method

.method public isShootingModeActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchEvSupported()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isRecordingMode()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ShootingModeFeature$SupportedTouchEvType:[I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->getSupportedTouchEvType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedTouchEvType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p0, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne p0, v0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method public isTrackingAfAvailable()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_OBJECT_TRACKING_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderObjectTrackingAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isTrackingAfSupported(I)Z

    move-result p0

    return p0
.end method

.method public isViewerFragmentVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isZoomAvailable()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZoomSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isZoomSupported()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$hidePausingView$9$GalaxyRaw()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->CameraPausingView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$initResumedActivityInfo$11$GalaxyRaw(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsEngineRunning:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topResumedActivityInfo.onChanged : Pause camera because top resumed position has been gotten by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalaxyRaw1"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->pauseCamera()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initializeLayer$13$GalaxyRaw(ILcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$g-Z5ZUltLIBt0XcKsSLH2WkaLDM;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$g-Z5ZUltLIBt0XcKsSLH2WkaLDM;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$initializeLayer$14$GalaxyRaw(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->onOrientationChanged(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$9AS48oBzEpqwqG__yVoEKn6u2ZM;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$9AS48oBzEpqwqG__yVoEKn6u2ZM;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$notifyThumbnailUpdatedEventToWatch$15$GalaxyRaw(Landroid/graphics/Bitmap;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mWatchServiceManager:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyThumbnailUpdated(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$notifyThumbnailUpdatedEventToWatch$16$GalaxyRaw()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_THUMBNAIL_UPDATE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    return-void
.end method

.method public synthetic lambda$onCreate$6$GalaxyRaw()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->setExternalSDStorageVolume(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onCreate$7$GalaxyRaw()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    return-void
.end method

.method public synthetic lambda$onDestroy$8$GalaxyRaw(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic lambda$onKeyUp$1$GalaxyRaw()V
    .locals 2

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->semGoToSleep(J)V

    return-void
.end method

.method public synthetic lambda$registerCallStateListeners$17$GalaxyRaw()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCallStateManager:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCallStateManager:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCallStateManager:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->registerCallStateListeners()V

    return-void
.end method

.method public synthetic lambda$showPausingView$10$GalaxyRaw()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->CameraPausingView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$updateLatestMedia$4$GalaxyRaw()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "UpdateLatestMedia"

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update - UpdateLatestMedia : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->update(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update - UpdateLatestMedia : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public synthetic lambda$updateThumbnail$5$GalaxyRaw()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->updateQuickViewThumbnail()V

    return-void
.end method

.method public launchGallery(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityAnimation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendMediaScanBroadcast(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->getUriListInSecureCamera()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->isCameraBucketEmpty()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/GalleryIntentHelper;->getGalleryIntent(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    if-nez v0, :cond_1

    const-string p1, "launchGallery : returned because there is no image or video to show"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->showNoImageToast()V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchGallery: dateTaken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "date"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "orientation"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsGalleryActivityLaunching:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->preparePausedPreviewSnapshot()V

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v2, 0x7f010000

    const v3, 0x7f010001

    invoke-static {p1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Gallery was disabled!!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsGalleryActivityLaunching:Z

    const v0, 0x7f12018f

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :goto_1
    return-void
.end method

.method protected launchGalleryForSelectMyFilterImage()Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsGalleryActivityLaunching:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/GalleryIntentHelper;->getGalleryIntentForSelectMyFilterImage(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x7f4

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsGalleryActivityLaunching:Z

    const v1, 0x7f12018f

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    const-string p0, "GalaxyRaw1"

    const-string v1, "launchGalleryForSelectMyFilterImage : Activity is not founded, return."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/ActivityResultHelper;->handleActivityResult(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->setDeadZone(Landroid/view/Window;)V

    return-void
.end method

.method public onBrightnessValueChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    int-to-float p1, p1

    const/high16 v0, 0x43800000    # 256.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBrightnessValue:F

    return-void
.end method

.method public onChangeShootingModeCompleted(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFacingSwitch"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeShootingModeCompleted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->onActivate()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->updateRemainCounter()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->getCurrentShootingModeTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    invoke-static {v0, v2, v3, p1}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->speakCurrentCameraInfo(Landroid/content/Context;Ljava/lang/String;IZ)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->startDisplayCutoutAnimation()V

    :cond_1
    const-string p0, "onChangeShootingModeCompleted : end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getChangeShootingModeScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->end()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    invoke-static {p1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v0, "VerificationLog"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch - onCreate : Start["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "] - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalaxyRaw/CameraPerformance"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startBackgroundHandler()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initResumedActivityInfo()V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;

    invoke-direct {v3}, Lcom/samsung/android/app/galaxyraw/ShootingActionManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->getFeatureProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    invoke-direct {v3}, Lcom/samsung/android/app/galaxyraw/service/NotificationService;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mNotificationService:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fromApplicationSettings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFromApplicationSettings:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startCameraSettingActivity()Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launch - InflateMainLayer : Start["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "inflateMainLayer"

    invoke-static {v6}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launch - InflateMainLayer : End["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "] ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v8, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeEngine()V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->cameraPreviewTextureView:Landroid/view/TextureView;

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->cameraPreview:Landroid/view/SurfaceView;

    :goto_0
    invoke-direct {v3, p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/PreviewLayoutManagerImpl;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPreviewLayoutManager:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->baseLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Lcom/samsung/android/app/galaxyraw/MainLayout;)V

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;

    invoke-direct {v3, p0, p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->updatePreferredDisplayMode()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeCameraMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeAttachMode()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeQrScannerMode()V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isInMultiWindowMode()Z

    move-result v6

    invoke-interface {v3, v4, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->getInitialShootingMode(Landroid/content/Intent;Z)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v4, v3, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->setShootingMode(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateCameraId()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startEngine()Z

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeShootingMode(ZI)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeLayer()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeWatchManager()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeCoverManager()V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {p1, p0, v3, v4}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCommandReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/DvfsManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/DvfsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mDvfsManager:Lcom/samsung/android/app/galaxyraw/DvfsManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/HapticManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/HapticManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHapticManager:Lcom/samsung/android/app/galaxyraw/HapticManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/audio/CameraAudioManagerImpl;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-direct {p1, p0, v3, v4}, Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mVoiceRecognizer:Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPlugInFilterManager:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->registerEntireLifetimeReceiver()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->registerShutdownReceiver()V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLocalBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$NUSWXHan0kFVgLxYBTBKGcLuS4Q;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$NUSWXHan0kFVgLxYBTBKGcLuS4Q;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$VYyXbNJO4A11kcOqlyH8vRca_vA;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$VYyXbNJO4A11kcOqlyH8vRca_vA;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch - onCreate : End["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr p0, v0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit - onDestroy : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    const/16 v0, 0x7e6

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finishActivity(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->unregisterEntireLifetimeReceiver()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->unregisterShutdownReceiver()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mFaceDetectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLowMemoryListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->clear()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->resetPopupWindowEnable()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$2eJugXoFF2-z6GwVWXpTcCG2q5A;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$2eJugXoFF2-z6GwVWXpTcCG2q5A;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finalizeWatchManager()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finalizeCoverManager()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPlugInFilterManager:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->stop()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finalizeEngine()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCommandReceiver:Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mNotificationService:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exit - onDestroy : End["

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

.method public onEnterAnimationComplete()V
    .locals 1

    const-string p0, "GalaxyRaw1"

    const-string v0, "onEnterAnimationComplete"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faces",
            "skipUpdate"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mFaceDetectionListeners:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$4dEcpcp4-dLvzRGrPTkw-3JwHP0;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$4dEcpcp4-dLvzRGrPTkw-3JwHP0;-><init>([Landroid/graphics/Rect;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const-string v0, "GalaxyRaw1"

    const-string v1, "onKeyDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onKeyDown"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isViewerFragmentVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isAttachFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const-string v0, "GalaxyRaw1"

    const-string v1, "onKeyUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "onKeyUp"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isViewerFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isAttachFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->getAttachFragment()Lcom/samsung/android/app/galaxyraw/AttachFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_6

    const/16 v1, 0x52

    if-eq p1, v1, :cond_3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    const-string p0, "Ignore menu key : Capture state is CAPTURING or RECORDING"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$6JHxs4aM3rNVN-oV0prcOlxLbvE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$6JHxs4aM3rNVN-oV0prcOlxLbvE;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_7
    const-string p1, "BACK KEY PRESSED!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p0, "Ignore back key : preview has not started yet."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p0, "Ignore back key : isCapturing"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    return v2
.end method

.method public onMiniViewerCreated()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->preparePausedPreviewSnapshot()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->pauseCamera()V

    return-void
.end method

.method public onMiniViewerDestroyed()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRecreating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->showResumeCameraAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->resumeCamera()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isInMultiWindowMode",
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onMultiWindowModeChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged : isInMultiWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setIntent(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isSecureCamera(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    const-string v3, "selfie_tone_camera"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "onNewIntent : Restart camera, it is Selfie tone mode"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->restartCameraActivity(Z)V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p1, "onNewIntent : Restart camera, secure camera is finishing"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->restartCameraActivity(Z)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startBackgroundHandler()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->clearLatestMediaDataInSecureCamera()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v3, "onNewIntent : Restart camera, it is attach mode"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "isSecure"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->restartCameraActivity(Z)V

    return-void

    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsLaunchedFromOnCreate:Z

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_6
    return-void
.end method

.method protected onPause()V
    .locals 5

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit - onPause : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->acquireDVFSLock(I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->lockCurrentOrientation(Z)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->CAMERA_TERMINATED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->prepareToStopEngine()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->onInactivate()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->stopEngine()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mNotificationService:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/service/NotificationService;->unbindNotificationService(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->unregister()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->releaseSoundPool()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->showPausingView()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPreviewLayoutManager:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->changeSurfaceVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->unregisterForegroundLifetimeReceiver()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLocalBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->unregisterReceiver()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->disable()V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->stopReceivingLocationUpdates()V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->stop()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->clear()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->clear()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->clear()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/provider/CameraSensorManager;->clear()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBestPhotoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->unregisterCallStateListeners()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->unregisterCoverManagerListeners()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->stopPocketChecker()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->stopVoiceRecognizer()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finalizeCameraExecutorManager()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finalizeWatchManager()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/CoverManager;->onStop()V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->stopBackgroundHandler()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->clear()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->cancelAll()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->requestSystemKeyEvents(Z)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHapticManager:Lcom/samsung/android/app/galaxyraw/HapticManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/HapticManager;->stop()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mDvfsManager:Lcom/samsung/android/app/galaxyraw/DvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/DvfsManager;->release()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/util/Util;->enableBlueLightFilter(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->cameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->resetFlags()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exit - onPause : End["

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

.method public onPictureProcessingCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mNotificationService:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/service/NotificationService;->hideSavingNotification()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideProcessingAnimation()V

    return-void
.end method

.method public onPictureProcessingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mNotificationService:Lcom/samsung/android/app/galaxyraw/service/NotificationService;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/service/NotificationService;->showSavingNotification(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideProgressCircle()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showProcessingAnimation()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    return-void
.end method

.method public onPictureSaved(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentData",
            "skipReview"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getTakePictureScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->end()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isDestroying()Z

    move-result v0

    const-string v1, "GalaxyRaw1"

    if-eqz v0, :cond_0

    const-string p0, "onPictureSaved : Returned because camera is destroying."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onPictureSaved : Returned because starting attach fragment."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->startAttachFragment()V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getRawContentUriForReading()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string p2, "onPictureSaved : Returned because it is raw content."

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getRawContentUriForReading()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->addSecureContentData(Landroid/net/Uri;I)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "onPictureSaved : start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForReading()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForReading()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentBurstGroupId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->addSecureContentData(Landroid/net/Uri;I)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->updateRemainCounter()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->requestSystemKeyEvents(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPictureSavingEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;->onPictureSaved()V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->notifyThumbnailUpdatedEventToWatch()V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "camera.action.PICTURE_SAVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getReview()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    if-nez p2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->isRuleRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->isLastState()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$SjgVzeCy5iOcRTc2TqxpH4Iyi24;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$SjgVzeCy5iOcRTc2TqxpH4Iyi24;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_8
    :goto_0
    const-string p0, "need to skip showReview"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    const-string p0, "onPictureSaved : end"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureSavingFailed()V
    .locals 2

    const-string v0, "GalaxyRaw1"

    const-string v1, "onPictureSavingFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f120219

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    const-string p1, "GalaxyRaw1"

    const-string v0, "onPostCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsLaunchedFromOnCreate:Z

    return-void
.end method

.method public onProcessingFrameProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isShutterReceived()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLayerManagerView:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    int-to-float p1, p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setShutterProgress(F)V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    const-string v0, "GalaxyRaw1"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRestarted:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "isVideoSavedOnRequestedUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->setVideoSavedOnRequestedUri(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const-string v0, "onResume"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v1, "VerificationLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->logCurrentMemoryStatus(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch - onResume : Start["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GATE"

    const-string v5, "<GATE-M>CAMERA</GATE-M>"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRunning:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsGalleryActivityLaunching:Z

    iput-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsSettingActivityLaunching:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startBackgroundHandler()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isNeedToRecreateActivity()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : Camera will be recreated - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->recreate()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->enableMdnieCameraMode(Landroid/content/Context;Z)V

    iget-boolean v6, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsLaunchedFromOnCreate:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isInMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isViewerFragmentVisible()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->hidePausingView()V

    invoke-direct {p0, v5}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeCameraMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateCameraId()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startEngine()Z

    const/4 v1, -0x1

    invoke-direct {p0, v5, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeShootingMode(ZI)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->initializeWatchManager()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->registerShutdownReceiver()V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v6, "onResume : This activity camera will be opened when activity gets top resumed position."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->hidePausingView()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startLocationRequest()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->checkExternalSdStorage()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-ne v1, v0, :cond_6

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getAvailableStorage(I)J

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isCalling(Landroid/content/Context;)Z

    move-result v7

    invoke-interface {v1, v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->registerForegroundLifetimeReceiver()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLocalBroadcastReceiver:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->registerReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->registerCoverManagerListeners()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->requestSystemKeyEvents(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/samsung/android/app/galaxyraw/util/Util;->enableBlueLightFilter(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->initialize()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->initialize()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->initialize()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHapticManager:Lcom/samsung/android/app/galaxyraw/HapticManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/HapticManager;->start()V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->start()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->cameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->restartInactivityTimer()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch - onResume : End["

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, "] ["

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->isVideoSavedOnRequestedUri()Z

    move-result p0

    const-string v0, "isVideoSavedOnRequestedUri"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string v0, "GalaxyRaw1"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->setupWindowAttributes()V

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    const-string v0, "GalaxyRaw1"

    const-string v1, "onStartPreviewCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewCompleted:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onCameraEnterCompleted()V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_CURRENT_STATE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 2

    const-string v0, "GalaxyRaw1"

    const-string v1, "onStartPreviewRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFirstStartingPreviewRequested:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onFirstStartPreviewRequested()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit - onStop : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->stopInactivityTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->shutdownEngine()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsGalleryActivityLaunching:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->enableMdnieCameraMode(Landroid/content/Context;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsSettingActivityLaunching:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsGalleryActivityLaunching:Z

    if-nez p0, :cond_1

    const-string p0, "7002"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exit - onStop : End["

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

.method public onSwitchCameraPrepared(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    const-string v0, "GalaxyRaw1"

    const-string v1, "onSwitchCameraPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setCameraId(I)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_ZOOM_RANGE:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyCameraFacingInfo()V

    :cond_0
    return-void
.end method

.method public onThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thumbnail",
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->notifyThumbnailUpdatedEventToWatch(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTopResumedActivity"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTopResumedActivityChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTopResumedActivityChanged : isTopResumedActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsTopResumedActivity:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRecreating:Z

    if-eqz p1, :cond_0

    const-string p0, "onTopResumedActivityChanged : Returned because camera activity is recreating."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "onTopResumedActivityChanged : Returned because camera activity is finishing."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsEngineRunning:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isViewerFragmentVisible()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onTopResumedActivityChanged : Camera should try to open the camera again"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->resumeCamera()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mTopResumedActivityInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTrimMemory(I)V
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

    const-string v1, "onTrimMemory : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->logCurrentMemoryStatus(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 p0, 0x14

    if-eq p1, p0, :cond_2

    const/16 p0, 0x28

    if-eq p1, p0, :cond_2

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_2

    const/16 p0, 0x50

    if-eq p1, p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrimMemory : It should be checked to handle the new level : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLowMemoryListenerList:Ljava/util/List;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$_7BTfqD5-EyeOI7JvVLzd6MdM0g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$_7BTfqD5-EyeOI7JvVLzd6MdM0g;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLowMemoryListenerList:Ljava/util/List;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$Cwg5aTFYpBEPLYTro8Jjkq6ER7s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$Cwg5aTFYpBEPLYTro8Jjkq6ER7s;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->restartInactivityTimer()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserInteraction()V

    return-void
.end method

.method public onVideoRecordingFinished()V
    .locals 2

    const-string v0, "GalaxyRaw1"

    const-string v1, "onVideoRecordingFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getStopRecordingScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->end()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->restartInactivityTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->enableSystemSound()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startVoiceRecognizer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyStopVideoRecording()V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_STOPPED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->lockCurrentOrientation(Z)V

    :cond_1
    return-void
.end method

.method public onVideoRecordingPaused()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyStopVideoRecording()V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_PAUSED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    return-void
.end method

.method public onVideoRecordingPrepared()V
    .locals 3

    const-string v0, "GalaxyRaw1"

    const-string v1, "onVideoRecordingPrepared : start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->lockCurrentOrientation(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendAppInAppBroadcast(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraAudioManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->disableSystemSound()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->stopVoiceRecognizer()V

    const-string p0, "onVideoRecordingPrepared : end"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoRecordingResumed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyStartVideoRecording()V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_RESUMED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    return-void
.end method

.method public onVideoRecordingStarted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyStartVideoRecording()V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_RECORDING_STARTED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/idlingresources/IdlingResourceManager;->getStartRecordingScenario()Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->end()V

    return-void
.end method

.method public onVideoSaved(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentData"
        }
    .end annotation

    const-string v0, "GalaxyRaw1"

    const-string v1, "onVideoSaved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->setVideoSavedOnRequestedUri(Z)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->startAttachFragment()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForReading()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentBurstGroupId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->addSecureContentData(Landroid/net/Uri;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->updateRemainCounter()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mVoiceRecognizer:Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isAttachFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mAttachModeManager:Lcom/samsung/android/app/galaxyraw/AttachModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->getAttachFragment()Lcom/samsung/android/app/galaxyraw/AttachFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHapticManager:Lcom/samsung/android/app/galaxyraw/HapticManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/HapticManager;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method

.method public recreate()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->recreate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsRecreating:Z

    return-void
.end method

.method public registerFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mFaceDetectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mFaceDetectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerHrmShutterListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isCoverAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCoverManager:Lcom/samsung/android/app/galaxyraw/CoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->getCoverType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isSupportHrmShutterInCurrentCoverType(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "GalaxyRaw1"

    const-string v0, "Unable to register HRM sensor because cover is attached"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1202c2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHrmSensorManager:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHrmSensorManager:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHrmSensorManager:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->setHrmShutterListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHrmSensorManager:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->initSensorManager()V

    :cond_3
    return-void
.end method

.method public registerLowMemoryListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLowMemoryListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLowMemoryListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method registerPreDrawListener()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->registerPreDrawListener()V

    return-void
.end method

.method public requestHighAccuracyLocationMode()V
    .locals 2

    const-string v0, "GalaxyRaw1"

    const-string v1, "requestHighAccuracyLocationMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "network provider enabled is true. Set location tag on."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->requestHighAccuracyLocationMode(Landroid/app/Activity;)V

    return-void
.end method

.method public requestSystemKeyEvents(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraWindowManager:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->requestSystemKeyEvents(Z)V

    return-void
.end method

.method public restartInactivityTimer()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->stopInactivityTimer()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startInactivityTimer()V

    return-void
.end method

.method setIsResetFromSettingActivity(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReset"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsResetFromSettingActivity:Z

    return-void
.end method

.method setIsReturnFromAppSettingByBixby(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReturn"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsReturnFromAppSettingByBixby:Z

    return-void
.end method

.method public setPictureSavingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mPictureSavingEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;

    return-void
.end method

.method showPausingView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->CameraPausingView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GalaxyRaw1"

    const-string v1, "showPausingView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$evsvhLIW-SOGIUd95AN_zqxUObY;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$evsvhLIW-SOGIUd95AN_zqxUObY;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected startCameraSettingActivity()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCameraSettingActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw1"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->updateParcel()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "camera-parcel"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    check-cast v3, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    const-string v4, "setting"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFromApplicationSettings:Z

    const-string v4, "fromApplicationSettings"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFromApplicationSettings:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isRecordingMode()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "isRecordingMode"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFromApplicationSettings:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;

    invoke-interface {v3, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;->isSuperResolutionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v5

    :goto_2
    const-string v6, "isBackSuperResolutionSupported"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsFromApplicationSettings:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/16 v2, 0x7e6

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;->NOTIFY_CAMERA_SETTING_ACTIVITY_STARTED:Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->handleCameraEventForWatch(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mIsSettingActivityLaunching:Z

    return v5

    :catch_0
    const-string p0, "CameraSettingActivity not found"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public startViewerFragment()V
    .locals 2

    const-string v0, "GalaxyRaw1"

    const-string v1, "startAttachFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MainBinding;->viewerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public startVoiceRecognizer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mVoiceRecognizer:Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;->start()V

    :cond_0
    return-void
.end method

.method public stopInactivityTimer()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GalaxyRaw1"

    const-string v1, "stopInactivityTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mMainHandler:Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw$MainHandler;->removeMessages(I)V

    return-void
.end method

.method public stopVoiceRecognizer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isAudioRecordingActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mVoiceRecognizer:Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/VoiceRecognizer;->stop()V

    :cond_1
    return-void
.end method

.method public unregisterFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mFaceDetectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterHrmShutterListener()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHrmSensorManager:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->setHrmShutterListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HrmShutterListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mHrmSensorManager:Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/HrmSensorManager;->deInitSensorManager()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "GalaxyRaw1"

    const-string v0, "There is no registered HRM Shutter listener. return."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterLowMemoryListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLowMemoryListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateLatestMedia()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$3eYHEaLvN0pUZq42mLqu9bOoSzk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$3eYHEaLvN0pUZq42mLqu9bOoSzk;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSecureUriList()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mLatestMedia:Lcom/samsung/android/app/galaxyraw/LatestMediaContent;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/LatestMediaContent;->updateSecureContentDataList()V

    return-void
.end method

.method public updateThumbnail()V
    .locals 2

    const-string v0, "GalaxyRaw1"

    const-string v1, "updateThumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$o2He1j-19hAa8lYfOFOj6sRwWCs;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$GalaxyRaw$o2He1j-19hAa8lYfOFOj6sRwWCs;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
