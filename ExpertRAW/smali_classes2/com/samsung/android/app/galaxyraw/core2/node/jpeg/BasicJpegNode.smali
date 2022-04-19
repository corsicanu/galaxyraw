.class public Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;
.super Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;
.source "BasicJpegNode.java"


# static fields
.field private static final BASIC_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static final JPEG_NODE_APP1_EXIF_SIZE:I = 0x3e8

.field private static final JPEG_NODE_JPEG_MAX_SEGMENT_SIZE:I = 0xffff

.field private static final JPEG_NODE_MAX_THUMBNAIL_SIZE:I = 0xfb4f

.field private static final JPEG_NODE_RESERVED_EXIF_SIZE:I = 0xc8

.field private static final NATIVE_COMMAND_WRITE_EXIF:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

.field private final mEncodingProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->BASIC_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode$1;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-class v4, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    aput-object v4, v1, v2

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->NATIVE_COMMAND_WRITE_EXIF:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->BASIC_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const v1, 0xf42a4

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode$2;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode$2;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mEncodingProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;)Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    return-object p0
.end method


# virtual methods
.method protected onDeinitialized()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->onDeinitialized()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    return-void
.end method

.method protected declared-synchronized onInitialized(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "*>;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mEncodingProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->onInitialized(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processPicture(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picture",
            "bundle"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->BASIC_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "processPicture E"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v2, "processPicture X: failed because compressConfiguration is null"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_0
    const/4 v5, 0x2

    :try_start_1
    iget v2, v2, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->compressType:I

    const/16 v6, 0x100

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    move-object/from16 v2, p1

    move-object v0, v4

    goto/16 :goto_5

    :cond_1
    const-string v2, "processPicture X: failed because Decode is not supported."

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    const-string v2, "processPicture X: failed because pictureSize is null"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v0, v8}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V
    :try_end_2
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->isPackedFormat()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v9

    invoke-static {v9, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v2

    move-object/from16 v9, p1

    invoke-static {v9, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->convertNV21ToPackedNV21(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    goto :goto_0

    :cond_4
    move-object/from16 v9, p1

    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v2, v17

    :goto_0
    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v11

    iput v11, v10, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->rawSize:I

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v10, v11}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "physicalCameraId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    if-nez v0, :cond_5

    move-object v0, v4

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;

    iget-object v11, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-object v11, v11, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v11, v10}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAeCompensationStep(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-object v12, v12, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v12, v10}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoAvailableApertures(Ljava/lang/String;)[F

    move-result-object v10

    invoke-direct {v0, v11, v10}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;-><init>(Landroid/util/Rational;[F)V

    :goto_1
    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-object v10, v10, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->extJpegMetadata:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;

    iget-object v11, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-boolean v11, v11, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->addThumbnail:Z

    invoke-static {v9, v0, v10, v11}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->loadJpegMetadata(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;Z)Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    move-result-object v0

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v10, v8}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onProgress(I)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v10

    new-array v12, v10, [B

    invoke-virtual {v2, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->get([B)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    new-instance v15, Landroid/graphics/YuvImage;

    const/16 v13, 0x11

    const/16 v16, 0x0

    move-object v11, v15

    move v14, v10

    move-object v4, v15

    move v15, v7

    invoke-direct/range {v11 .. v16}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8, v8, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget v7, v7, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->quality:I

    invoke-virtual {v4, v12, v7, v11}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v4

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v7}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v7

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v7, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->makeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10, v4, v7, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    const/16 v12, 0x32

    move v13, v12

    :goto_2
    const/16 v14, 0xa

    if-lt v13, v14, :cond_7

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v10, v14, v13, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    const v15, 0xfb4f

    if-gt v14, v15, :cond_6

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->BASIC_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "making thumbnail for exif is success.("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v13, -0xa

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onProgress(I)V

    array-length v10, v9

    invoke-static {v10}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->put([B)V

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    iget-object v9, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    new-instance v12, Landroid/util/Size;

    invoke-direct {v12, v4, v7}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v9, v10, v6, v12}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onThumbnail(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ILandroid/util/Size;)V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v7, v4

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->put([B)V

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->NATIVE_COMMAND_WRITE_EXIF:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v8

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-boolean v7, v7, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->addThumbnail:Z

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    aput-object v10, v9, v3

    aput-object v0, v9, v5

    invoke-virtual {v1, v4, v9}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onProgress(I)V
    :try_end_3
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    if-nez v0, :cond_9

    :try_start_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->BASIC_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "processPicture X: failed encoding or decoding"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v0, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    :goto_6
    const/4 v1, 0x0

    return-object v1

    :cond_9
    :try_start_5
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setFormat(I)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->BASIC_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "processPicture X"

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_6
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->BASIC_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPicture X: fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v0, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCompressConfiguration(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressConfiguration"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "compressConfiguration"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/BasicJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
