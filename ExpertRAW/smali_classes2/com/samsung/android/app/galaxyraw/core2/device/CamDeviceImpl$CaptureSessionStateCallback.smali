.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CamDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionStateCallback"
.end annotation


# instance fields
.field private final mSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "sessionStateCallback"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->mSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClosed$0$CamDeviceImpl$CaptureSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "post SessionCallback(onClosed) - session(%s)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;->onDisconnected()V

    return-void
.end method

.method public synthetic lambda$onConfigureFailed$1$CamDeviceImpl$CaptureSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "post SessionCallback(onConfigureFailed) - session(%s)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->mSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;->onConfigureFailed()V

    return-void
.end method

.method public synthetic lambda$onConfigured$2$CamDeviceImpl$CaptureSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "post SessionCallback(onConfigured) - session(%s)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->mSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;->onConfigured()V

    return-void
.end method

.method public synthetic lambda$onReady$3$CamDeviceImpl$CaptureSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "post SessionCallback(onReady) - session(%s)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->mSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;->onReady()V

    return-void
.end method

.method public synthetic lambda$onSurfacePrepared$4$CamDeviceImpl$CaptureSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "post SessionCallback(onSurfacePrepared) - session(%s)"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->mSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;->onSurfacePrepared(Landroid/view/Surface;)V

    return-void
.end method

.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CameraCaptureSession StateCallback onActive - session(%s)"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "session"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "CameraCaptureSession StateCallback onClosed - session(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1002(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1300(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1400(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1500(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$pU9oFB2GkB0pf14M-K4FNffXVLI;

    invoke-direct {v2, p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$pU9oFB2GkB0pf14M-K4FNffXVLI;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onClosed) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onClosed) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "session"
        }
    .end annotation

    const-string v0, "CreateCaptureSession"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "CameraCaptureSession StateCallback onConfigureFailed - session(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1702(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1002(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$wOkPub31IW5o3HwnMLJdxCUPEz8;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$wOkPub31IW5o3HwnMLJdxCUPEz8;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onConfigureFailed) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onConfigureFailed) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "session"
        }
    .end annotation

    const-string v0, "CreateCaptureSession"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    const-string v3, "CameraCaptureSession StateCallback onConfigured - session(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1702(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1800(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "CameraCaptureSession StateCallback onConfigured - CamDevice is closed"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1002(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->mSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$jBaO7u7OOCK6OL1fvJK2lk3cbO8;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$jBaO7u7OOCK6OL1fvJK2lk3cbO8;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onConfigured) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onConfigured) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CameraCaptureSession StateCallback onReady - session(%s)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1900(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$1FgN3E6hXjKsWephyRbEgYdiZmM;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$1FgN3E6hXjKsWephyRbEgYdiZmM;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onReady) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onReady) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "surface"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "CameraCaptureSession StateCallback onSurfacePrepared - session %s, surface %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->getSendSessionCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$ikzwFoCq0c1Cfmbsj1BfdBqiXsk;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CaptureSessionStateCallback$ikzwFoCq0c1Cfmbsj1BfdBqiXsk;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onSurfacePrepared) fail - post fail"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CaptureSessionStateCallback;->this$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->access$200(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "post SessionCallback(onSurfacePrepared) fail - postHandler is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
