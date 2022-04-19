.class Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;
.super Ljava/lang/Thread;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostProcessThread"
.end annotation


# instance fields
.field private final mDraftImageFileDeleteTimer:Ljava/util/Timer;

.field private volatile mNextSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

.field private final mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mSequencePauseCond:Ljava/util/concurrent/locks/Condition;

.field private final mSequenceProcessingCond:Ljava/util/concurrent/locks/Condition;

.field private volatile mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

.field private final mSequenceStateNotifyThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

.field private final mThreadStateCond:Ljava/util/concurrent/locks/Condition;

.field private final mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateCond:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequencePauseCond:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceProcessingCond:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mDraftImageFileDeleteTimer:Ljava/util/Timer;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceStateNotifyThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->INIT:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mNextSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const-string p1, "PostProcessThread"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->waitForNextSequenceState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private changeThreadExitState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "notify"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4800(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "PostProcessThread - changeThreadExitState(nextState %s, notify %b)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4802(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private changeThreadState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextState"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "PostProcessThread - changeThreadState(nextState %s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private completeSequence(Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resultFile",
            "camCapability",
            "processResult",
            "processedOption"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v11, p0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getSequenceId()I

    move-result v12

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PostProcessThread - completeSequence(sequenceId %d)"

    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v2, v14

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "PostProcessThread - completeSequence : synchronized(mSequenceIdDraftImageFileInfoMap) E"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->regenerateFileNameIfExists(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->REMOVE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    invoke-direct {v11, v12, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->prepareRecoverySequence(ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "PostProcessThread - completeSequence : synchronized(mSequenceIdDraftImageFileInfoMap) X"

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager;->refreshSDCardStorageVolumeInfo()V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;-><init>(Ljava/io/File;)V

    iget-object v2, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-boolean v4, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->isSDCardStorageFile:Z

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v16

    const/16 v18, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_RESULT_CAPTURE_SIZE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/util/Size;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v20

    move-object v15, v1

    move-object/from16 v17, v1

    invoke-static/range {v15 .. v20}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->createContentValues(Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;ZLandroid/util/Size;I)Landroid/content/ContentValues;

    move-result-object v6

    if-eqz v5, :cond_0

    iget-object v4, v5, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->secMPUri:Landroid/net/Uri;

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->path:Ljava/nio/file/Path;

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v8, p2

    move/from16 v9, p4

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->saveImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;Landroid/content/ContentValues;Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;IZ)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    const-string v4, "PostProcessThread - completeSequence : draftImageFileInfo is null"

    invoke-static {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2800()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->insertToDB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/util/SDCardStorageVolumeManager$SDCardStorageAwareFile;->path:Ljava/nio/file/Path;

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v8, p2

    move/from16 v9, p4

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->saveImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;Landroid/content/ContentValues;Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;IZ)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "PostProcessThread - completeSequence : sequence is done %s"

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v14

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;

    move-result-object v2

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    move-result-object v4

    invoke-static {v2, v12, v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;->access$3100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ProcessCallbackSequencer;ILandroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;)V

    :cond_2
    iget-object v2, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Ljava/io/File;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PostProcessThread - completeSequence : can\'t invoke onProcessCompleted, callback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    :try_start_3
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "resultFile is null"

    invoke-direct {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "PostProcessThread - completeSequence is failed : can\'t create resultFile(%s) because %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    if-nez p1, :cond_5

    const-string v5, "null"

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    :goto_2
    aput-object v5, v4, v14

    aput-object v0, v4, v13

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->RECOVERY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    invoke-direct {v11, v12, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->prepareRecoverySequence(ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;)V

    iget-object v0, v11, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0, v12}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private countProcessedRequestAndNotifyProgress()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5204(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->percentage(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "PostProcessThread - notify progress %d%%, processedRequestCount %d, totalRequestCount %d"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->setProgressAndNotify(II)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private endRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->releaseData()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->WATERMARK_DATA_BITMAP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private endSequence(IILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "dsMode",
            "errorInSequence"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v5, "PostProcessThread - end sequence(id %d, dsMode 0x%X, errorInSequence %s)"

    invoke-static {v0, v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "endSequence(sequence id %d) - number of sequence stacked : %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5601(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PROCESSING:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->notifySequenceStateChanged(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;J)Ljava/util/concurrent/ScheduledFuture;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;->ERROR:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;

    if-ne p3, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->errorSequence(II)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;->INCOMPLETE_MERGE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;

    if-ne p3, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->setForcedCurrentSequenceComplete()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->isEmpty()Z

    move-result p1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PostProcessThread - end sequence : isRequestStackEmpty = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5202(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;I)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4002(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;I)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5002(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Z)Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;->onProcessorReady()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    const-string p3, "can\'t invoke onProcessorReady, callback is null"

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->cancelNotification()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->stopForegroundService()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->MID:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isGreaterThan(Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->releaseBufferPool(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/app/ActivityManager;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isNeedDeinitSolution(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->deinitialize()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private endThread()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PostProcessThread - endThread"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->EXIT:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->changeThreadState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->cancelNotification()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->stopForegroundService()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->releaseBufferPool(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->release()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceStateNotifyThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    const/16 v1, 0xbb8

    const-string v2, "SequenceStateNotifyThreadPool"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->shutDownThreadPool(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const/16 v1, 0x1388

    const-string v2, "SavingDraftImageThreadPool"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->shutDownThreadPool(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mDraftImageFileDeleteTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mDraftImageFileDeleteTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V

    :cond_1
    return-void
.end method

.method private errorSequence(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "dsMode"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string p2, "PostProcessThread - error sequence(id %d, dsMode 0x%X)"

    invoke-static {v0, p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "errorSequence(sequence id %d) - number of sequence stacked : %d"

    invoke-static {p2, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->RECOVERY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->prepareRecoverySequence(ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->setForcedCurrentSequenceComplete()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;I)V

    return-void
.end method

.method static synthetic lambda$addSefInImage$0(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->insertUTCToSEF(J)Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyProcessorActive()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5002(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Z)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessorStatusCallback;->onProcessorActive()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string v0, "can\'t invoke onProcessorActive, callback is null"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareRecoverySequence(ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "draftHandleRequest"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->RECOVERY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;

    invoke-static {p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private printPostProcessState()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "============================================================ [PPP STATE] ============================================================"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->lengthOfSequences()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->get(I)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->size()I

    move-result v6

    if-gtz v6, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->get(I)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v11

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v12

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getExtraInfo()I

    move-result v13

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    new-instance v15, Landroid/util/Size;

    invoke-direct {v15, v1, v1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v14, v15}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Size;

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v15

    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v15, v8}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v10, v10, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTotalProcessCount:I

    move v15, v1

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_1
    if-ge v15, v6, :cond_3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->get(I)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSavingType()Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->MEMORY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    if-ne v7, v9, :cond_1

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->get(I)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack$Sequence;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSavingType()Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->FILE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    if-ne v7, v9, :cond_2

    add-int/lit8 v17, v17, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v5, v10

    add-int/2addr v4, v6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v7

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v9, v11

    invoke-static {v12}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v9, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v9, v11

    const/4 v8, 0x4

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v8

    const/4 v8, 0x5

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v8

    const/4 v8, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v8

    const/4 v6, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v6

    const/16 v6, 0x8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v6

    const/16 v6, 0x9

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v6

    const-string v6, "[PPP STATE] process(sequence id %d) - shootingMode: %d, dsMode: %s, extra info: 0x%X, size: %d X %d, remained frames count: %d, total frames count: %d, memory frames: %d, file frames: %d"

    invoke-static {v7, v6, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->lengthOfSequences()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const-string v0, "[PPP STATE] Stacked sequences: %d, remained frames count: %d, total frames count: %d"

    invoke-static {v3, v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private releaseBufferPool(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptCoreBuffer"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->releaseBuffers(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$5400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->releaseBuffers(Z)V

    return-void
.end method

.method private saveFromImageResult(Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;ILandroid/os/ParcelFileDescriptor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "resultFilePath",
            "data",
            "sequenceId",
            "pfd"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "saveFromImageResult E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    if-nez p4, :cond_0

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "saveFromImageResult X"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFromImageResult is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;->RECOVERY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->prepareRecoverySequence(ILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$DraftImageHandleRequest;)V

    new-array p2, v0, [Ljava/nio/file/Path;

    const/4 p4, 0x0

    aput-object p1, p2, p4

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;I)V

    return p4
.end method

.method private saveImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Landroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;Landroid/content/ContentValues;Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;IZ)Landroid/net/Uri;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processResult",
            "replacedUri",
            "secMpUri",
            "draftImageFileInfo",
            "contentValues",
            "resultFilePath",
            "camCapability",
            "processedOption",
            "isNeedToUpdateCore2DB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;",
            "Landroid/content/ContentValues;",
            "Ljava/nio/file/Path;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            "IZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    const-string v11, "saveImage error - FileDescriptor close fail : "

    const-string v0, "JPEG Saving"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->addSefInImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Landroid/content/ContentValues;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;I)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    iget-object v0, v8, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v0, v10, v1, v9}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->insertMediaDB(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    :try_start_0
    iget-object v0, v8, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rw"

    invoke-virtual {v0, v12, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getSequenceId()I

    move-result v7

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->saveFileFromUri(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_0

    :try_start_2
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    if-eqz v14, :cond_2

    :try_start_3
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v14

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v13, v14

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_2
    :try_start_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveImage error - openFileDescriptor fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v13, :cond_2

    :try_start_5
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    :goto_3
    iget-object v0, v8, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12, v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->updateMpDB(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v1

    invoke-static {v10, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->addContentValuesForUpdateSecMP(Landroid/content/ContentValues;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->updateToDB(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    :cond_3
    if-eqz p9, :cond_4

    iget-object v0, v8, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->updateCore2DB(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;Landroid/content/ContentValues;Landroid/net/Uri;)V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-object v12

    :goto_4
    if-eqz v13, :cond_5

    :try_start_6
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_5
    :goto_5
    throw v1
.end method

.method private setProgressAndNotify(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "max"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private shutDownThreadPool(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "threadPool",
            "name",
            "timeout"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    int-to-long v1, p3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "PostProcessThread - shutDownThreadPool is failed : %s can\'t be terminated in %d millis, try to shutdown forcefully"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p0

    const-string p0, "PostProcessThread - shutDownThreadPool is failed : getting interrupt during wait for shutdown %s, try to shutdown forcefully"

    invoke-static {p3, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method private signalSequenceWaitCondition(Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signalCond",
            "completeState"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$2;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$PostProcessor$PostProcessSequenceState:[I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mNextSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PostProcessThread - notifySequenceStateChanged : do nothing already "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostProcessThread - notifySequenceStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private startForegroundService()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private stopForegroundService()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessorServiceConnection;->sendMessage(III)V

    return-void
.end method

.method private verifyProcessResult(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getCurrentProcessCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getTotalProcessCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "processResult data must be null when currentProcessCount is less than totalProcessCount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "processResult data must not be null when currentProcessCount is equal with totalProcessCount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private waitAndGetRequest(Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkThreadExitState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;",
            ">;)",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessSequenceStack;->poll()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4800(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4800(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;->set(Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->CANCELED_REQUEST:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4800(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    move-result-object v2

    if-ne p1, v2, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->changeThreadExitState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;Z)Z

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "PostProcessThread - waitAndGetRequest(checkThreadExitState %b) await"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private waitForNextSequenceState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextState"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$2;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$PostProcessor$PostProcessSequenceState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PROCESSING:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequencePauseCond:Ljava/util/concurrent/locks/Condition;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected nextState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceProcessingCond:Ljava/util/concurrent/locks/Condition;

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mNextSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mNextSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    if-ne p1, v4, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostProcessThread already SequenceState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    if-ne v0, p1, :cond_3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string v4, "PostProcessThread - waitForNextSequenceState await : checkState %s, sequenceState %s"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    aput-object v6, v5, v2

    invoke-static {p1, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mNextSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->deinitialize()V

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostProcessThread SequenceState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mNextSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mNextSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method


# virtual methods
.method addSefInImage(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Landroid/content/ContentValues;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;I)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processResult",
            "contentValues",
            "imageBuffer",
            "camCapability",
            "processedOption"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Landroid/content/ContentValues;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            "I)",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    const v1, 0x48454946

    if-eq v0, v1, :cond_0

    return-object p3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "datetaken"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$f_iedJeO3Ad_6FYix4i2xMV18rY;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$f_iedJeO3Ad_6FYix4i2xMV18rY;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->insertMobileCountryCodeDataToSEF(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    invoke-static {p1, p0, p5}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->insertUltraLensWideDataToSEF(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;I)Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Front_Cam_Selfie_Info"

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    const/16 p5, 0x910

    invoke-direct {p1, p0, p4, p5}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;-><init>(Ljava/lang/String;[BI)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "_size"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->addData(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Ljava/util/List;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method cancelExitRequest()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PostProcessThread - cancelExitRequest threadState %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$2;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$PostProcessor$PostProcessThreadState:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->CANCELED_REQUEST:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->changeThreadExitState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;Z)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->CANCELED_EXIT:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->CANCELED_EXIT:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PostProcessThread - cancelExitRequest await : threadState %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->EXIT:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :cond_4
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->changeThreadExitState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mThreadStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected finalize()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PostProcessThread - finalize"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->endThread()V

    return-void
.end method

.method public getSequenceState()Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    return-object p0
.end method

.method public synthetic lambda$notifySequenceStateChanged$1$PostProcessor$PostProcessThread(Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->signalSequenceWaitCondition(Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V

    return-void
.end method

.method notifySequenceStateChanged(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "completeState",
            "delay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceState:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const-string v4, "PostProcessThread - notifySequenceStateChanged(currentState %s, completeState %s), delay %d"

    invoke-static {v0, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$2;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$PostProcessor$PostProcessSequenceState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_1

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceProcessingCond:Ljava/util/concurrent/locks/Condition;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected completeState: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequencePauseCond:Ljava/util/concurrent/locks/Condition;

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, p2, v6

    const/4 v4, 0x0

    if-nez v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->signalSequenceWaitCondition(Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V

    return-object v4

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mSequenceStateNotifyThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;

    invoke-direct {v6, p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessor$PostProcessThread$Yx4mimWsM7APq31WUW9oqPeTRn0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v6, p2, p3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "PostProcessThread - notifySequenceStateChanged(completeState %s, delay %d ms), ppp thread is done, return null"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method requestExit()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PostProcessThread - requestExit"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->changeThreadExitState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->setStatus(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->notifySequenceStateChanged(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;J)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PPP is changed to background state."

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1100()Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/GlobalPostProcProviderInterface;->backgroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "PostProcessThread - run thread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->removeExceededPLogFiles()V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->removeProcessTempFiles(Ljava/io/File;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->clearExpiredData(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3400(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->IDLE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->changeThreadState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;)Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->waitAndGetRequest(Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;->CANCELED_REQUEST:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadExitState;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->endThread()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PostProcessThread - exit thread"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getErrorReason()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "PostProcessThread - detect error request(sequence id %d, dsMode %s, reason %s), when start Sequence"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->errorSequence(II)V

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->REQUEST_GPPM:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->changeThreadState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;)Z

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->READY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->updateGppmStateTo(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;)Z

    move-result v7

    invoke-static {v0, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3502(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Z)Z

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->STARTED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->updateGppmStateTo(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;)Z

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->notifyProcessorActive()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;->RUNNING:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->changeThreadState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThreadState;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;->PROCESSING:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->waitForNextSequenceState(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessSequenceState;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "PostProcessThread - start sequence(id %d, mode %s)"

    invoke-static {v0, v8, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->startForegroundService()V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getResultFormat()I

    move-result v8

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v10

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->createNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    iget-object v7, v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->mNodeController:Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getResultFormat()I

    move-result v9

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v10

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v11

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->configureNodeChain(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x5

    :try_start_0
    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v11, "Capture - PostProcessor Process(sequenceId %d, processCount %d/%d, mode %s) : Start[%d]"

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v10, v11, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3600(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    const-wide/16 v11, 0x1f4

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v11, "PostProcessThread - can\'t wait for creating Post Process Request is done for %d ms"

    new-array v12, v5, [Ljava/lang/Object;

    const/16 v13, 0x1f4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v10, v11, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v11, "Interrupted while waiting Create PostProcessRequest latch."

    invoke-static {v10, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    move-result-object v11

    const-class v12, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {v10, v11, v2, v12}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3701(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->PERFORMANCE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v12, "Capture - PostProcessor Process : End[%d]"

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v11, v12, v13}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-direct {v1, v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->verifyProcessResult(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->endRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3800(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->printPostProcessState()V

    :cond_8
    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result v9

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v11

    invoke-static {v9, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->percentage(II)I

    move-result v9

    invoke-static {v8, v10, v9}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->countProcessedRequestAndNotifyProgress()V

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;->getData()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->percentage(II)I

    move-result v3

    invoke-static {v0, v10, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3900(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)I

    move-result v0

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)I

    move-result v3

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->setProgressAndNotify(II)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;->INCOMPLETE_MERGE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;

    :cond_9
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isGalaxyRawDsMode(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v3, v2, v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$4100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V

    :cond_a
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_PROCESSED_OPTION:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getResultFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v5

    invoke-direct {v1, v4, v5, v10, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->completeSequence(Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V

    goto/16 :goto_4

    :cond_b
    invoke-direct {v1, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->waitAndGetRequest(Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "PostProcessThread - detect error request(sequence id %d, dsMode %s, reason %s) in sequence"

    invoke-static {v7, v9, v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;->ERROR:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v10

    const-string v11, "PostProcessThread - error occurred during sequenceId %d, processCount %d/%d, dsMode %s : %s"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v6

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v5

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v4

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3

    aput-object v0, v9, v8

    invoke-static {v10, v11, v9}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;->ERROR:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result v8

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v9

    if-ne v8, v9, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isSuperNightDsMode(I)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v9

    const-string v10, "PostProcessThread - onProcessCompleted : exception during super night processing (sequence id %d)"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v9, v10, v11}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getNodeChainKey()Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    move-result-object v14

    const/4 v15, 0x0

    iget-object v10, v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mBundle:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    iget v11, v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSequenceId:I

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result v18

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v19

    move-object v13, v9

    move-object/from16 v16, v10

    move/from16 v17, v11

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;III)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getResultFile()Ljava/io/File;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;->onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Ljava/io/File;)V

    :cond_c
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    const-string v4, "PostProcessThread - exception during processing error request(sequence id %d)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getTotalProcessCount()I

    move-result v8

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getCurrentProcessCount()I

    move-result v9

    sub-int/2addr v8, v9

    move v9, v6

    :goto_2
    if-ge v9, v8, :cond_f

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v10

    const-string v11, "PostProcessThread - leftRequestCount = %d/%d"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v10, v11, v12}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v1, v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->waitAndGetRequest(Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->endRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->isErrorRequest()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v7

    const-string v8, "PostProcessThread - detect error request(sequence id %d, dsMode %s, reason %s) during internal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v6

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo$DynamicShotMode;->getDsModeName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getErrorReason()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v7, v8, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_f
    :goto_3
    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->endRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V

    :goto_4
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getSequenceId()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getMode()I

    move-result v2

    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->endSequence(IILcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$ErrorInSequence;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3300(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$3500(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;->STOPPED:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->updateGppmStateTo(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$GppmState;)Z

    goto/16 :goto_0

    :goto_5
    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->endRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;)V

    throw v0
.end method

.method saveFileFromUri(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)Z
    .locals 4
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
            "pfd",
            "secMpUri",
            "draftImageFileInfo",
            "resultFilePath",
            "imageBuffer",
            "sequenceId"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-direct {p0, p4, p5, p6, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->saveFromImageResult(Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;ILandroid/os/ParcelFileDescriptor;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p4, "saveFileFromUri - saveFromImageResult is failed"

    invoke-static {p1, p4}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->deleteToDB(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    new-array p0, v0, [Ljava/nio/file/Path;

    iget-object p1, p3, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    aput-object p1, p0, v1

    iget-object p1, p3, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    :cond_0
    return v1

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->mDraftImageFileDeleteTimer:Ljava/util/Timer;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;)V

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    return v2

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string v3, "saveFileFromUri - insertToDB is failed : try saveFromImageResult"

    invoke-static {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$2700(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessDBHelper;->deleteToDB(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor;->access$1800()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    iget-object v3, p3, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    aput-object v3, p2, v1

    iget-object v3, p3, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    aput-object v3, p2, v2

    const-string v3, "saveFileFromUri - delete draftFiles(%s, %s)"

    invoke-static {p1, v3, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/nio/file/Path;

    iget-object p2, p3, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->fakeDraftImageFilePath:Ljava/nio/file/Path;

    aput-object p2, p1, v1

    iget-object p2, p3, Lcom/samsung/android/app/galaxyraw/core2/container/DraftImageFileInfo;->realDraftImageFilePath:Ljava/nio/file/Path;

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteFiles([Ljava/nio/file/Path;)V

    :cond_4
    const/4 p1, 0x0

    invoke-direct {p0, p4, p5, p6, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessor$PostProcessThread;->saveFromImageResult(Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;ILandroid/os/ParcelFileDescriptor;)Z

    move-result p0

    return p0
.end method
