.class Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailCallbackManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    return-void
.end method


# virtual methods
.method public onDraftThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "draftThumbnailData",
            "info",
            "camDevice"
        }
    .end annotation

    const-string p3, "PictureCallbackManager"

    const-string v0, "onDraftThumbnailTaken"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onDraftThumbnailTaken : Camera is not running, return."

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$902(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;Z)Z

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->getFormat()I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {p3, p1, v0, p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    return-void
.end method

.method public onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "thumbnailData",
            "info",
            "camDevice"
        }
    .end annotation

    const-string p3, "PictureCallbackManager"

    const-string v0, "onThumbnailTaken"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onDraftThumbnailTaken : Camera is not running, return."

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getEffectController()Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorTakePictureRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onThumbnailTaken : Returned because effect processor is activated."

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_SCAN_MANUAL_CROP:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    if-ne v0, v1, :cond_2

    const-string p0, "onThumbnailTaken : Returned because smart scan doesn\'t support thumbnail."

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->getFormat()I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {p3, p1, v0, p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    return-void
.end method
