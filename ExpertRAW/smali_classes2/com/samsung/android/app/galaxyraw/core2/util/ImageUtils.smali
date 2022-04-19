.class public Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_RGB_PIX:I = 0x3

.field private static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final IMAGE_FORMAT_STRING_MAP:Landroid/util/SparseArray;

.field public static final IMAGE_PROCESSING_DIRECTION_DOWN:I = 0x8

.field public static final IMAGE_PROCESSING_DIRECTION_LEFT:I = 0x2

.field public static final IMAGE_PROCESSING_DIRECTION_RIGHT:I = 0x1

.field public static final IMAGE_PROCESSING_DIRECTION_UNKNOWN:I = 0x0

.field public static final IMAGE_PROCESSING_DIRECTION_UP:I = 0x4

.field public static final IMAGE_RATIO_16_9:F = 1.7777778f

.field public static final IMAGE_RATIO_4_3:F = 1.3333334f

.field public static final IMAGE_RATIO_TOLERANCE:F = 0.02f

.field private static final NO_ERROR:I = 0x0

.field private static final NV21_IMAGE_SIZE_ALIGN:I = 0x40

.field private static final RGBA_MAKER_SIZE:I = 0x20

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static final WORSTCASE_JPEG_BPP:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->WORSTCASE_JPEG_BPP:[F

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->IMAGE_FORMAT_STRING_MAP:Landroid/util/SparseArray;

    const-string v0, "imageutils-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40c851ec    # 6.26f
        0x40cfae14    # 6.49f
        0x40d80000    # 6.75f
        0x40e147ae    # 7.04f
        0x40ebd70a    # 7.37f
        0x40f75c29    # 7.73f
        0x4103ae14    # 8.23f
        0x410d70a4    # 8.84f
        0x411c51ec    # 9.77f
        0x4134cccd    # 11.3f
        0x41400000    # 12.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateByteBuffer([BLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Landroid/util/Size;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "imageInfo",
            "bufferSize"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    new-array p0, p0, [B

    :cond_0
    return-object p0
.end method

.method public static allocateDirectBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Landroid/util/Size;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "directBuffer",
            "imageInfo",
            "bufferSize"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    return-object p0
.end method

.method public static allocateDirectByteBuffer(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Landroid/util/Size;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "imageInfo",
            "bufferSize"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0
.end method

.method public static allocateImageBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Landroid/util/Size;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageBuffer",
            "imageInfo",
            "bufferSize"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->setImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    return-object p0
.end method

.method public static compareRatio(FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ratio1",
            "ratio2"
        }
    .end annotation

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3ca3d70a    # 0.02f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "options",
            "minSideLength",
            "maxNumOfPixels"
        }
    .end annotation

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    if-gez p2, :cond_0

    move v4, p0

    goto :goto_0

    :cond_0
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    if-gez p1, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    int-to-double v5, p1

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, v4, :cond_2

    return v4

    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    return p0

    :cond_3
    if-gez p1, :cond_4

    return v4

    :cond_4
    return v0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "options",
            "minSideLength",
            "maxNumOfPixels"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method public static convertFlexibleYuvToPackedNV21(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dst"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "convertFlexibleYuvToPackedNV21 - source image format(%d) is not YUV_420_888"

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "convertFlexibleYuvToPackedNV21 - dst buffer capacity(%d) is too small"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/nio/ByteBuffer;

    new-array v8, v3, [I

    new-array v9, v3, [I

    new-instance v3, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/util/Size;-><init>(II)V

    move v5, v1

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v4, v5

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aput v6, v8, v5

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    aput v6, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    move-object v5, v2

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeConvertFlexibleYuvToPackedNV21([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[I[I)I

    move-result v4

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v4, :cond_4

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "convertFlexibleYuvToPackedNV21 - nativeConvertFlexibleYuvToPackedNV21 fail(%d)"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->setImageInfo(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-direct {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setStrideInfo(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    return v0

    :cond_5
    :goto_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v0

    const-string p0, "convertFlexibleYuvToPackedNV21 - source image (%s) or dst buffer(%s) is null"

    invoke-static {v2, p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static convertNV21ToPackedNV21(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dst"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "convertNV21ToPackedNV21 - source format(%d) is not YUV_420_888"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v5

    if-le v4, v5, :cond_2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "convertNV21ToPackedNV21 - destination buffer capacity(%d) is too small"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "convertNV21ToPackedNV21 - source strideInfo is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getRowStride()I

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getHeightSlice()I

    move-result v9

    move-object v4, v10

    move-object v5, v11

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeConvertNV21ToPackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)I

    move-result v4

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v4, :cond_4

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "convertNV21ToPackedNV21 - nativeConvertNV21ToPackedNV21 fail(%d)"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->setImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-direct {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setStrideInfo(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    return v0

    :cond_5
    :goto_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v0

    const-string p0, "convertNV21ToPackedNV21 - source buffer (%s) or dst buffer(%s) is null"

    invoke-static {v2, p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static convertPackedNV21ToRGBA(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;IIZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "width",
            "height",
            "addRGBAMarker"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-lt p2, v1, :cond_3

    if-ge p3, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v0, v3, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeConvertPackedNV21ToRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIZ)I

    move-result p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz p2, :cond_2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "convertPackedNV21ToRGBA - nativeConvertPackedNV21ToRGBA fail(%d)"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "convertPackedNV21ToRGBA - width(%s) or height(%d) is invalid"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_4
    :goto_1
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p0, p3, v2

    aput-object p1, p3, v1

    const-string p0, "convertPackedNV21ToRGBA - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static convertPackedNV21ToRGBA_Partial(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;IIIIIZII)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "src",
            "dst",
            "direction",
            "width",
            "height",
            "partialWidth",
            "partialHeight",
            "addRGBAMarker",
            "rotate",
            "stride"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    move/from16 v8, p3

    move/from16 v9, p4

    if-lt v8, v4, :cond_5

    if-ge v9, v4, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v10, p5

    move/from16 v11, p6

    if-lt v10, v4, :cond_4

    if-ge v11, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object v5, v2

    move-object v6, v15

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-static/range {v5 .. v14}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeConvertPackedNV21ToRGBA_Partial(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIZII)I

    move-result v5

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v15}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v5, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "convertPackedNV21ToRGBA_Partial - nativeConvertPackedNV21ToRGBA_Partial fail(%d)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    return v4

    :cond_4
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "convertPackedNV21ToRGBA_Partial - partialWidth(%s) or partialHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    :goto_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "convertPackedNV21ToRGBA_Partial - width(%s) or height(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_6
    :goto_2
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    const-string v0, "convertPackedNV21ToRGBA_Partial - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {v5, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public static convertRgbaToYuv([BII)[B
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "argb",
            "width",
            "height"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v1, :cond_5

    move v8, v4

    :goto_1
    if-ge v8, v0, :cond_4

    aget-byte v9, p0, v7

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x10

    aget-byte v10, p0, v7

    const v11, 0xff00

    and-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x8

    aget-byte v11, p0, v7

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/2addr v11, v4

    mul-int/lit8 v13, v9, 0x42

    mul-int/lit16 v14, v10, 0x81

    add-int/2addr v13, v14

    mul-int/lit8 v14, v11, 0x19

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x10

    mul-int/lit8 v14, v9, -0x26

    mul-int/lit8 v15, v10, 0x4a

    sub-int/2addr v14, v15

    mul-int/lit8 v15, v11, 0x70

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit16 v14, v14, 0x80

    mul-int/lit8 v9, v9, 0x70

    mul-int/lit8 v10, v10, 0x5e

    sub-int/2addr v9, v10

    mul-int/lit8 v11, v11, 0x12

    sub-int/2addr v9, v11

    add-int/lit16 v9, v9, 0x80

    shr-int/lit8 v9, v9, 0x8

    add-int/lit16 v9, v9, 0x80

    add-int/lit8 v10, v6, 0x1

    if-gez v13, :cond_0

    move v11, v4

    goto :goto_2

    :cond_0
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_2
    int-to-byte v11, v11

    aput-byte v11, v3, v6

    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_3

    rem-int/lit8 v6, v7, 0x2

    if-nez v6, :cond_3

    add-int/lit8 v6, v2, 0x1

    if-gez v9, :cond_1

    move v9, v4

    goto :goto_3

    :cond_1
    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_3
    int-to-byte v9, v9

    aput-byte v9, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-gez v14, :cond_2

    move v9, v4

    goto :goto_4

    :cond_2
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_4
    int-to-byte v9, v9

    aput-byte v9, v3, v6

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public static convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yuvImage"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    mul-int v3, v2, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    const/4 v9, 0x3

    new-array v9, v9, [B

    fill-array-data v9, :array_0

    add-int/lit8 v16, v0, -0x1

    mul-int v16, v16, v4

    add-int/lit8 v5, v16, 0x1

    new-array v5, v5, [B

    div-int/lit8 v16, v0, 0x2

    add-int/lit8 v16, v16, -0x1

    mul-int v18, v6, v16

    move-object/from16 v19, v3

    add-int/lit8 v3, v18, 0x1

    new-array v3, v3, [B

    mul-int v16, v16, v8

    move/from16 v18, v8

    add-int/lit8 v8, v16, 0x1

    new-array v8, v8, [B

    new-array v2, v2, [B

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    div-int/lit8 v20, v7, 0x2

    move/from16 v21, v1

    mul-int v1, v13, v7

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    mul-int v1, v15, v20

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    mul-int v1, v14, v20

    invoke-virtual {v12, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    div-int/lit8 v20, v1, 0x2

    mul-int v22, v4, v1

    aget-byte v22, v5, v22

    const/16 v17, 0x0

    aput-byte v22, v9, v17

    mul-int v22, v6, v20

    aget-byte v22, v3, v22

    const/16 v16, 0x1

    aput-byte v22, v9, v16

    mul-int v20, v20, v18

    aget-byte v20, v8, v20

    const/16 v22, 0x2

    aput-byte v20, v9, v22

    move/from16 v20, v0

    mul-int/lit8 v0, v1, 0x3

    invoke-static {v9, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->yuvToRgb([BI[B)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v20

    goto :goto_1

    :cond_1
    move/from16 v20, v0

    move-object/from16 v0, v19

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v22, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    goto :goto_0

    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static convertYuvToRGB(Landroid/renderscript/RenderScript;[BII)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rs",
            "data",
            "width",
            "height"
        }
    .end annotation

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v1

    new-instance v2, Landroid/renderscript/Type$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v2

    new-instance v3, Landroid/renderscript/Type$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v3, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object p2

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p3

    invoke-virtual {p2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {p0, p3, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {p0, p2, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    invoke-virtual {v1, v3}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {p3}, Landroid/renderscript/Type;->destroy()V

    invoke-virtual {p2}, Landroid/renderscript/Type;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    return-object v0
.end method

.method public static dumpImage(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageData",
            "filePath"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->dumpImage(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    return-void
.end method

.method public static dumpImage(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "filePath"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpImage: filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " capacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "Got exception "

    invoke-static {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static estimateJpegBufferSize(Landroid/util/Size;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jpegSize",
            "quality"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v1, p0

    const/16 p0, 0x64

    if-lt p1, p0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/16 p0, 0x32

    if-le p1, p0, :cond_2

    add-int/lit8 p1, p1, -0x2e

    div-int/lit8 v0, p1, 0x5

    :cond_2
    :goto_0
    int-to-float p0, v1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->WORSTCASE_JPEG_BPP:[F

    aget p1, p1, v0

    mul-float/2addr p0, p1

    const/high16 p1, 0x41000000    # 8.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0xf

    and-int/lit8 p0, p0, -0x10

    return p0
.end method

.method public static extractThumbnailFromJpeg(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpeg"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get([B)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read exif tags from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "there is no JPEG compressed thumbnail"

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static extractThumbnailFromJpeg(Ljava/io/ByteArrayInputStream;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "there is no JPEG compressed thumbnail"

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read exif tags from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static extractThumbnailFromJpeg(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpegFileName"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "there is no JPEG compressed thumbnail"

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read exif tags from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static extractThumbnailFromJpeg(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpeg"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    sub-int/2addr v3, p0

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, p0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->extractThumbnailFromJpeg(Ljava/io/ByteArrayInputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static extractThumbnailFromJpeg([B)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpeg"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->extractThumbnailFromJpeg(Ljava/io/ByteArrayInputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getBufferSize(IIILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "format",
            "strideInfo"
        }
    .end annotation

    const/16 v0, 0x23

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p2

    if-lez p2, :cond_0

    mul-int/2addr p0, p1

    mul-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(IILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    return p0
.end method

.method public static getBufferSize(Landroid/util/Size;ILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "format",
            "strideInfo"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getBufferSize(IIILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    return p0
.end method

.method public static getExifDateTime(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpeg"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get([B)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p0, "DateTimeOriginal"

    invoke-virtual {v1, p0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read exif tags from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "there is no date_time tags"

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static getImageOrientation(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceOrientation",
            "lensFacing",
            "sensorOrientation"
        }
    .end annotation

    if-nez p1, :cond_0

    sub-int/2addr p2, p0

    add-int/lit16 p2, p2, 0x168

    rem-int/lit16 p2, p2, 0x168

    return p2

    :cond_0
    add-int/2addr p2, p0

    rem-int/lit16 p2, p2, 0x168

    return p2
.end method

.method public static getLimitedMaximumSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxSize",
            "sizes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/Collection<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3ca3d70a    # 0.02f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getMaximumSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "sizes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/Collection<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result p0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v2

    sub-float v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getMinimumSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "sizes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/Collection<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result p0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v2

    sub-float v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getNV21BufferSize(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(IILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    return p0
.end method

.method public static getNV21BufferSize(IILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "strideInfo"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->isPackedFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getRowStride()I

    move-result p0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getHeightSlice()I

    move-result v0

    mul-int/2addr p0, v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getRowStride()I

    move-result p2

    mul-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    return p0

    :cond_1
    :goto_0
    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static getNV21BufferSize(Landroid/util/Size;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    return p0
.end method

.method public static getNV21BufferSize(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "strideInfo"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(IILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    return p0
.end method

.method public static getNearestSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "sizes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/Collection<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3ca3d70a    # 0.02f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getNearestSizeWithFixedWidth(Landroid/util/Size;I)Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "width"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getRatio(Landroid/util/Size;)F

    move-result p0

    int-to-float v0, p1

    div-float/2addr v0, p0

    float-to-int p0, v0

    if-lez p0, :cond_1

    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static getObjectOrientation(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceOrientation",
            "lensFacing",
            "sensorOrientation"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getImageOrientation(III)I

    move-result p0

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public static getPaddedNV21BufferSize(Landroid/util/Size;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->alignUp(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->alignUp(II)I

    move-result v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;II)V

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result p0

    return p0
.end method

.method public static getPlaneOffset(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "basePlane",
            "nextPlane"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeGetPlaneOffset(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "getPlaneOffset - base plane (%s) or next plane (%s) is null"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getRGBAMakerSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public static getRatio(Landroid/util/Size;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method public static getSampleSize(IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "actualWidth",
            "actualHeight",
            "desiredWidth",
            "desiredHeight"
        }
    .end annotation

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static isInvalidRect(Landroid/graphics/Rect;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static makeBitmap([B)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jpegData"
        }
    .end annotation

    const-string v0, ", "

    const-string v1, "Got oom exception "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v5, p0

    const/4 v6, 0x0

    invoke-static {p0, v6, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v0, p0

    invoke-static {p0, v6, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static native nativeConvertFlexibleYuvToPackedNV21([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II[I[I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "width",
            "height",
            "rowStrides",
            "pixelStrides"
        }
    .end annotation
.end method

.method private static native nativeConvertNV21ToPackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "width",
            "height",
            "rowStrides",
            "heightSlice"
        }
    .end annotation
.end method

.method private static native nativeConvertPackedNV21ToRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "width",
            "height",
            "addRGBAMarker"
        }
    .end annotation
.end method

.method private static native nativeConvertPackedNV21ToRGBA_Partial(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIZII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "src",
            "dst",
            "direction",
            "width",
            "height",
            "partialWidth",
            "partialHeight",
            "addRGBAMarker",
            "rotate",
            "stride"
        }
    .end annotation
.end method

.method private static native nativeGetPlaneOffset(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "basePlane",
            "nextPlane"
        }
    .end annotation
.end method

.method private static native nativeQuramResizeNV21ToPackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "srcPaddedWidth",
            "srcPaddedHeight",
            "dstWidth",
            "dstHeight",
            "resizeType"
        }
    .end annotation
.end method

.method private static native nativeQuramResizeNV21ToRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "srcPaddedWidth",
            "srcPaddedHeight",
            "dstWidth",
            "dstHeight",
            "addRGBAMarker",
            "resizeType"
        }
    .end annotation
.end method

.method private static native nativeQuramResizePackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "dstWidth",
            "dstHeight",
            "resizeType"
        }
    .end annotation
.end method

.method private static native nativeQuramResizeRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIZI)I
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "dstWidth",
            "dstHeight",
            "addRGBAMarker",
            "resizeType"
        }
    .end annotation
.end method

.method public static varargs quramResizeNV21ToPackedNV21(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;IIIIII[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "srcPaddedWidth",
            "srcPaddedHeight",
            "dstWidth",
            "dstHeight",
            "resizeType"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    move-object v2, v11

    move-object v3, v12

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->quramResizeNV21ToPackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z

    move-result v2

    invoke-virtual {p0, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    return v2

    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "quramResizeNV21ToPackedNV21 - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public static varargs quramResizeNV21ToPackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "srcPaddedWidth",
            "srcPaddedHeight",
            "dstWidth",
            "dstHeight",
            "resizeType"
        }
    .end annotation

    move-object/from16 v0, p8

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    move v2, p2

    move v3, p3

    if-lt v2, v10, :cond_8

    if-ge v3, v10, :cond_1

    goto/16 :goto_3

    :cond_1
    move v4, p4

    move/from16 v5, p5

    if-lt v4, v10, :cond_7

    if-ge v5, v10, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v6, p6

    move/from16 v7, p7

    if-lt v6, v10, :cond_6

    if-ge v7, v10, :cond_3

    goto :goto_1

    :cond_3
    array-length v1, v0

    if-lez v1, :cond_4

    aget-object v0, v0, v9

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->getDefaultType()Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->getTypeId()I

    move-result v0

    move v8, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeQuramResizeNV21ToPackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIII)I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    const-string v0, "quramResizeNV21ToPackedNV21 - nativeQuramResizeNV21ToPackedNV21 fail(%d)"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_5
    return v10

    :cond_6
    :goto_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "quramResizeNV21ToPackedNV21 - dstWidth(%s) or dstHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_7
    :goto_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "quramResizeNV21ToPackedNV21 - srcPaddedWidth(%s) or srcPaddedHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_8
    :goto_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "quramResizeNV21ToPackedNV21 - srcWidth(%s) or srcHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_9
    :goto_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v9

    aput-object p1, v1, v10

    const-string v2, "quramResizeNV21ToPackedNV21 - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9
.end method

.method public static varargs quramResizeNV21ToRGBA(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;IIIIIIZ[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "srcPaddedWidth",
            "srcPaddedHeight",
            "dstWidth",
            "dstHeight",
            "addRGBAMarker",
            "resizeType"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v2, v12

    move-object v3, v13

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->quramResizeNV21ToRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIZ[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z

    move-result v2

    invoke-virtual {p0, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v13}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    return v2

    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "quramResizeNV21ToRGBA - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public static varargs quramResizeNV21ToRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIZ[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "srcPaddedWidth",
            "srcPaddedHeight",
            "dstWidth",
            "dstHeight",
            "addRGBAMarker",
            "resizeType"
        }
    .end annotation

    move-object/from16 v0, p9

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    move v2, p2

    move v3, p3

    if-lt v2, v11, :cond_8

    if-ge v3, v11, :cond_1

    goto/16 :goto_3

    :cond_1
    move/from16 v4, p4

    move/from16 v5, p5

    if-lt v4, v11, :cond_7

    if-ge v5, v11, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v6, p6

    move/from16 v7, p7

    if-lt v6, v11, :cond_6

    if-ge v7, v11, :cond_3

    goto :goto_1

    :cond_3
    array-length v1, v0

    if-lez v1, :cond_4

    aget-object v0, v0, v10

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->getDefaultType()Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->getTypeId()I

    move-result v0

    move v9, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeQuramResizeNV21ToRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIZI)I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v10

    const-string v0, "quramResizeNV21ToRGBA - nativeQuramResizeNV21ToRGBA fail(%d)"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :cond_5
    return v11

    :cond_6
    :goto_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "quramResizeNV21ToRGBA - dstWidth(%s) or dstHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :cond_7
    :goto_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "quramResizeNV21ToRGBA - srcPaddedWidth(%s) or srcPaddedHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :cond_8
    :goto_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "quramResizeNV21ToRGBA - srcWidth(%s) or srcHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :cond_9
    :goto_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v10

    aput-object p1, v1, v11

    const-string v2, "quramResizeNV21ToRGBA - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v10
.end method

.method public static varargs quramResizePackedNV21(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;IIII[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "dstWidth",
            "dstHeight",
            "resizeType"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v0, v7

    move-object v1, v8

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->quramResizePackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z

    move-result p2

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    return p2

    :cond_1
    :goto_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p0, p3, p4

    const/4 p0, 0x1

    aput-object p1, p3, p0

    const-string p0, "quramResizePackedNV21 - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return p4
.end method

.method public static varargs quramResizePackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "dstWidth",
            "dstHeight",
            "resizeType"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-lt p2, v7, :cond_6

    if-ge p3, v7, :cond_1

    goto :goto_2

    :cond_1
    if-lt p4, v7, :cond_5

    if-ge p5, v7, :cond_2

    goto :goto_1

    :cond_2
    array-length v1, p6

    if-lez v1, :cond_3

    aget-object v0, p6, v8

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->getDefaultType()Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->getTypeId()I

    move-result v0

    move v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeQuramResizePackedNV21(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    const-string v0, "quramResizePackedNV21 - nativeQuramResizePackedNV21 fail(%d)"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_4
    return v7

    :cond_5
    :goto_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "quramResizePackedNV21 - dstWidth(%s) or dstHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_6
    :goto_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "quramResizePackedNV21 - srcWidth(%s) or srcHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_7
    :goto_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v8

    aput-object p1, v1, v7

    const-string v2, "quramResizePackedNV21 - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8
.end method

.method public static varargs quramResizeRGBA(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;IIIIZ[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z
    .locals 12
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "dstWidth",
            "dstHeight",
            "addRGBAMarker",
            "resizeType"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v2, v10

    move-object v3, v11

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->quramResizeRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIZ[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z

    move-result v2

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    return v2

    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "quramResizeRGBA - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {v2, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public static varargs quramResizeRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIZ[Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;)Z
    .locals 10
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
            "src",
            "dst",
            "srcWidth",
            "srcHeight",
            "dstWidth",
            "dstHeight",
            "addRGBAMarker",
            "resizeType"
        }
    .end annotation

    move-object/from16 v0, p7

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    move v2, p2

    move v3, p3

    if-lt v2, v8, :cond_6

    if-ge v3, v8, :cond_1

    goto :goto_2

    :cond_1
    move v4, p4

    move v5, p5

    if-lt v4, v8, :cond_5

    if-ge v5, v8, :cond_2

    goto :goto_1

    :cond_2
    array-length v1, v0

    if-lez v1, :cond_3

    aget-object v0, v0, v9

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->getDefaultType()Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils$QuramResizeType;->getTypeId()I

    move-result v0

    move v7, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->nativeQuramResizeRGBA(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIZI)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    const-string v0, "quramResizeRGBA - nativeQuramResizeRGBA fail(%d)"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_4
    return v8

    :cond_5
    :goto_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "quramResizeRGBA - dstWidth(%s) or dstHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_6
    :goto_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "quramResizeRGBA - srcWidth(%s) or srcHeight(%d) is invalid"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_7
    :goto_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v9

    aput-object p1, v1, v8

    const-string v2, "quramResizeRGBA - src buffer(%s) or dst buffer(%s) is null"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "degrees"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v5, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "desiredWidth",
            "desiredHeight",
            "degree"
        }
    .end annotation

    if-eqz p3, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p3

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateBitmap-->degree= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ",bitmap.getWidth()= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ",bitmap.getHeight()= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotateBitmap-->desiredHeight= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ",(bitmap.getHeight() - desiredHeight) / 2= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p0, p3, v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/lit8 p3, p2, 0x2

    if-le p1, p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-static {p0, v1, p1, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static toHalPixelFormat(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x101

    if-eq p0, v0, :cond_1

    const v0, 0x20363159

    if-eq p0, v0, :cond_0

    const v1, 0x44363159

    if-eq p0, v1, :cond_0

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x21

    return p0
.end method

.method public static toImageFormat(IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "halPixelFormat",
            "forDepth"
        }
    .end annotation

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const v0, 0x20363159

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x44363159

    :cond_1
    return v0

    :cond_2
    if-eqz p1, :cond_3

    const/16 p0, 0x101

    goto :goto_0

    :cond_3
    const/16 p0, 0x100

    :goto_0
    return p0
.end method

.method public static toImageFormatString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->IMAGE_FORMAT_STRING_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static yuvToRgb([BI[B)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "yuvData",
            "outOffset",
            "rgbOut"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    const v3, 0x3fb374bc    # 1.402f

    const/high16 v4, 0x43000000    # 128.0f

    sub-float/2addr p0, v4

    mul-float/2addr v3, p0

    add-float/2addr v3, v0

    const v5, 0x3eb0331e    # 0.34414f

    sub-float/2addr v1, v4

    mul-float/2addr v5, v1

    sub-float v4, v0, v5

    const v5, 0x3f36d1e1    # 0.71414f

    mul-float/2addr p0, v5

    sub-float/2addr v4, p0

    const p0, 0x3fe2d0e5    # 1.772f

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    const/high16 p0, 0x437f0000    # 255.0f

    invoke-static {p0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/2addr p1, v2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p1

    :cond_1
    :goto_0
    return-void
.end method
