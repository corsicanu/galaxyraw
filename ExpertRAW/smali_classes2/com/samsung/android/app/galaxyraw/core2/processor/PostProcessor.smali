.class public Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;
.super Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;
.source "PostProcessor.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;
    }
.end annotation


# static fields
.field private static final CREATE_PPP_REQUEST_LATCH_WAIT_TIMEOUT_MILLIS:I = 0x1f4

.field private static final GPPM_REQUEST_DELAY_MILLIS:I = 0x1388

.field private static final ROOT_DATA_DIRECTORY_PATH:Ljava/nio/file/Path;

.field private static final SECURE_DIRECTORY_PATH:Ljava/nio/file/Path;

.field private static final SEC_MEDIA_PROVIDER_URI:Landroid/net/Uri;

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static mGppmDelayLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final mGppmProvider:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

.field private static mLastGppmRequestNotifyTime:Ljava/lang/Long;

.field private static mLastGppmStopNotifyTime:Ljava/lang/Long;

.field private static mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private GPP_URI:Landroid/net/Uri;

.field final PROVIDER_AUTHORITY:Ljava/lang/String;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

.field private final mContext:Landroid/content/Context;

.field private mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

.field private mEnablePPPDump:Z

.field private mHasGPPMPermission:Z

.field private final mIsGPPMInstalled:Z

.field private mIsPostProcessorActivated:Z

.field private final mLateDraftImageHandleRequestMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

.field private final mProcessCallbackSequencer:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

.field private final mProcessFileBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

.field private final mProcessMemoryBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

.field private final mProcessRequestCollectionTracker:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;

.field private mProcessedRequestCount:I

.field private mProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

.field private mProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;

.field private final mRequestStack:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestStackCondition:Ljava/util/concurrent/locks/Condition;

.field private final mRequestStackLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mSDCardStorageVolumeManager:Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

.field private final mSavingDraftImageThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSequenceIdDraftImageFileInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSequenceMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

.field private mStateChangeObserver:Landroid/database/ContentObserver;

.field private mStateChangeObserverHandlerThread:Landroid/os/HandlerThread;

.field private volatile mThreadExitState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

