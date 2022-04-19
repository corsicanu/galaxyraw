.class public Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mExtraDebugInfoApp4:[B

.field private mFormat:I

.field private mPhysicalId:Ljava/lang/String;

.field private mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

.field private mSize:Landroid/util/Size;

.field private mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "captureResult"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;IJLandroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "format",
            "timestamp",
            "captureResult",
            "info"
        }
    .end annotation

    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Landroid/util/Size;IJLandroid/hardware/camera2/TotalCaptureResult;[BLjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;IJLandroid/hardware/camera2/TotalCaptureResult;[BLjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "format",
            "timestamp",
            "captureResult",
            "extraDebugInfoApp4",
            "physicalId",
            "picType",
            "strideInfo"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    iput-wide p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mTimestamp:J

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPhysicalId:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    invoke-static {p9}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;ILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "format",
            "info"
        }
    .end annotation

    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Landroid/util/Size;IJLandroid/hardware/camera2/TotalCaptureResult;[BLjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageInfo"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mTimestamp:J

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPhysicalId:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    return-void
.end method

.method public copyFrom(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "captureResult"
        }
    .end annotation

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mTimestamp:J

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPhysicalId:Ljava/lang/String;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->UNDEFINED:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/media/Image;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    return-void
.end method

.method public copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageInfo"
        }
    .end annotation

    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    iget v0, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    iget-wide v0, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mTimestamp:J

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPhysicalId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPhysicalId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    return-void
.end method

.method public getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method public getExtraDebugInfoApp4()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    return p0
.end method

.method public getPhysicalId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPhysicalId:Ljava/lang/String;

    return-object p0
.end method

.method public getPicType()Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    return-object p0
.end method

.method public getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mTimestamp:J

    return-wide v0
.end method

.method public setCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public setExtraDebugInfoApp4([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraDebugInfoApp4"
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    if-nez v0, :cond_1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    :cond_2
    :goto_0
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    return-void
.end method

.method public setPhysicalId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPhysicalId:Ljava/lang/String;

    return-void
.end method

.method public setPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-void
.end method

.method public setSize(Landroid/util/Size;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    return-void
.end method

.method public setStrideInfo(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strideInfo"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mTimestamp:J

    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "size(%s), format(%d), %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mSize:Landroid/util/Size;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mExtraDebugInfoApp4:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPhysicalId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->mStrideInfo:Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    aput-object p0, v1, v2

    const-string p0, "ImageInfo - size(%s), format(%d), timeStamp(%d), captureResult(%s), extraDebugInfoApp4(%s), physicalId(%s), picType(%s), %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
