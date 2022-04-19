.class Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewCallbackManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V

    return-void
.end method

.method static synthetic lambda$onPreviewFrame$0([BLcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-interface {p2, p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;->onPreviewFrame([BII)V

    return-void
.end method


# virtual methods
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

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->access$100(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->access$200(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->isHistogramEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->access$300(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/HistogramController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/HistogramController;->onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->access$200(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->isLiveThumbnailPreviewCallbackEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    new-array p3, p3, [B

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->access$200(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->getLiveThumbnailPreviewListener()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LiveThumbnailPreviewListener;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$PreviewCallbackManager$x6qyCuSier2iwAyvLXEEsAgyoZU;

    invoke-direct {v1, p3, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CommonEngine$PreviewCallbackManager$x6qyCuSier2iwAyvLXEEsAgyoZU;-><init>([BLcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->access$400(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine$PreviewCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->access$400(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V

    :cond_3
    return-void
.end method
