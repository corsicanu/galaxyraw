.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewSnapShotCallbackManager"
.end annotation


# instance fields
.field mPreviewSnapshotListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->mPreviewSnapshotListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 2

    const-string v0, "CallbackManager"

    const-string v1, "PreviewSnapShotCallbackManager.handleError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotError()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public onError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation

    const-string p1, "CallbackManager"

    const-string v0, "PreviewSnapShotCallbackManager.onError"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$h0eqYEHKNa2FqpIoJcZETr5UWTk;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$h0eqYEHKNa2FqpIoJcZETr5UWTk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreviewSnapShotTaken(Ljava/nio/ByteBuffer;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewSnapData",
            "previewSnapSize",
            "camDevice"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    new-array p3, p3, [B

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string p1, "CallbackManager"

    const-string v0, "onPreviewSnapshotTaken : start"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, p3, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->mPreviewSnapshotListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p3, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    const-string p0, "onPreviewSnapshotTaken : end"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setPreviewSnapShotListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->mPreviewSnapshotListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$PreviewSnapShotListener;

    return-void
.end method
