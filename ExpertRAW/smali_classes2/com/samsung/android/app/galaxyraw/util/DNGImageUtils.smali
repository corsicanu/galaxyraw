.class public Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;
.super Ljava/lang/Object;
.source "DNGImageUtils.java"


# static fields
.field private static final IFD_SIZE:I = 0xc

.field static final TAG:Ljava/lang/String; = "DNGImageUtils"

.field private static final TIFF_TAG_IMAGE_LENGTH:I = 0x101

.field private static final TIFF_TAG_IMAGE_WIDTH:I = 0x100

.field private static final TIFF_TAG_STRIP_BYTE_COUNTS:I = 0x117

.field private static final TIFF_TAG_STRIP_OFFSETS:I = 0x111

.field private static final TIFF_TAG_SUB_IFDS:I = 0x14a

.field private static final mMainIFDStart:I = 0xa


# instance fields
.field private mByteIteration:I

.field private mDNGTag:I

.field private mDataByteArray:[B

.field private mFileSize:J

.field private mJpegHeight:I

.field private mJpegLength:I

.field private mJpegStripOffset:I

.field private mJpegWidth:I

.field private mNumIfd0:I

.field private mNumIfd1:I

.field private mRawHeight:I

.field private mRawStripOffset:I

.field private mRawStripOffsetLoc:I

.field private mRawWidth:I

.field private mSubIfdoffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawStripOffsetLoc:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawStripOffset:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mNumIfd0:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mNumIfd1:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mSubIfdoffset:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawWidth:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawHeight:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegWidth:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegHeight:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegStripOffset:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDNGTag:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mFileSize:J

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    return-void
.end method

.method private getImageDimension([I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imDimensions"
        }
    .end annotation

    const-string v0, "DNGImageUtils"

    const-string v1, "getImageDimension - E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B

    array-length v2, v1

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mFileSize:J

    const/16 v2, 0x8

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mNumIfd0:I

    const/16 v1, 0x8

    const/4 v3, 0x2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mNumIfd0:I

    const/16 v7, 0x101

    const/16 v8, 0x100

    if-ge v4, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B

    iget v9, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    aget-byte v10, v6, v9

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v2

    or-int/2addr v10, v11

    iput v10, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDNGTag:I

    if-ne v10, v8, :cond_0

    add-int/lit8 v8, v9, 0x8

    add-int/2addr v8, v1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v5

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v2

    or-int/2addr v8, v11

    add-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v3

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v8, v11

    add-int/lit8 v11, v9, 0x8

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v8, v11

    iput v8, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawWidth:I

    :cond_0
    if-ne v10, v7, :cond_1

    add-int/lit8 v7, v9, 0x8

    add-int/2addr v7, v1

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v9, 0x8

    add-int/2addr v8, v5

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x8

    add-int/2addr v8, v3

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x8

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawHeight:I

    :cond_1
    const/16 v7, 0x111

    if-ne v10, v7, :cond_2

    add-int/lit8 v7, v9, 0x8

    add-int/2addr v7, v1

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v9, 0x8

    add-int/2addr v8, v5

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x8

    add-int/2addr v8, v3

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x8

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawStripOffsetLoc:I

    :cond_2
    const/16 v7, 0x14a

    if-ne v10, v7, :cond_3

    add-int/lit8 v7, v9, 0x8

    add-int/2addr v7, v1

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v9, 0x8

    add-int/2addr v8, v5

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x8

    add-int/2addr v8, v3

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x8

    add-int/lit8 v8, v8, 0x3

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mSubIfdoffset:I

    :cond_3
    add-int/lit8 v9, v9, 0xc

    iput v9, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mSubIfdoffset:I

    if-gtz v4, :cond_5

    const-string v2, "getImageDimension fail - the DNG file has no preview jpeg buffer or been corrupted"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegWidth:I

    aput v0, p1, v1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegHeight:I

    aput v0, p1, v5

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    aput p0, p1, v3

    return-void

    :cond_5
    iput v4, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B

    aget-byte v9, v6, v4

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v4, 0x1

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v2

    or-int/2addr v6, v9

    iput v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mNumIfd1:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    move v4, v1

    :goto_1
    iget v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mNumIfd1:I

    if-ge v4, v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B

    iget v9, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    aget-byte v10, v6, v9

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v2

    or-int/2addr v10, v11

    iput v10, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDNGTag:I

    if-ne v10, v8, :cond_6

    add-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v1

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v9, 0x8

    add-int/2addr v12, v5

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v2

    or-int/2addr v11, v12

    add-int/lit8 v12, v9, 0x8

    add-int/2addr v12, v3

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v9, 0x8

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    iput v11, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegWidth:I

    :cond_6
    if-ne v10, v7, :cond_7

    add-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v1

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v9, 0x8

    add-int/2addr v12, v5

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v2

    or-int/2addr v11, v12

    add-int/lit8 v12, v9, 0x8

    add-int/2addr v12, v3

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v9, 0x8

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    iput v11, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegHeight:I

    :cond_7
    const/16 v11, 0x117

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v9, 0x8

    add-int/2addr v10, v1

    aget-byte v10, v6, v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v5

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v2

    or-int/2addr v10, v11

    add-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v3

    aget-byte v11, v6, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/lit8 v11, v9, 0x8

    add-int/lit8 v11, v11, 0x3

    aget-byte v6, v6, v11

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v10

    iput v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    :cond_8
    add-int/lit8 v9, v9, 0xc

    iput v9, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    iget v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegWidth:I

    aput v2, p1, v1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegHeight:I

    aput v1, p1, v5

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    aput p0, p1, v3

    const-string p0, "getImageDimension - X"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getJpegBuffer(Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageBuffer"
        }
    .end annotation

    const-string v0, "DNGImageUtils"

    const-string v1, "getJpegBuffer - E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mSubIfdoffset:I

    if-gtz v1, :cond_0

    const-string p0, "getJpegBuffer fail - the DNG file has no preview jpeg buffer or been corrupted"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawStripOffsetLoc:I

    add-int/lit8 v4, v3, 0x8

    const/4 v5, 0x0

    add-int/2addr v4, v5

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v3, 0x8

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v6, v3, 0x8

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mRawStripOffset:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mNumIfd1:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    move v1, v5

    :goto_0
    iget v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mNumIfd1:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDNGTag:I

    const/16 v6, 0x100

    if-ne v4, v6, :cond_1

    add-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v5

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegWidth:I

    :cond_1
    const/16 v6, 0x101

    if-ne v4, v6, :cond_2

    add-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v5

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegHeight:I

    :cond_2
    const/16 v6, 0x111

    if-ne v4, v6, :cond_3

    add-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v5

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegStripOffset:I

    :cond_3
    const/16 v6, 0x117

    if-ne v4, v6, :cond_4

    add-int/lit8 v4, v3, 0x8

    add-int/2addr v4, v5

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v3, 0x8

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v6, v3, 0x8

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    add-int/lit8 v6, v3, 0x8

    add-int/lit8 v6, v6, 0x3

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    :cond_4
    add-int/lit8 v3, v3, 0xc

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mByteIteration:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    if-gtz v1, :cond_6

    const-string p1, "getJpegBuffer fail - DNG file has no jpeg length data or been corrupted"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    return p0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegStripOffset:I

    add-int/2addr v1, v3

    invoke-static {v2, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    invoke-virtual {p1, v1, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const-string p1, "getJpegBuffer - X"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mJpegLength:I

    return p0
.end method

.method private loadDng(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileLoc"
        }
    .end annotation

    const-string v0, "DNGImageUtils"

    const-string v1, "loadDNG - E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "loadDNG - X"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "loading fail - dng file reading failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public getJpegBufferDataFromDng(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readPath"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->loadDng(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x3

    new-array v1, p1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->getImageDimension([I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJpegBufferDataFromDng - Image width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Image height: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Image length: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x2

    aget v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "DNGImageUtils"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, v1, v3

    mul-int/2addr v2, p1

    aget p1, v1, v4

    mul-int/2addr v2, p1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, -0x1

    aget v3, v1, v3

    if-lez v3, :cond_2

    aget v3, v1, v4

    if-lez v3, :cond_2

    aget v1, v1, v5

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->getJpegBuffer(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "getJpegBufferDataFromDng: error in getImageDimension"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/DNGImageUtils;->mDataByteArray:[B

    if-gtz v2, :cond_3

    const-string p0, "getJpegBufferDataFromDng: image buffer length error!"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr v2, p1

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
