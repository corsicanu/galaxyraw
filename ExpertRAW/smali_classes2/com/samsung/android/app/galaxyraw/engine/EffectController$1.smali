.class Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/EffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPictureTaken$0$EffectController$1()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$YYb5FxN5zsFFMSVR1QMYARKBwtQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$YYb5FxN5zsFFMSVR1QMYARKBwtQ;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EffectProcessorListener.onInfo : message = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EffectController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTaken(ILjava/nio/ByteBuffer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pictureData",
            "imageFormat"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectProcessorListener.onPictureTaken : message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isWaiting(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {p2, p1, p3, v0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailableThumbnailSizes()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$100(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->findThumbnailSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object v0

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v3

    invoke-virtual {v0, p2, p1, v2, v3}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPictureTaken : Buffer allocation took "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p2, p3, :cond_1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    :goto_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object p3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;JLcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$1$whKxq-RpQgleWVprcmN7cHzcw3E;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$EffectController$1$whKxq-RpQgleWVprcmN7cHzcw3E;-><init>(Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startTransientCaptureStopTimer()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/EffectController$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->access$000(Lcom/samsung/android/app/galaxyraw/engine/EffectController;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    :cond_2
    return-void
.end method

.method public onPictureTaken(I[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pictureData",
            "imageFormat"
        }
    .end annotation

    return-void
.end method
