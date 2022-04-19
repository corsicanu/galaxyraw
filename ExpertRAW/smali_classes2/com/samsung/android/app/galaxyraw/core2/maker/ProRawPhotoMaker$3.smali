.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;
.super Ljava/lang/Object;
.source "ProRawPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;-><init>(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PictureCallback onError %d"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$102(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    return-void
.end method

.method public onPictureSequenceCompleted(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "frameNumber"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "PictureCallback onPictureSequenceCompleted - sequenceId %d, frameNumber %d"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "extraBundle",
            "camCapability",
            "hasThumbnailImage"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v3, 0x1

    aput-object p4, v1, v3

    const-string p4, "PictureCallback onPictureTaken - pictureData %s, hasThumbnailImage %b"

    invoke-static {v0, p4, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p4, p4, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lockIfFlagEnabled()Z

    move-result p4

    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 p3, 0x100

    if-eq v0, p3, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PictureCallback onPictureTaken fail - unsupported pictureFormat "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->sendJpegThumbnail(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p4, p4, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p3, p4, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_MERGED_RAW_FRAME:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_TONE_MAP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_SEMANTIC_MAP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_RESULT_CAPTURE_SIZE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$100(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getExifDateTime(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$100(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->setDateTime(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$100(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->setRawData(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Landroid/util/Size;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "PictureCallback onPictureTaken - failed to receive required data for dng packing"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$200(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->setCompressConfiguration(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$200(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    move-result-object p3

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->INPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->set(Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw p1

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "PictureCallback onPictureTaken fail - pictureProcess is not enabled"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, p2, v2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$102(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    :goto_2
    return-void
.end method

.method public onShutter(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onShutter(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
