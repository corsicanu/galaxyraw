.class public Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;
.super Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;
.source "ExternalJpegNode.java"


# static fields
.field private static final EXTERNAL_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static final NATIVE_COMMAND_JPEG_NODE_START_DECODING:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_JPEG_NODE_START_ENCODING:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTPUT_TYPE_BGRA8888:I = 0x8

.field private static final OUTPUT_TYPE_NV12:I = 0x13

.field private static final OUTPUT_TYPE_NV21:I = 0x12

.field private static final OUTPUT_TYPE_RGBA8888:I = 0x7

.field private static final OUTPUT_TYPE_YUV420:I = 0x2

.field private static final OUTPUT_TYPE_YUYV:I = 0x11


# instance fields
.field private mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

.field private final mJpegEncodingProcessNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;
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

.field private final mJpegThumbnailNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$1;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-direct {v0, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->NATIVE_COMMAND_JPEG_NODE_START_ENCODING:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$2;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    aput-object v2, v1, v4

    const-class v2, Landroid/util/Size;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v1, v6

    invoke-direct {v0, v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->NATIVE_COMMAND_JPEG_NODE_START_DECODING:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const v1, 0xdbc04

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$3;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$3;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mJpegEncodingProcessNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$4;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mJpegThumbnailNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;)Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->convertNativeFormatToImageFormat(I)I

    move-result p0

    return p0
.end method

.method private convertImageFormatToNativeFormat(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    const/16 p0, 0x23

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/16 p0, 0x12

    return p0
.end method

.method private convertNativeFormatToImageFormat(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeFormat"
        }
    .end annotation

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x12

    if-eq p1, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x2a

    return p0

    :cond_1
    const/16 p0, 0x23

    return p0
.end method


# virtual methods
.method protected onDeinitialized()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->onDeinitialized()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

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
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mJpegEncodingProcessNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mJpegThumbnailNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

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
    .locals 17
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

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v5, "processPicture E - picture %s, strideInfo %s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-static {v4, v5, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "JPEG Encoding"

    invoke-static {v5}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    const/4 v7, 0x0

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    const-string v2, "processPicture X: failed because compressConfiguration is null"

    invoke-static {v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v2, v10}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v7

    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v5

    iget-object v9, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget v9, v9, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->compressType:I

    const/4 v11, 0x3

    const/16 v12, 0x23

    const/16 v13, 0x100

    if-eqz v9, :cond_4

    if-eq v9, v10, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPicture X: failed due to unknown compress type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget v3, v3, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->compressType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v2, v8}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v7

    :cond_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v3

    if-eq v3, v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v3

    const/16 v9, 0x11

    if-ne v3, v9, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->NATIVE_COMMAND_JPEG_NODE_START_DECODING:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    invoke-virtual {v1, v3, v9}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    goto/16 :goto_6

    :cond_3
    :goto_0
    const-string v3, "processPicture skip - already yuv"

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v2

    :cond_4
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v9

    if-ne v9, v13, :cond_5

    const-string v3, "processPicture skip - already Jpeg"

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v2

    :cond_5
    :try_start_7
    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->SINGLE_BOKEH_INFO_NEED_CROP_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v9}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->SINGLE_BOKEH_INFO_NEED_CROP_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v9}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "Crop Input Image to Valid Image Region"

    invoke-static {v4, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v9

    sget-object v14, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_VALID_IMAGE_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v9, v14}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-static {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v9, "processPicture: Valid Image Region is null or invalid. so, it made by input picture size."

    invoke-static {v4, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-direct {v9, v8, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getRowStride()I

    move-result v12

    iput v12, v15, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->rowStride:I

    iget-object v12, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getHeightSlice()I

    move-result v15

    iput v15, v12, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->heightSlice:I

    goto :goto_1

    :cond_6
    new-instance v14, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-direct {v14, v12, v15}, Landroid/util/Size;-><init>(II)V

    iget-object v12, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    iput v15, v12, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->rowStride:I

    iget-object v12, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v15

    iput v15, v12, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->heightSlice:I

    :goto_1
    const-string v12, "processPicture: Picture Size=%s, Valid Image Region=%s"

    new-array v15, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v16

    aput-object v16, v15, v8

    aput-object v9, v15, v10

    invoke-static {v4, v12, v15}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v12

    invoke-static {v14, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v14}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v15, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2, v15}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v12

    invoke-direct {v7, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    invoke-virtual {v7, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setSize(Landroid/util/Size;)V

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    new-instance v14, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v14, v15, v9}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {v7, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setStrideInfo(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    invoke-static {v13, v8, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Ljava/nio/ByteBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    goto :goto_3

    :cond_8
    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getRowStride()I

    move-result v9

    iput v9, v7, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->rowStride:I

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getHeightSlice()I

    move-result v9

    iput v9, v7, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->heightSlice:I

    :goto_2
    move-object v7, v2

    :goto_3
    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->JPEG_INFO_NEED_KEEP_ORIGIN_IMAGE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v9}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->JPEG_INFO_NEED_KEEP_ORIGIN_IMAGE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v9}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "Store original image"

    invoke-static {v4, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->DATA_EXTRA_IMAGE_BUFFER:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v9, v7}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    :cond_9
    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v9

    iget-object v12, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v13

    iput v13, v12, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->rawSize:I

    iget-object v12, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v13

    invoke-direct {v1, v13}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->convertImageFormatToNativeFormat(I)I

    move-result v13

    iput v13, v12, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->format:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->SEF_INFO_SAVE_DATA_TYPE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v13}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_a

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->SEF_INFO_SAVE_DATA_TYPE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v3, v12}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/Integer;

    :cond_a
    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "physicalCameraId : "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    if-nez v5, :cond_b

    const/4 v5, 0x0

    goto :goto_4

    :cond_b
    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;

    iget-object v13, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-object v13, v13, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v13, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAeCompensationStep(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v13

    iget-object v14, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-object v14, v14, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v14, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensInfoAvailableApertures(Ljava/lang/String;)[F

    move-result-object v3

    invoke-direct {v5, v13, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;-><init>(Landroid/util/Rational;[F)V

    :goto_4
    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->extJpegMetadata:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget-boolean v12, v12, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->addThumbnail:Z

    if-eqz v12, :cond_c

    move v12, v10

    goto :goto_5

    :cond_c
    move v12, v8

    :goto_5
    invoke-static {v9, v5, v3, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->loadJpegMetadata(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$ExternalJpegMetadata;Z)Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->NATIVE_COMMAND_JPEG_NODE_START_ENCODING:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    aput-object v11, v9, v8

    aput-object v7, v9, v10

    aput-object v3, v9, v6

    invoke-virtual {v1, v5, v9}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    :try_end_7
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    if-nez v3, :cond_d

    const-string v2, "processPicture X: failed encoding or decoding"

    invoke-static {v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    :goto_7
    const/4 v1, 0x0

    return-object v1

    :cond_d
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;

    iget v5, v5, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;->compressType:I

    if-nez v5, :cond_e

    const/16 v12, 0x100

    goto :goto_8

    :cond_e
    const/16 v12, 0x23

    :goto_8
    invoke-virtual {v3, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setFormat(I)V

    const-string v3, "processPicture X"

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_a
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->EXTERNAL_JPEG_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPicture X: fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    invoke-interface {v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onError(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    goto :goto_7

    :goto_9
    :try_start_c
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->mCompressConfiguration:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$CompressConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
