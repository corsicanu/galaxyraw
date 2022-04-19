.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;
.super Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;
.source "BufferCallbackForwarder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BurstPictureBufferCallbackForwarder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder<",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;)V

    return-object v0
.end method


# virtual methods
.method public onBurstPictureCompleted(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->mBufferForwarder:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->notify(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBurstPictureTaken(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "captureResult",
            "camDevice"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->mBufferForwarder:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->forward(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method public onBurstPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "camDevice"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->mBufferForwarder:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->forward(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method public setBufferForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferForwarder"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->setForwardCallback(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardCallback;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->mBufferForwarder:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    return-void
.end method
