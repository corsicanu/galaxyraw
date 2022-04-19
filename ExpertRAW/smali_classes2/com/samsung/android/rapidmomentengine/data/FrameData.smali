.class public Lcom/samsung/android/rapidmomentengine/data/FrameData;
.super Ljava/lang/Object;
.source "FrameData.java"


# instance fields
.field private faces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private filePath:Ljava/lang/String;

.field private height:I

.field private mByteArrayBGR:[B

.field private mByteArrayNV21:[B

.field private mCameraId:I

.field private mFullBitmap:Landroid/graphics/Bitmap;

.field private mOrientation:I

.field private mTimestamp:J

.field private origHeight:I

.field private origWidth:I

.field private resultInfo:Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mCameraId:I

    return-void
.end method

.method private static checkPortraitOrientation(II)Z
    .locals 0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getByteArrayBGR()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mByteArrayBGR:[B

    return-object p0
.end method

.method public getByteArrayNV21()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mByteArrayNV21:[B

    return-object p0
.end method

.method public getCameraId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mCameraId:I

    return p0
.end method

.method public getFaces()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->faces:Ljava/util/List;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFullBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mFullBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->height:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mOrientation:I

    return p0
.end method

.method public getOrigHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->origHeight:I

    return p0
.end method

.method public getOrigWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->origWidth:I

    return p0
.end method

.method public getResultInfo()Lcom/samsung/android/rapidmomentengine/data/ResultInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->resultInfo:Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->width:I

    return p0
.end method

.method public setByteArrayBGR([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mByteArrayBGR:[B

    return-void
.end method

.method public setByteArrayNV21([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mByteArrayNV21:[B

    return-void
.end method

.method public setCameraID(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mCameraId:I

    return-void
.end method

.method public setFaces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->faces:Ljava/util/List;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFullBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mFullBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->height:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mOrientation:I

    return-void
.end method

.method public setOrigHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->origHeight:I

    return-void
.end method

.method public setOrigWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->origWidth:I

    return-void
.end method

.method public setResultInfo(Lcom/samsung/android/rapidmomentengine/data/ResultInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->resultInfo:Lcom/samsung/android/rapidmomentengine/data/ResultInfo;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->mTimestamp:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/FrameData;->width:I

    return-void
.end method
