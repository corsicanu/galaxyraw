.class Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;
.super Ljava/lang/Object;
.source "CameraDeviceStateListener.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;


# instance fields
.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mIsCameraDeviceOpened:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-void
.end method


# virtual methods
.method isCameraDeviceOpened()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mIsCameraDeviceOpened:Z

    return p0
.end method

.method public onClosed()V
    .locals 4

    const-string v0, "CloseCameraRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device - CloseCameraRequest : End["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GalaxyRaw/CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mIsCameraDeviceOpened:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CLOSE_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mIsCameraDeviceOpened:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->interruptCaptureRequest()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/4 v0, -0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    return-void
.end method

.method public onError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->interruptCaptureRequest()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleEsdError()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/4 p1, -0x6

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/4 p1, -0x5

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/4 p1, -0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->OPEN_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->interruptRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->OPEN_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    :goto_0
    return-void
.end method

.method public onOpened()V
    .locals 3

    const-string v0, "OpenCameraRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device - OpenCameraRequest : End["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mIsCameraDeviceOpened:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CameraDeviceStateListener;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->OPEN_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method
