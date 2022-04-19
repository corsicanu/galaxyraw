.class public Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraHolder"


# instance fields
.field private final mCamDeviceList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mCamDeviceManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

.field private final mCameraDeviceStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

.field private final mCameraDeviceStateListener:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;

.field private final mCapabilityList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfOpenRequest:I

.field private mPreviousCameraId:I

.field private mSeamlessZoomValueArray:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "stateListener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceList:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mNumberOfOpenRequest:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mPreviousCameraId:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$1;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCameraDeviceStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getManager(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCameraDeviceStateListener:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceList:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;)Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCameraDeviceStateListener:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mNumberOfOpenRequest:I

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mNumberOfOpenRequest:I

    return p1
.end method

.method private calculateSeamlessZoomFactor(Landroid/util/SizeF;D)D
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensorSize",
            "focalLength"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoPhysicalSize()Landroid/util/SizeF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoAvailableFocalLengths()[F

    move-result-object p0

    aget p0, p0, v0

    float-to-double v2, p0

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    float-to-double v0, p0

    div-double/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    float-to-double p0, p0

    div-double/2addr p0, p2

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p2, p0

    :goto_0
    return-wide p2
.end method

.method private createSeamlessZoomValueArray()V
    .locals 9

    const-string v0, "CameraHolder"

    const-string v1, "createSeamlessZoomValueArray"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "createSeamlessZoomValueArray : Physical camera id set for seamless zoom is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    goto :goto_1

    :cond_0
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoPhysicalSize()Landroid/util/SizeF;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoAvailableFocalLengths()[F

    move-result-object v3

    aget v3, v3, v1

    float-to-double v5, v3

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->calculateSeamlessZoomFactor(Landroid/util/SizeF;D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    add-int/lit8 v6, v2, 0x1

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v7

    double-to-int v3, v3

    aput v3, v5, v2

    move v2, v6

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0x7d0
    .end array-data
.end method


# virtual methods
.method closeCamera(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cameraId"
        }
    .end annotation

    const-string v0, "CameraHolder"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeCamera : deviceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getCameraDevice(I)Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Don\'t have prepared device, id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraHolder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public declared-synchronized getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapability : add capability("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - Start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/CapabilityImpl;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapability : add capability("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - End ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no capability for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCapabilityList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSeamlessZoomValueArray()[I
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraHolder"

    const-string v1, "getSeamlessZoomValueArray : Returned because seamless zoom is not supprted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->createSeamlessZoomValueArray()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mSeamlessZoomValueArray:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method openCamera(ILandroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "cameraId",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    const-string v0, "CameraHolder"

    const-string v1, "openCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mNumberOfOpenRequest:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mPreviousCameraId:I

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mPreviousCameraId:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mPreviousCameraId:I

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getDeviceId(I)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mPreviousCameraId:I

    if-eq v7, v3, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openCamera : cameraId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mPreviousCameraId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "), deviceIdString = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCamDeviceManager:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mCameraDeviceStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->openCamDevice(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "openCamera failed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_2
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mNumberOfOpenRequest:I

    if-ne p2, v2, :cond_3

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mPreviousCameraId:I

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->mPreviousCameraId:I

    return-void
.end method
