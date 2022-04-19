.class public Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;
.super Ljava/lang/Object;
.source "MakerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MakerHolder"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mCameraId:I

.field private final mConnectionInfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

.field private final mMakerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mMakerSettingsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

.field private final mMakerStateListener:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;

.field private mNumOfConnectingMaker:I

.field private mShootingModeId:I

.field private mTargetCameraId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mConnectionInfoList:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerSettingsList:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mNumOfConnectingMaker:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mShootingModeId:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCameraId:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mTargetCameraId:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$1;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerStateListener:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerStateListener:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder$MakerStateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerSettingsList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mNumOfConnectingMaker:I

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mNumOfConnectingMaker:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mNumOfConnectingMaker:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mNumOfConnectingMaker:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCameraId:I

    return p0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    return-object p0
.end method

.method private getMainCameraId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCameraId:I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result p0

    return p0
.end method

.method private startCallbackHandler()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MakerHolder"

    const-string v1, "startCallbackHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CamDeviceCallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopCallbackHandler()V
    .locals 2

    const-string v0, "MakerHolder"

    const-string v1, "stopCallbackHandler E"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    :cond_0
    const-string p0, "stopCallbackHandler X"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method addConnectionInfo(ILcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singleCameraId",
            "connectionInfo"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mConnectionInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method clearConnectionInfo()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mConnectionInfoList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public dumpLastCaptureResult()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->dumpLatestRepeatingCaptureResult()V

    return-void
.end method

.method getCallbackHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getConnectionInfo(I)Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleCameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mConnectionInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;

    return-object p0
.end method

.method getCurrentMaker()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getTargetCameraId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    return-object p0
.end method

.method getCurrentMaker(I)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleCameraId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    return-object p0
.end method

.method public getLatestRepeatingCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getLatestRepeatingCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method

.method getMakerPublicSettings()Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getTargetCameraId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerSettingsList:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "MakerHolder"

    const-string v0, "getMakerPublicSettings : maker setting is not exist"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerSettingsList:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;

    return-object p0
.end method

.method getMakerPublicSettings(I)Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleCameraId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerSettingsList:Ljava/util/Map;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "getMakerPublicSettings : maker setting is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerSettingsList:Ljava/util/Map;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;

    return-object p0
.end method

.method getMakerStateCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    return-object p0
.end method

.method public getNumberOfPostProcessorSequenceStacked()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getNumberOfPostProcessorSequenceStacked()I

    move-result p0

    return p0
.end method

.method public getTargetCameraId()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mTargetCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMainCameraId()I

    move-result p0

    return p0
.end method

.method initializeMaker(IILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Landroid/os/Handler;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "cameraId",
            "engine",
            "handler"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mShootingModeId:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCameraId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMainCameraId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mTargetCameraId:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;->getMakerClass(IILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;->build(Ljava/lang/Class;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeMaker : Created maker - cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", maker="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdaptiveLensModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setAdaptiveLensModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setAgifEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setAgifEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBurstPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setBurstPictureCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setBurstPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setBurstShotFpsCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setCompositionGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setCompositionGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFaceDetectionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setFaceDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFoodEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setFoodEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setIntelligentGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setIntelligentGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MakerHolder"

    const-string p1, "Failed to set preview callback"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setMultiViewCropRoiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setMultiViewInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutFocusEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$OutFocusEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setOutFocusEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$OutFocusEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPalmDetectionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setPalmDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPreviewSnapShotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setPreviewSnapShotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreviewStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setPreviewStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setQrCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setQRCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setRawPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setRawPictureCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setRawPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setRecordStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordStateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setRecordStateCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setRecordStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setRecordingMotionSpeedModeInfoCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setRecordingMotionSpeedModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RecordingMotionSpeedModeInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSceneDetectionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSceneDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSingleTakePictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSTPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSmartScanEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSmartScanEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MakerHolder"

    const-string p1, "Failed to set sub preview callback"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MakerHolder"

    const-string v1, "setSuperSlowMotionInfoCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSwFaceDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setSwFaceDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setTargetCameraId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetCameraId"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mTargetCameraId:I

    return-void
.end method

.method public setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setVideoSnapshotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setVideoSnapshotCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->startCallbackHandler()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->stopCallbackHandler()V

    return-void
.end method

.method updateMultiMaker(ILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "multiCameraId",
            "engine",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCameraId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mShootingModeId:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->initializeMaker(IILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Landroid/os/Handler;)V

    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCameraId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMainCameraId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mTargetCameraId:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMainCameraId()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    return-void
.end method

.method updateSingleMaker(ILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singleCameraId",
            "engine",
            "handler"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCameraId:I

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mShootingModeId:I

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;->getMakerClass(IILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", maker="

    const-string v4, "MakerHolder"

    if-nez v2, :cond_0

    invoke-static {v1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerBuilder;->build(Ljava/lang/Class;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSingleMaker : Initialized new maker - cameraId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mCameraId:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mTargetCameraId:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->mMakerList:Ljava/util/Map;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSingleMaker : maker - cameraId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
