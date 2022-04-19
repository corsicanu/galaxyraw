.class public Lcom/samsung/android/rapidmomentengine/data/InputFrameData;
.super Ljava/lang/Object;
.source "InputFrameData.java"


# instance fields
.field private imgByteArrayNV21:[B

.field private mCameraId:I

.field private mFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;

.field private mImgByteArrayRGBA:[B

.field private mOrigHeight:I

.field private mOrigWidth:I

.field private mResizedHeight:I

.field private mResizedWidth:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mFaces:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mCameraId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BIIIIJLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BIIIIJ",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v11, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;-><init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BIIIIJLjava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BIIIIJ",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;-><init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[BIIIIJ",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;-><init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[BIIIIJ",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mFaces:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mCameraId:I

    iput-object p10, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mFaces:Ljava/util/List;

    iput p4, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mResizedWidth:I

    iput p5, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mResizedHeight:I

    iput p6, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mOrigWidth:I

    iput p7, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mOrigHeight:I

    iput-wide p8, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mTimeStamp:J

    iput-object p2, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->imgByteArrayNV21:[B

    iput-object p3, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mImgByteArrayRGBA:[B

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mFilePath:Ljava/lang/String;

    iput p11, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mCameraId:I

    return-void
.end method

.method public constructor <init>([BIIIIJ)V
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;-><init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>([BIIIIJI)V
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;-><init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>([BIIJI)V
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;-><init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mCameraId:I

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

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mFaces:Ljava/util/List;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mResizedHeight:I

    return p0
.end method

.method public getImgByteArrayNV21()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->imgByteArrayNV21:[B

    return-object p0
.end method

.method public getImgByteArrayRGBA()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mImgByteArrayRGBA:[B

    return-object p0
.end method

.method public getOrigHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mOrigHeight:I

    return p0
.end method

.method public getOrigWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mOrigWidth:I

    return p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mTimeStamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mResizedWidth:I

    return p0
.end method

.method public setCameraId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mCameraId:I

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

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mFaces:Ljava/util/List;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mResizedHeight:I

    return-void
.end method

.method public setImgByteArrayNV21([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->imgByteArrayNV21:[B

    return-void
.end method

.method public setImgByteArrayRGBA([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mImgByteArrayRGBA:[B

    return-void
.end method

.method public setOrigHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mOrigHeight:I

    return-void
.end method

.method public setOrigWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mOrigWidth:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mTimeStamp:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->mResizedWidth:I

    return-void
.end method
