.class public Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;
.super Ljava/lang/Object;
.source "PPPStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private GALAXY_RAW_PACKAGE:Ljava/lang/String;

.field private isCallbackRegistered:Z

.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mExecutorResult:Ljava/util/concurrent/ScheduledFuture;

.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mIsStateChangeScheduled:Z

.field private mProcessingState:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->startBackgroundHandler()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->isProcessingStateChangeRequired(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mIsStateChangeScheduled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mIsStateChangeScheduled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mExecutorResult:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mExecutorResult:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private isProcessingStateChangeRequired(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentState"
        }
    .end annotation

    const-string v0, "service.camera.client"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->getProcessingState()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->GALAXY_RAW_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startBackgroundHandler()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mBackgroundHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public getProcessingState()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mProcessingState:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    return-object p0
.end method

.method public initializeStateManager(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "initializeStateManager"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mContext:Landroid/content/Context;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->GALAXY_RAW_PACKAGE:Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;->RESUMED:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mProcessingState:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    return-void
.end method

.method public registerCameraAvailabilityCallabck()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->isCallbackRegistered:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "Register camera availability callback"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->isCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method public setProcessingState(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processingState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mProcessingState:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    return-void
.end method

.method public unRegisterCameraAvailabilityCallabck()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->isCallbackRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "Unregister camera availability callback"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->isCallbackRegistered:Z

    :cond_0
    return-void
.end method
