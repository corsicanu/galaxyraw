.class public Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
.super Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
.source "ImageBuffer.java"


# instance fields
.field private final mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "wrapBuffer",
            "needRelease",
            "imageInfo"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Z)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :cond_0
    return-void
.end method

.method public static allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "imageInfo"
        }
    .end annotation

    const-string v0, "capacity"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkPositive(ILjava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->nativeAllocateNativeHeap(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-object v0
.end method

.method public static copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->clear()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->put(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->limit(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->position(I)V

    return-object v0
.end method

.method public static wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;IILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "directBuffer",
            "position",
            "length",
            "imageInfo"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mWrapBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    :goto_1
    const/4 v3, 0x0

    invoke-direct {p1, p2, v2, v3, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public static wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directBuffer",
            "imageInfo"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mWrapBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-object v0
.end method

.method public static wrap(Ljava/nio/ByteBuffer;IIZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "position",
            "length",
            "needRelease",
            "imageInfo"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public static wrap(Ljava/nio/ByteBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "needRelease",
            "imageInfo"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic duplicate()Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->duplicate()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public duplicate()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 4

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mWrapBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    :goto_1
    const/4 v3, 0x0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-object v0
.end method

.method public getAndUpdateImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->get(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->setImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-void
.end method

.method public getAndUpdateImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->get(Ljava/io/File;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->setImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-void
.end method

.method public getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    return-object p0
.end method

.method public putAndUpdateImageInfo(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "result"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->put(Landroid/media/Image;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->setImageInfo(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public putAndUpdateImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->put(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->setImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-void
.end method

.method public putAndUpdateImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->put(Ljava/io/File;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->setImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-void
.end method

.method public setImageInfo(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->clear()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    :goto_0
    return-void
.end method

.method public setImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageInfo"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->clear()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic slice(II)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "position",
            "length"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->slice(II)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public slice(II)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "length"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mWrapBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    :goto_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {p1, p2, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "%s - buffer(%s), size(%s), format(%s), timestamp(%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
