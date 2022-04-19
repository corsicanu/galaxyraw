.class public Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;
.super Ljava/lang/Object;
.source "CamDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;,
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;,
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private final mAvailabilityCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCamCapabilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private final mTorchCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCamCapabilityMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mAvailabilityCallbackMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mTorchCallbackMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CamDeviceManager - context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mContext:Landroid/content/Context;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public static getManager(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getOptimalCameraConfig(Lcom/google/ar/core/Session;Ljava/lang/String;Landroid/util/Size;)Lcom/google/ar/core/CameraConfig;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedSession",
            "cameraId",
            "referTextureSize"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/ar/core/CameraConfigFilter;

    invoke-direct {v0, p1}, Lcom/google/ar/core/CameraConfigFilter;-><init>(Lcom/google/ar/core/Session;)V

    invoke-virtual {p1, v0}, Lcom/google/ar/core/Session;->getSupportedCameraConfigs(Lcom/google/ar/core/CameraConfigFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ar/core/CameraConfig;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getCameraId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getImageSize()Landroid/util/Size;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getTextureSize()Landroid/util/Size;

    move-result-object v4

    aput-object v4, v6, v3

    const-string v3, "getOptimalCameraConfig - Supported camera config for ArCore : camera id(%s), cpu image size(%s), gpu texture size(%s)"

    invoke-static {v7, v3, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getImageSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getImageSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-lt v1, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ar/core/CameraConfig;

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getImageSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getImageSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    if-lt v1, v7, :cond_3

    invoke-virtual {v2}, Lcom/google/ar/core/CameraConfig;->getTextureSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v7, 0x3ca3d70a    # 0.02f

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ar/core/CameraConfig;

    invoke-virtual {p3}, Lcom/google/ar/core/CameraConfig;->getTextureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Lcom/google/ar/core/CameraConfig;->getTextureSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_5

    move-object p1, p3

    move v0, v1

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/ar/core/CameraConfig;->getCameraId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v5

    invoke-virtual {p1}, Lcom/google/ar/core/CameraConfig;->getImageSize()Landroid/util/Size;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p1}, Lcom/google/ar/core/CameraConfig;->getTextureSize()Landroid/util/Size;

    move-result-object p3

    aput-object p3, p2, v3

    const-string p3, "getOptimalCameraConfig - Selected optimal camera config for ArCore : camera id(%s), cpu image size(%s), gpu texture size(%s)"

    invoke-static {p0, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-object p1
.end method


# virtual methods
.method public getCamCapability(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCamCapabilityMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCamCapabilityMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;-><init>(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCamCapabilityMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCamCapability failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "getCamCapability failed"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "cameraManager is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "cameraManager is null"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openArCoreCamDevice(Ljava/lang/String;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Landroid/os/Handler;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "arCoreReferTextureSize",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p4

    const-string v3, "openArCoreCamDevice"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v3, "cameraId"

    invoke-static {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v3, "arCoreReferTextureSize"

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "callback"

    move-object/from16 v6, p3

    invoke-static {v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const-string v8, "openArCoreCamDevice - cameraId %s, arCoreReferTextureSize %s"

    invoke-static {v3, v8, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v5, :cond_3

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    new-instance v11, Lcom/google/ar/core/Session;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/google/ar/core/Session$Feature;->SHARED_CAMERA:Lcom/google/ar/core/Session$Feature;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-direct {v11, v3, v5}, Lcom/google/ar/core/Session;-><init>(Landroid/content/Context;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/UnavailableException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAfAvailableModes()[I

    move-result-object v3

    invoke-static {v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v11}, Lcom/google/ar/core/Session;->getConfig()Lcom/google/ar/core/Config;

    move-result-object v3

    sget-object v5, Lcom/google/ar/core/Config$FocusMode;->AUTO:Lcom/google/ar/core/Config$FocusMode;

    invoke-virtual {v3, v5}, Lcom/google/ar/core/Config;->setFocusMode(Lcom/google/ar/core/Config$FocusMode;)Lcom/google/ar/core/Config;

    invoke-virtual {v11, v3}, Lcom/google/ar/core/Session;->configure(Lcom/google/ar/core/Config;)V

    :cond_0
    invoke-direct {p0, v11, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getOptimalCameraConfig(Lcom/google/ar/core/Session;Ljava/lang/String;Landroid/util/Size;)Lcom/google/ar/core/CameraConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v11, v3}, Lcom/google/ar/core/Session;->setCameraConfig(Lcom/google/ar/core/CameraConfig;)V

    invoke-virtual {v11}, Lcom/google/ar/core/Session;->getSharedCamera()Lcom/google/ar/core/SharedCamera;

    move-result-object v12

    :try_start_1
    new-instance v13, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mContext:Landroid/content/Context;

    move-object v2, v13

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p3

    move-object v7, v8

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;-><init>(Landroid/content/Context;Lcom/google/ar/core/Session;Lcom/google/ar/core/SharedCamera;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/os/Handler;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    :try_start_2
    const-string v2, "OpenCamera"

    invoke-static {v2, v10}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v13}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v2

    invoke-virtual {v12, v2, v9}, Lcom/google/ar/core/SharedCamera;->createARDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v9}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v11}, Lcom/google/ar/core/Session;->close()V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v11}, Lcom/google/ar/core/Session;->close()V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v11}, Lcom/google/ar/core/Session;->close()V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create camDevice fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v11}, Lcom/google/ar/core/Session;->close()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/ArCoreOperationException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v10

    aput-object v2, v4, v7

    const-string v1, "can\'t find cameraConfig for ArCore with cameraId(%s) and referred textureSize(%s)"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/ArCoreOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/ArCoreOperationException;

    const-string v2, "createForSharedCamera is failed"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/ArCoreOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "camera permission is not granted"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "cameraManager is null"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openArCoreCamDevice(Ljava/lang/String;Lcom/google/ar/core/Session;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Landroid/os/Handler;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "sharedSession",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    const-string v0, "openArCoreCamDevice"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "sharedSession"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback"

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "openArCoreCamDevice - cameraId %s"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_1

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v8

    invoke-virtual {p2}, Lcom/google/ar/core/Session;->getSharedCamera()Lcom/google/ar/core/SharedCamera;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mContext:Landroid/content/Context;

    move-object v3, v1

    move-object v5, p2

    move-object v6, v0

    move-object v7, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;-><init>(Landroid/content/Context;Lcom/google/ar/core/Session;Lcom/google/ar/core/SharedCamera;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    :try_start_1
    const-string p2, "OpenCamera"

    invoke-static {p2, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object p2

    invoke-virtual {v0, p2, p4}, Lcom/google/ar/core/SharedCamera;->createARDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "create camDevice fail - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "camera permission is not granted"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "cameraManager is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openCamDevice(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Landroid/os/Handler;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "lastCameraId",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    const-string v0, "OpenCamDevice"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v3, "[CAMFWKPI] openCamDevice E - cameraId %s lastCameraId %s"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "cameraId"

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v1, "callback"

    invoke-static {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v3, :cond_1

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->getCamCapability(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v6

    move-object v3, v9

    move-object v5, p3

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v9}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    :try_start_1
    const-string p2, "OpenCamera"

    invoke-static {p2, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    const-string p2, "[CAMFWKPI] OpenCamera E "

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    const-string p0, "[CAMFWKPI] OpenCamera X "

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "[CAMFWKPI] openCamDevice X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "create camDevice fail - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "camera permission is not granted"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "cameraManager is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerAvailabilityCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAvailabilityCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mAvailabilityCallbackMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mAvailabilityCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "cameraManager is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerTorchCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerTorchCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mTorchCallbackMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mTorchCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "cameraManager is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "enabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "setTorchMode - cameraId %s, enabled %b"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "cameraManager is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterAvailabilityCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterAvailabilityCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mAvailabilityCallbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mAvailabilityCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$AvailabilityCallbackBridge;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "CameraManager is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterTorchCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterTorchCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mTorchCallbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mTorchCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager$TorchCallbackBridge;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p1, "CameraManager is null"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
