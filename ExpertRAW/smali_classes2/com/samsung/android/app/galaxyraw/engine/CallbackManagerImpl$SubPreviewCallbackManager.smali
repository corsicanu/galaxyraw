.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubPreviewCallbackManager"
.end annotation


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mIsFrameHandling:Z

.field private mListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;

.field private final mListenerLock:Ljava/lang/Object;

.field private mTargetHeight:I

.field private mTargetWidth:I

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mHandlerLock:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mListenerLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->initialize(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->deinitialize()V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->setZoomMapViewListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;)V

    return-void
.end method

.method private deinitialize()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->stopCallbackHandler()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mIsFrameHandling:Z

    return-void
.end method

.method private initialize(Landroid/util/Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewSize"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mIsFrameHandling:Z

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mTargetWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mTargetHeight:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->startCallbackHandler()V

    return-void
.end method

.method private setZoomMapViewListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startCallbackHandler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "CallbackManager"

    const-string v2, "startCallbackHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SubPreviewCallbackThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackHandler:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private stopCallbackHandler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    const-string v1, "CallbackManager"

    const-string v2, "stopCallbackHandler - start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackHandler:Landroid/os/Handler;

    const-string p0, "CallbackManager"

    const-string v1, "stopCallbackHandler - end"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$onPreviewFrame$0$CallbackManagerImpl$SubPreviewCallbackManager(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mTargetHeight:I

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mTargetWidth:I

    const/16 v7, 0x5a

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$ZoomMapViewListener;->onPreviewFrame(Landroid/graphics/Bitmap;)V

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mIsFrameHandling:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewData",
            "info",
            "camDevice"
        }
    .end annotation

    iget-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mIsFrameHandling:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mIsFrameHandling:Z

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;->mCallbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    monitor-exit p3

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SubPreviewCallbackManager$BEwC3MYUYuT6321ytDvoNrb15LA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SubPreviewCallbackManager;Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
