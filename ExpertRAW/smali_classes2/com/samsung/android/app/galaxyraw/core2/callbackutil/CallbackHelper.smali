.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;
.super Ljava/lang/Object;
.source "CallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$ThumbnailCallbackHelper;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$STPictureCallbackHelper;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$RawPictureCallbackHelper;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PostProcessorStatusCallbackHelper;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;,
        Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$BurstPictureCallbackHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;->createByteBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;->createPackedByteBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createByteBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureData"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method private static createPackedByteBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureData"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->isPackedFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Ljava/nio/ByteBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->convertNV21ToPackedNV21(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Z

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method
