.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;
.super Ljava/lang/Object;
.source "BufferForwarder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferSlotGetter"
.end annotation


# instance fields
.field private final image:Landroid/media/Image;

.field private final imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

.field private final totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "image",
            "totalCaptureResult"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->image:Landroid/media/Image;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "imageBuffer"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->image:Landroid/media/Image;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public getBufferSlot()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->access$200(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->imageBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->addLastBuffer(Ljava/lang/Object;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->access$200(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->image:Landroid/media/Image;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->addLastBuffer(Ljava/lang/Object;Landroid/hardware/camera2/TotalCaptureResult;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$BufferSlotGetter;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->access$200(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->removeFirstBuffer()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    move-result-object p0

    return-object p0
.end method
