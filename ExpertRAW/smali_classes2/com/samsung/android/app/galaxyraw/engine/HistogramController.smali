.class public Lcom/samsung/android/app/galaxyraw/engine/HistogramController;
.super Ljava/lang/Object;
.source "HistogramController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;
    }
.end annotation


# static fields
.field private static final HANDLE_PREVIEW_FRAME:I = 0x0

.field private static final HISTOGRAM_FPS:I = 0x8

.field private static final HISTOGRAM_UPDATE_SLOT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HistogramController"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mHandler:Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHistogramUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;

.field private mHistogramUpdateSkipCount:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHistogramUpdateSkipCount:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/engine/HistogramController;Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->updateHistogram(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method private isSkipHitogramUpdateRequired()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHistogramUpdateSkipCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHistogramUpdateSkipCount:I

    return v0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHistogramUpdateSkipCount:I

    return v1
.end method

.method private updateHistogram(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewData",
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHistogramUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/util/HistogramUtil;->getHistogram(Landroid/content/Context;[BII)[I

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;->onHistogramUpdated([I)V

    :cond_0
    return-void
.end method


# virtual methods
.method onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewData",
            "info"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->isSkipHitogramUpdateRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandler:Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HistogramController"

    const-string v2, "onPreviewFrame -- removeMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandler:Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;->removeMessages(I)V

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandler:Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setHistogramUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHistogramUpdateListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;

    return-void
.end method

.method start()V
    .locals 3

    const-string v0, "HistogramController"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HistogramHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;-><init>(Lcom/samsung/android/app/galaxyraw/engine/HistogramController;Landroid/os/Looper;Lcom/samsung/android/app/galaxyraw/engine/HistogramController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandler:Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;

    return-void
.end method

.method stop()V
    .locals 2

    const-string v0, "HistogramController"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->mHandler:Lcom/samsung/android/app/galaxyraw/engine/HistogramController$HistogramHandler;

    :cond_0
    return-void
.end method
