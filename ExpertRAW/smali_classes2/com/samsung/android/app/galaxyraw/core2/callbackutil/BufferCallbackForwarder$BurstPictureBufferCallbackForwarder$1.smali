.class Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder$1;
.super Ljava/lang/Object;
.source "BufferCallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->setBufferForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferForward(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardData"
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->format:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->format:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "BurstPictureBufferCallbackForwarder setBufferForwarder - unsupported pictureFormat %d"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->mTarget:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->forwardBuffer:Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iget v2, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->format:I

    iget-object v3, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->size:Landroid/util/Size;

    iget-object v4, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->captureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;-><init>(ILandroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->camDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;->onBurstPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :goto_0
    return-void
.end method

.method public onNotify(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardData"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->notifyObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->mTarget:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->notifyObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->camDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;->onBurstPictureCompleted(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    return-void
.end method
