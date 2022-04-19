.class public Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;
.super Ljava/lang/Object;
.source "PictureProcessorManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private final MAX_WAITING_TIME_FOR_RELEASING_IMMEDIATE_PROCESSOR:J

.field mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

.field private mImmediateProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

.field private mImmediateProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;

.field private final mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mImmediateProcessorReleaseCond:Ljava/util/concurrent/locks/Condition;

.field private mIsPPPInitialized:Z

.field private mPPPStateManager:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

.field private mPPPStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

.field private mPostProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

.field private mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

.field private final mPostProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

.field private final mPostProcessorLock:Ljava/lang/Object;

.field private mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final mPostProcessorResumeFutureLock:Ljava/lang/Object;

.field private final mProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->MAX_WAITING_TIME_FOR_RELEASING_IMMEDIATE_PROCESSOR:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorReleaseCond:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFutureLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$2;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "PictureProcessorManager"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPPPStateManager:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    return-object p0
.end method

.method static synthetic access$100()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPPPStateManager:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPPPStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$LazyHolder;->access$400()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "deinitialize E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->releaseNodeChain()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorReleaseCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    const-string v1, "deinitialize X"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public deinitializePPP()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "deinitializePPP"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->tryDeinitialize()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getNumberOfPostProcessorSequenceStacked()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPPPStateManager:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->registerCameraAvailabilityCallabck()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->setPostProcessCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->setPPPStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mIsPPPInitialized:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public getNumberOfPostProcessorSequenceStacked()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->getNumberOfSequenceStacked()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorReleaseCond:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v0, "Releasing immediateProcessor can\'t be done by %d sec"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "initialize E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;

    const-string p1, "initialize X"

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "Got unexpected interrupt during wait for releasing immediateProcessor"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public initializePPP(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "initializePPP"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->tryRecycle()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPPPStateManager:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->initializeStateManager(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->setProcessorCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mProcessorStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->setProcessorStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mIsPPPInitialized:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->setStatus(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPPPInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mIsPPPInitialized:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pausePPP()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "pausePPP E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFutureLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "process fail - postProcessorResumeFuture can\'t be canceled"

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->pause()V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_1
    const-string p0, "pausePPP - PostProcessor is null"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    const-string p0, "pausePPP X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "process - %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$3;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$ProcessRequest$ProcessType:[I

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getProcessType()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "processRequest has unsupported process type(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getProcessType()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFutureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;->onProcessError(I)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "can\'t invoke onProcessError : immediateProcessCallback is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process is failed - postProcessorResumeFuture can\'t be canceled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->pause()V

    :cond_5
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_a

    :try_start_6
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->isInvalidSequence(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process is failed - invalid sequence id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getCurrentProcessCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getTotalProcessCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->percentage(II)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;->onProcessProgress(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->isPartialResult()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;->onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "can\'t invoke onProcessProgress or onProcessCompleted : immediateProcessCallback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ImmediateProcessor;->resetErrorSequence(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    if-eqz v1, :cond_9

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;->onProcessError(I)V

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "can\'t invoke onProcessError : immediateProcessCallback is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_3
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process is failed - process for ImmediateProcessor is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result p1

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    if-eqz v1, :cond_b

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->resumeAfter(J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    :cond_b
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFutureLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessorResumeFuture:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1

    goto :goto_5

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    :cond_c
    :goto_5
    return-void

    :catchall_4
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessorLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public resumePPP()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "resumePPP E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessor:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->resume()V

    goto :goto_0

    :cond_0
    const-string p0, "resumePPP - PostProcessor is null"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    const-string p0, "resumePPP X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setImmediateProcessCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "immediateProcessCallback"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mImmediateProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    return-void
.end method

.method public setPPPStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pppStatusCallback"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPPPStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    return-void
.end method

.method public setPostProcessCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postProcessCallback"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->mPostProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    return-void
.end method