.field private mTotalRequestCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/data"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->ROOT_DATA_DIRECTORY_PATH:Ljava/nio/file/Path;

    const-string v2, "sec/galaxyraw"

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->SECURE_DIRECTORY_PATH:Ljava/nio/file/Path;

    const-string v1, "content://secmedia/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->SEC_MEDIA_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmProvider:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmStopNotifyTime:Ljava/lang/Long;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmRequestNotifyTime:Ljava/lang/Long;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmDelayLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/PppNodeController;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSequenceIdDraftImageFileInfoMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLateDraftImageHandleRequestMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStack:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStackCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessRequestCollectionTracker:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSavingDraftImageThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mServiceConnection:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mThreadExitState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mIsPostProcessorActivated:Z

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mEnablePPPDump:Z

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mHasGPPMPermission:Z

    const-string v1, "com.samsung.provider.gppm/ppapp_info"

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->PROVIDER_AUTHORITY:Ljava/lang/String;

    const-string v1, "content://com.samsung.provider.gppm/ppapp_info"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->GPP_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string v2, "PostProcess(context %s)"

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mActivityManager:Landroid/app/ActivityManager;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmProvider:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;->isGPPMDisabled(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mIsGPPMInstalled:Z

    if-eqz v4, :cond_0

    const-string v5, "GPPM is installed."

    invoke-static {v1, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v5, "GPPM is not installed."

    invoke-static {v1, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    const-string v5, "bindService"

    invoke-static {v1, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v5, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->checkEnableLogging()V

    :cond_1
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSDCardStorageVolumeManager:Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessMemoryBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    const/4 v5, 0x2

    invoke-direct {v0, p1, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessFileBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->start()V

    if-eqz v4, :cond_2

    const-string p0, "ERAW: PPP is foreground now."

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;->foregroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "PostProcessor can\'t bind service"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$1100()Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmProvider:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSequenceIdDraftImageFileInfoMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLateDraftImageHandleRequestMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSDCardStorageVolumeManager:Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->SEC_MEDIA_PROVIDER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->replacedUri(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->recoveryDraftImageFile(Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->recoveryDraftImageFiles()V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mIsGPPMInstalled:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->initializeStateChangeObserver()V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mHasGPPMPermission:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mHasGPPMPermission:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$3701(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->process(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mEnablePPPDump:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->sendProcessProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mTotalRequestCount:I

    return p0
.end method

.method static synthetic access$4002(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mTotalRequestCount:I

    return p1
.end method

.method static synthetic access$4100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->saveDngImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStack:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->sendProcessErrorCallback(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSavingDraftImageThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mServiceConnection:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->deInitializeStateChangeObserver()V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mThreadExitState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mThreadExitState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStackCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mIsPostProcessorActivated:Z

    return p0
.end method

.method static synthetic access$5002(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mIsPostProcessorActivated:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessedRequestCount:I

    return p1
.end method

.method static synthetic access$5204(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessedRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessedRequestCount:I

    return v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessMemoryBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessFileBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$5601(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorBase;->endSequence()V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic access$800()Ljava/nio/file/Path;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->SECURE_DIRECTORY_PATH:Ljava/nio/file/Path;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->recoveryDraftImageFile(Ljava/nio/file/Path;)V

    return-void
.end method

.method private addPostProcessRequestAndNotify(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStack:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->add(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStackCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->countTotalRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mRequestStackLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private checkEnableLogging()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;->CAMERA_PPP_DUMP:Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;->getDebugValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mEnablePPPDump:Z

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "checkEnableLogging - %b"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private countTotalRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mTotalRequestCount:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mTotalRequestCount:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mTotalRequestCount:I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mTotalRequestCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method private deInitializeStateChangeObserver()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "ERAW: deInitializeStateChangeObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserverHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserverHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private initializeStateChangeObserver()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "ERAW: initializeStateChangeObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/StateObserver;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/StateObserver;-><init>(Landroid/os/Handler;Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/IEventHandler;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->GPP_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mStateChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private recoveryDraftImageFile(Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draftImageFileInfo"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "recoveryDraftImageFile E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->secMPUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->getDataPathFromDB(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->SECURE_DIRECTORY_PATH:Ljava/nio/file/Path;

    invoke-interface {v1, v5}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v5, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->resultImageFilePath:Ljava/nio/file/Path;

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->regenerateFileNameIfExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    iget-object v5, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->extractFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->convertFileExtension(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSDCardStorageVolumeManager:Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->refreshSDCardStorageVolumeInfo()V

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;-><init>(Ljava/io/File;)V

    invoke-static {v5, v6, v6, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->setContentFileValues(Landroid/content/ContentValues;Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;Z)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-boolean v6, v6, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->isSDCardStorageFile:Z

    invoke-direct {p0, v9, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->replacedUri(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v6

    iget-object v9, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->secMPUri:Landroid/net/Uri;

    invoke-static {v8, v7, v6, v9}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->insertMediaDB(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    iget-object v9, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    invoke-static {v8, v9, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->saveFromFileToUri(Landroid/content/Context;Ljava/nio/file/Path;Landroid/net/Uri;)Z

    const-string v8, "recoveryDraftImageFile : recovery is done for %s"

    new-array v9, v3, [Ljava/lang/Object;

    iget-object v10, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->replacedUri:Landroid/net/Uri;

    aput-object v10, v9, v4

    invoke-static {v0, v8, v9}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v8, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    new-array v9, v3, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v10, v9, v4

    invoke-static {v8, v1, v9}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-array v1, v2, [Ljava/nio/file/Path;

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->updateCore2DB(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;Landroid/content/ContentValues;Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->secMPUri:Landroid/net/Uri;

    invoke-static {p0, v6, p1, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->updateMpDB(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string p0, "recoveryDraftImageFile X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recoveryDraftImageFile is failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->secMPUri:Landroid/net/Uri;

    invoke-static {v0, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->deleteToDB(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/Path;

    iget-object v5, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    aput-object v5, v0, v4

    iget-object v4, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    aput-object v4, v0, v3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->core2Uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->deleteToDB(Landroid/content/Context;Landroid/net/Uri;)Z

    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoveryDraftImageFile is failed : can\'t create result file because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->core2Uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->core2Uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->deleteToDB(Landroid/content/Context;Landroid/net/Uri;)Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-array p0, v3, [Ljava/lang/Object;

    if-nez v1, :cond_5

    const-string v1, " - dataPath is null"

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->replacedUri:Landroid/net/Uri;

    :goto_2
    aput-object v1, p0, v4

    const-string v1, "recoveryDraftImageFile : skip complete result file %s"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, v2, [Ljava/nio/file/Path;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    aput-object v0, p0, v4

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    aput-object p1, p0, v3

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    return-void
.end method

.method private recoveryDraftImageFile(Ljava/nio/file/Path;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "\\|\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    array-length v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "recoveryDraftImageFile is failed : %s has invalid data with Elements %s"

    invoke-static {p0, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, v1, [Ljava/nio/file/Path;

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    return-void

    :cond_0
    aget-object v1, v3, v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aget-object v0, v3, v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    const/4 v0, 0x3

    aget-object v0, v3, v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    array-length v0, v3

    const/4 v1, 0x0

    if-le v0, v5, :cond_1

    aget-object v0, v3, v5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    array-length v0, v3

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    aget-object v0, v3, v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    :cond_2
    move-object v9, v1

    :goto_1
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;

    move-object v6, v0

    move-object v11, p1

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->recoveryDraftImageFile(Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;)V

    return-void

    :catch_0
    move-exception p0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p0, v0, v1

    const-string p0, "recoveryDraftImageFile is failed : can\'t read %s, %s"

    invoke-static {v3, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, v1, [Ljava/nio/file/Path;

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    return-void
.end method

.method private recoveryDraftImageFiles()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->SECURE_DIRECTORY_PATH:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSDCardStorageVolumeManager:Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->refreshSDCardStorageVolumeInfo()V

    :try_start_0
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoveryDraftImageFiles is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private replacedUri(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "isSDStorage"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->isSdCardStorageVolumeInfoLoaded()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->getSdCardStorageVolumeFsUuid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "external|external_primary"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "replacedUri is failed for %s : sd card storage volume info isn\'t loaded"

    invoke-static {p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "external"

    const-string p2, "external_primary"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static requestGppmPermission(Landroid/content/Context;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmRequestNotifyTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmStopNotifyTime:Ljava/lang/Long;

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmDelayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "ERAW: requestGppmPermission delay(5000ms)"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmRequestNotifyTime:Ljava/lang/Long;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmRequestNotifyTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERAW: requestGppmPermission extra delay("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "ERAW: requestGppmPermission delay interrupted"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmRequestNotifyTime:Ljava/lang/Long;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmStopNotifyTime:Ljava/lang/Long;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmDelayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmProvider:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;->requestStart(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "ERAW: requestGppmPermission : success to get permission"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "ERAW: requestGppmPermission : fail to get permission"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :goto_1
    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmRequestNotifyTime:Ljava/lang/Long;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmStopNotifyTime:Ljava/lang/Long;

    throw p0
.end method

.method private saveDngImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processRequest",
            "processResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "saveDngImage error - FileDescriptor close fail : "

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "saveDngImage - run E"

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_DATA_RESULT_FILE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_CAMCAPABILITY:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {v10, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->createDngNodeChain(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {v10, v6, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->configureDngNodeChain(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Z

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_MERGED_RAW_FRAME:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_RESULT_CAPTURE_SIZE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v4, v10}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Size;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v14

    const/16 v11, 0x20

    invoke-virtual {v14, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setFormat(I)V

    new-instance v15, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    const/16 v13, 0x20

    const-wide/16 v16, 0x0

    invoke-virtual {v14}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->EMPTY_STRIDE_INFO:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-object v11, v15

    move-object v12, v10

    move-object/from16 v20, v14

    move-object v7, v15

    move-wide/from16 v14, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v11 .. v17}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Landroid/util/Size;IJLandroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    invoke-static {v5, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    sget-object v11, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->NODE_CHAIN_KEY_DNG:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    invoke-virtual {v7, v11}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->getNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;

    move-result-object v7

    const-class v11, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v7, v11, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain;->processFull(Ljava/lang/Class;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz v4, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDngImage - dngSize  : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v0, "DNG Saving"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v7, "%s.%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v3, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->getFileName(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v9

    const-string v3, "dng"

    aput-object v3, v11, v8

    invoke-static {v5, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSDCardStorageVolumeManager:Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->refreshSDCardStorageVolumeInfo()V

    new-instance v13, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-boolean v5, v13, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->isSDCardStorageFile:Z

    invoke-direct {v1, v0, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->replacedUri(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v16

    move-object v11, v13

    move-object/from16 v12, v20

    move-object v15, v10

    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->createContentValues(Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;ZLandroid/util/Size;I)Landroid/content/ContentValues;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->SEC_MEDIA_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v7, v10, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->insertToDB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {v10, v5, v0, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->insertMediaDB(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "rw"

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    if-nez v11, :cond_0

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get(Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saveDngImage is failed : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-array v0, v8, [Ljava/nio/file/Path;

    aput-object v3, v0, v9

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    if-eqz v11, :cond_1

    :try_start_6
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v0

    :try_start_7
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const/4 v11, 0x0

    :goto_2
    :try_start_8
    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saveDngImage error - openFileDescriptor fail : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v11, :cond_1

    :try_start_9
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, v0

    :try_start_a
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_3
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v7, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->updateMpDB(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->addContentValuesForUpdateSecMP(Landroid/content/ContentValues;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->updateToDB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v1, v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "saveDngImage - run X"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v7, v11

    :goto_4
    if-eqz v7, :cond_4

    :try_start_b
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v4, v0

    :try_start_c
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_5
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_6
    move-exception v0

    move-object v7, v3

    goto :goto_6

    :catch_7
    move-exception v0

    :try_start_d
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveDngImage - dngImageFilePath\'s regenerate file path is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "can\'t create dngImageFilePath"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "NODE_CHAIN_KEY_DNG - processFull fail : dngBuffer is null"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    const/4 v7, 0x0

    :goto_6
    :try_start_e
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveDraftImageTask is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-array v0, v8, [Ljava/nio/file/Path;

    aput-object v7, v0, v9

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    :cond_6
    return-void

    :goto_7
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    :cond_7
    throw v0
.end method

.method private saveDraftImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSavingDraftImageThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$SavingDraftImageTask;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "can\'t submit SavingDraftImageTask with sequence(id %d)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sendProcessErrorCallback(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onProcessError(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "can\'t invoke onProcessError, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendProcessProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processResult",
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;I)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onProcessProgress(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "can\'t invoke onProcessProgress, callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static waitForGppmPermission()V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "ERAW: updateState - Waiting for permission from GPPM."

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2710

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ERAW: updateState - Timed out 10 sec to wait for permission from GPPM."

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "ERAW: updateState - interrupted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getNumberOfSequenceStacked()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->isRequestStartPermissionByNotify(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERAW: StateObserver onStateChanged - Request Success, PostProcessThread.getSequenceState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->getSequenceState()Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmRequestNotifyTime:Ljava/lang/Long;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->isStopByNotify(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "ERAW: StateObserver onStateChanged - Stop"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmStopNotifyTime:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "PostProcessor paused"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "%s process sequenceId %d processCount %d/%d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessRequestCollectionTracker:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;

    invoke-static {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;->access$400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessRequestCollectionTracker;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    invoke-static {v1, v2, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->access$500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getError()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessCallbackSequencer:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    invoke-static {v1, v2, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->access$600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$2;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$ProcessRequest$Usage:[I

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->getNodeChainKey(I)Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessMemoryBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessFileBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v1, p1, v2, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->asPostProcessRequest(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;Ljava/io/File;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->addPostProcessRequestAndNotify(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mCreatePostProcessRequestLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->saveDraftImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mSequenceMap:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "process(sequence id %d) - number of sequence stacked : %d"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->notifySequenceStateChanged(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;J)Ljava/util/concurrent/ScheduledFuture;

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "PostProcessor resumed"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resumeAfter(J)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->notifySequenceStateChanged(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public setProcessorCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    return-void
.end method

.method public setProcessorStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;

    return-void
.end method

.method public tryDeinitialize()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "tryDeinitialize"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->requestExit()V

    return-void
.end method

.method public tryRecycle()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->cancelExitRequest()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRecycle - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mIsGPPMInstalled:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "ERAW: PPP is in foreground now."

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmProvider:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;->foregroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mWaitForGppmLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmRequestNotifyTime:Ljava/lang/Long;

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mLastGppmStopNotifyTime:Ljava/lang/Long;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmDelayLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mPostProcessThread:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->interrupt()V

    :cond_1
    return v0
.end method

.method public updateGppmStateTo(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERAW: updateGppmStateTo from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mGppmProvider:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;->getState(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface$PPAppState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->updateState(Landroid/content/Context;)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERAW: updateGppmStateTo to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " X : result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return p0
.end method
