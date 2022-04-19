.class public Lcom/samsung/android/camera/singletake/STPServiceClient;
.super Ljava/lang/Object;
.source "STPServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;,
        Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;,
        Lcom/samsung/android/camera/singletake/STPServiceClient$STPServiceListener;
    }
.end annotation


# static fields
.field private static final STP_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "STPServiceClient"

.field private static final mServiceRetryArr:[I

.field private static sInstance:Lcom/samsung/android/camera/singletake/STPServiceClient;

.field private static final sOperationType2ErrorMap:Landroid/util/SparseIntArray;

.field private static final sOperationTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mSServiceInitInProgress:Z

.field private final mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

.field private final mServiceCallbackHandler:Landroid/os/Handler;

.field private final mServiceConnection:Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;

.field private mServiceListener:Lcom/samsung/android/camera/singletake/STPServiceClient$STPServiceListener;

.field private mServiceProxy:Landroid/os/Messenger;

.field private volatile mServiceStarted:Z

.field private volatile mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceRetryArr:[I

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.singletake.service"

    const-string v3, "com.samsung.android.singletake.service.core.STPService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->STP_SERVICE_COMPONENT:Landroid/content/ComponentName;

    new-instance v1, Landroid/util/SparseArray;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->sOperationTypes:Landroid/util/SparseArray;

    const/4 v2, 0x0

    const-string v3, "BIND"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string v3, "INITIALIZE"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    const-string v4, "DEINITIALIZE"

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v4, "START"

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x4

    const-string v5, "STOP"

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x5

    const-string v6, "CANCEL"

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x6

    const-string v7, "SET_CAM_CATURE_INFO"

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x7

    const-string v8, "SET_DEVICE_ORIENTATION"

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x8

    const-string v9, "SET_MOTION_INFO"

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x9

    const-string v10, "UNBIND"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0xa

    const-string v10, "GET_RECORDER_SURFACE"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v9, -0x1

    const-string v10, "START_AUDIO_RECORDING"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v9, -0x2

    const-string v10, "STOP_AUDIO_RECORDING"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x33

    const-string v10, "ON_INITIALIZED"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x34

    const-string v10, "ON_DEINITIALIZED"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x35

    const-string v10, "ON_STARTED"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x36

    const-string v10, "ON_STOPPED"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x37

    const-string v10, "ON_CANCELLED"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x38

    const-string v10, "ON_ERROR"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x39

    const-string v10, "ON_RECORDING_STARTED"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x3a

    const-string v10, "ON_RECORDER_SURFACE_READY"

    invoke-virtual {v1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->sOperationType2ErrorMap:Landroid/util/SparseIntArray;

    const/4 v9, -0x3

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, -0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, -0x4

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, -0x5

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x7d0
        0x3e8
        0x3e8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "SingleTakePhoto Library version: 2.0.00.14"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceStarted:Z

    new-instance v0, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;-><init>(Lcom/samsung/android/camera/singletake/STPServiceClient$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceConnection:Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceClient"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;-><init>(Lcom/samsung/android/camera/singletake/STPServiceClient;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceCallbackHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->getInstance()Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/samsung/android/camera/singletake/STPServiceClient;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->sInstance:Lcom/samsung/android/camera/singletake/STPServiceClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/camera/singletake/STPServiceClient;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/camera/singletake/STPServiceClient;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleServiceDisconnected(Z)V

    return-void
.end method

.method static synthetic access$500()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->sOperationTypes:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/camera/singletake/STPServiceClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleOnInitialized(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/camera/singletake/STPServiceClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleOnDeinitialized()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/camera/singletake/STPServiceClient;)Lcom/samsung/android/camera/singletake/STPServiceClient$STPServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceListener:Lcom/samsung/android/camera/singletake/STPServiceClient$STPServiceListener;

    return-object p0
.end method

.method private declared-synchronized bindSerivce()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->setServiceToStart()V

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->bindToService()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized bindToService()Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.singletake.service.core.STPService.EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/camera/singletake/STPServiceClient;->STP_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    iget-object v3, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceConnection:Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;

    const/16 v5, 0x41

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v3, "binding to service failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v3, "binding to service failed! - permission denied!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private bindToServiceWithRetry()Z
    .locals 6

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service Bind try count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , waitPeriod "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceRetryArr:[I

    aget v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v4, v0

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->bindToServiceWithWait(I)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v1, v4

    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private declared-synchronized bindToServiceWithWait(I)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->bindToService()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v4, "binding to service..."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, p1

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget p1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    if-eq p1, v3, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const-string p1, "service connection bind failed!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Client connected to Framework."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_1
    const-string p1, "service connection bind timed out!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "wait on thread failed"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_3
    sget-object p1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "binding to service failed! - permission denied!"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized cancelAudioRecording()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->cancelRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized deinitService(Landroid/os/Message;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->deinitialize()V

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleMessage(Landroid/os/Message;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSServiceInitInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/camera/singletake/STPServiceClient;
    .locals 2

    const-class v0, Lcom/samsung/android/camera/singletake/STPServiceClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->sInstance:Lcom/samsung/android/camera/singletake/STPServiceClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/camera/singletake/STPServiceClient;

    invoke-direct {v1}, Lcom/samsung/android/camera/singletake/STPServiceClient;-><init>()V

    sput-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->sInstance:Lcom/samsung/android/camera/singletake/STPServiceClient;

    :cond_0
    sget-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->sInstance:Lcom/samsung/android/camera/singletake/STPServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getRecorderSurface(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->setServiceToStart()V

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceRetryArr:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->bindToServiceWithWait(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "getRecorderSurface: unable to connect to service"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->notifyOnErrorInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceCallbackHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecorderSurface(): RemoteException occurred! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleRemoteException(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: service is not connected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->notifyOnErrorInternal(I)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleProcess(): RemoteException occurred!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleRemoteException(I)V

    :goto_0
    return-void
.end method

.method private declared-synchronized handleOnDeinitialized()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSServiceInitInProgress:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "onDeinitialized() received, Service init is in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "onDeinitialized() received, proceed to unbind service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleServiceDisconnected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleOnInitialized(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnInitialized(), NOTIFIES_RECORDING_START = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "notify_recording_start"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "audio_surface"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    const-string v2, "audio_surface"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v1, p1}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->initialize(Landroid/view/Surface;)V

    const-string p1, "Service Initialized audio surface get"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio surface get fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "No audio surface received, Audio recording is disabled "

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleRemoteException(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->sOperationType2ErrorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->notifyOnErrorInternal(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleServiceDisconnected(Z)V

    :goto_0
    return-void
.end method

.method private declared-synchronized handleServiceConnected(Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnected(): invalid binder received!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    sget-object p1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "bound to service"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleServiceDisconnected(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "Service is already in unbounded state, returning "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceConnection:Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    iput-boolean v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceStarted:Z

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSServiceInitInProgress:Z

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Single Take service unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v4, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred while unbind service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    iput-boolean v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceStarted:Z

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSServiceInitInProgress:Z

    const-string v0, "Single Take service unbound"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_5
    sget-object v4, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException occurred while unbind service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iput v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    iput-boolean v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceStarted:Z

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSServiceInitInProgress:Z

    const-string v0, "Single Take service unbound"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    const/4 p1, -0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->notifyOnErrorInternal(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_7
    iput v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    iput-boolean v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceStarted:Z

    iput-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSServiceInitInProgress:Z

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Single Take service unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized initService(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSServiceInitInProgress:Z

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->isServiceBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->setServiceToStart()V

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->bindToServiceWithRetry()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "initService: unable to connect to service"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->notifyOnErrorInternal(I)V

    iput-boolean v1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSServiceInitInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceCallbackHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v2, "video_base"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Service Client is Video based "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->disableAudioRecorder()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Service Client is Photo based "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->enableAudioRecorder()V

    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->getAudioSize(Landroid/os/Bundle;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleMessage(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isServiceAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceProxy:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized isServiceBound()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Service is already Bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "State is bound though service is not alive. Changing state to UNBOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyOnErrorInternal(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x38

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "service_error_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string p1, "handleMessage: service cb handler is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setServiceToStart()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceStarted:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "StartService: already started"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.singletake.service.core.STPService.EXECUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/camera/singletake/STPServiceClient;->STP_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceStarted:Z

    sget-object p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "StartService initiated"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartService failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service start failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startAudioRecording()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-virtual {p0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->startRecording()V

    return-void
.end method

.method private declared-synchronized startSingleTakeCapture(Landroid/os/Message;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->getAudioStreamConfig(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopAudioRecording()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mSTPAudioRecorder:Lcom/samsung/android/camera/singletake/STPAudioRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/singletake/STPAudioRecorder;->stopRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unbindService()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleServiceDisconnected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateMessage(Landroid/os/Message;)V
    .locals 1

    iget p0, p1, Landroid/os/Message;->what:I

    if-ltz p0, :cond_0

    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-le p0, v0, :cond_1

    :cond_0
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-gt p0, v0, :cond_2

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, -0x2

    if-lt p0, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid operation type received !!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public registerSTPServiceCallback(Lcom/samsung/android/camera/singletake/STPServiceClient$STPServiceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mServiceListener:Lcom/samsung/android/camera/singletake/STPServiceClient$STPServiceListener;

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->validateMessage(Landroid/os/Message;)V

    sget-object v0, Lcom/samsung/android/camera/singletake/STPServiceClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage() , operationType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/camera/singletake/STPServiceClient;->sOperationTypes:Landroid/util/SparseArray;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "SingleTakePhoto Library version: 2.0.00.14"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->getRecorderSurface(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->unbindService()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->cancelAudioRecording()V

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->startSingleTakeCapture(Landroid/os/Message;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->deinitService(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->initService(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->bindSerivce()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->startAudioRecording()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->stopAudioRecording()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
