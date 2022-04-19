.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CamDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraDeviceStateCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOpened$0$CamDeviceImpl$CameraDeviceStateCallbacks(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_DEVICE_SWITCHING:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    new-instance v1, Landroid/util/Pair;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$900(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "OpenCamera"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    const-string v3, "CameraDeviceStateCallbacks onClosed - cameraDevice(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$300(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;->onCameraDeviceClosed(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraDevice"
        }
    .end annotation

    const-string v0, "OpenCamera"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "CameraDeviceStateCallbacks onDisconnected - cameraDevice(%s)"

    invoke-static {v0, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$300(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;->onCameraDeviceDisconnected(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "error"
        }
    .end annotation

    const-string v0, "OpenCamera"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "CameraDeviceStateCallbacks onError - cameraDevice(%s), error %d"

    invoke-static {v0, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$300(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-interface {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;->onCameraDeviceError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;I)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraDevice"
        }
    .end annotation

    const-string v0, "OpenCamera"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "[CAMFWKPI] CameraDeviceStateCallbacks onOpened E - cameraDevice(%s)"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v2, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->createBuilder()Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_FIRST_ENTRANCE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$400(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->SAMSUNG_PACKAGES:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$500(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_SAMSUNG_CAMERA:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CameraDeviceStateCallbacks$pM7RFe58_vm6oZE5BqStKsrGqQg;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CameraDeviceStateCallbacks$pM7RFe58_vm6oZE5BqStKsrGqQg;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpened - rawParam "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$700(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureNoFirstSetParam()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->applyToCameraDevice(Landroid/hardware/camera2/CameraDevice;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemCameraParameter applyToCameraDevice is failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$802(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$300(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;->onCameraDeviceOpened(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string v0, "[CAMFWKPI] CameraDeviceStateCallbacks onOpened X - cameraDevice(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
