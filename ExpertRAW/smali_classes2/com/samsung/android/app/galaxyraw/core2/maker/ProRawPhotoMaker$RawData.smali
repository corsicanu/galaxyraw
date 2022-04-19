.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;
.super Ljava/lang/Object;
.source "ProRawPhotoMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawData"
.end annotation


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mDatetime:Ljava/lang/String;

.field private mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field private mRawBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field private mRawDataFormat:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

.field private mRawSize:Landroid/util/Size;

.field private mSemanticMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field private mToneMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "rawDataFormat"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mToneMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mSemanticMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawSize:Landroid/util/Size;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawDataFormat:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mDatetime:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawDataFormat:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    return-void
.end method


# virtual methods
.method dngCreate()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "RawBuffer has not filled."

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "JpegBuffer has not filled."

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mDatetime:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v2, "DateTime has not filled."

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$300(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawSize:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->loadDngMetadata(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/util/Size;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$300(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->setJpegBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$300(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawDataFormat:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->setRawDataFormat(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$300(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mDatetime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->setDateTime(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawSize:Landroid/util/Size;

    const/16 v3, 0x20

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->EMPTY_STRIDE_INFO:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Landroid/util/Size;IJLandroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    invoke-static {v0, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$300(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->INPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->set(Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->release()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->release()V

    return-void
.end method

.method getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method setDateTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mDatetime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->dngCreate()V

    return-void
.end method

.method setJpegData(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpegBuffer"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mJpegBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    return-void
.end method

.method setRawData(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Landroid/util/Size;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rawBuffer",
            "picSize",
            "captureResult"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mRawSize:Landroid/util/Size;

    return-void
.end method

.method setSemanticMap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "semanticMap"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mSemanticMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    return-void
.end method

.method setToneMap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toneMap"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->mToneMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    return-void
.end method
