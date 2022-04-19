.class public Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;
.super Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;
.source "PostProcessRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static final TEMP_FILE_DIRECTORY_NAME:Ljava/lang/String; = "post_process_temp"

.field private static final TEMP_FILE_INDEX:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final TEMP_FILE_NAME:Ljava/lang/String; = "pp_request_temp_data_%d.tmp"


# instance fields
.field private final mDataSize:I

.field private final mFileBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

.field private mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field private final mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

.field private mIsDataReleased:Z

.field private final mMemoryBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

.field private final mNodeChainKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field private final mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

.field private final mTempFilePath:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TEMP_FILE_INDEX:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;Ljava/io/File;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processRequest",
            "key",
            "memoryBufferPool",
            "fileBufferPool",
            "cacheDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getProcessType()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getExtraInfo()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getResultFormat()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getUsage()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getError()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getSequenceId()I

    move-result v11

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result v12

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getTotalProcessCount()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;IIILcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;III)V

    move-object/from16 v0, p2

    iput-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mNodeChainKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    iput-object v15, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mMemoryBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    move-object/from16 v0, p4

    iput-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    iget v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSequenceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mCurrentProcessCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x3

    iget v1, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTotalProcessCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "create error request : %s, sequenceId %d, processCount %d/%d"

    invoke-static {v5, v0, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    iput-object v4, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    iput v3, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mDataSize:I

    iput-object v4, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v4, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    iget-object v5, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mData:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    iput-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->checkValidImgRegion(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)Z

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v6

    iput v6, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mDataSize:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v8

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getBufferSize(Landroid/util/Size;ILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result v6

    iput v6, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mDataSize:I

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getExtraBundle()Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    move-result-object v6

    iget v8, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mDataSize:I

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessRequest$VNJHy6_au4xr2KIsCUX2hJ6qDtA;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v6}, Lcom/samsung/android/app/galaxyraw/core2/processor/-$$Lambda$PostProcessRequest$VNJHy6_au4xr2KIsCUX2hJ6qDtA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    invoke-virtual {v15, v8, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->getBuffer(ILjava/util/function/Consumer;)Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v8, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-eqz v6, :cond_2

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->PROCESS_FAIL_INFO:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->PROCESS_FAIL_INFO:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->SKIP:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    iput-object v4, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    return-void

    :cond_2
    const-string v1, "padded image format(%d) is not supported in PostProcessRequest"

    if-eqz v8, :cond_6

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->MEMORY:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    iput-object v6, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->isPackedFormat()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v5

    if-ne v5, v7, :cond_4

    iget-object v1, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {v8, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->convertNV21ToPackedNV21(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Z

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setStrideInfo(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    goto :goto_2

    :cond_4
    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    :goto_1
    iget-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->put(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    :goto_2
    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    iput-object v4, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->isPackedFormat()Z

    move-result v6

    const-string v8, "post_process_temp"

    if-nez v6, :cond_9

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v5

    if-ne v5, v7, :cond_8

    iget v1, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mDataSize:I

    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v1

    iget-object v2, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->convertNV21ToPackedNV21(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Z

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {v14, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->saveToTempFile(Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Ljava/nio/file/Path;

    move-result-object v2

    iput-object v2, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setStrideInfo(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->release()V

    goto :goto_4

    :cond_8
    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    :goto_3
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-direct {v14, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->saveToTempFile(Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    :goto_4
    iget-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->FILE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    return-void

    :cond_a
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "create error request : can\'t create tempFile"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    iput-object v0, v14, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    return-void
.end method

.method public static asPostProcessRequest(Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;Ljava/io/File;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "processRequest",
            "memoryBufferPool",
            "fileBufferPool",
            "cacheDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;",
            "Ljava/io/File;",
            ")",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;"
        }
    .end annotation

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;Ljava/io/File;)V

    return-object v6
.end method

.method private checkValidImgRegion(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureValidImageRegionPriority()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->hasValidImgRegion()Z

    move-result p0

    return p0
.end method

.method private deleteTempFile(Ljava/nio/file/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempFilePath"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteTempFile is failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->ERROR:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mUsage:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    if-ne v0, v1, :cond_0

    const-string p0, "error usage"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mData:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string p0, "data is null"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mBundle:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_DATA_RESULT_FILE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "result file is null"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasValidImgRegion()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_VALID_IMAGE_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->isInvalidRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasValidImgRegion : size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", validImgRegion="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Ljava/lang/Integer;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isSuperNightDsMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getCurrentProcessCount()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;->getMode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/nodeController/NodeController;->isSupportIncompleteMerge(I)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->PROCESS_FAIL_INFO:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    :cond_0
    return-void
.end method

.method private loadFromTempFile()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mDataSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->getBuffer(ILjava/util/function/Consumer;)Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mDataSize:I

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->put(Ljava/io/File;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromTempFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromFile is failed : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method public static removeProcessTempFiles(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheDir"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const-string v0, "post_process_temp"

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->deleteDirectory(Ljava/nio/file/Path;[Ljava/lang/Boolean;)V

    return-void
.end method

.method private saveToTempFile(Ljava/nio/file/Path;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Ljava/nio/file/Path;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dirPath",
            "image"
        }
    .end annotation

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-array v0, p0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->createDirectories(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveToTempFile - createDirectories is failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "pp_request_temp_data_%d.tmp"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TEMP_FILE_INDEX:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    const v5, 0xf4240

    rem-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "rwxrwxrwx"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->regeneratePathIfExistsAndCreate(Ljava/nio/file/Path;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveToTempFile - regeneratePathIfExistsAndCreate is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->get(Ljava/io/File;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveToTempFile : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveToTempFile is failed : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p2, "saveToTempFile is failed : can\'t create tempFile"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_2
    move-object v0, p0

    :goto_3
    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->releaseData()V

    return-void
.end method

.method public declared-synchronized getData()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mIsDataReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$PostProcessRequest$SavingType:[I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>()V

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setSize(Landroid/util/Size;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setFormat(I)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setStrideInfo(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getData - skip : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getBufferSize(Landroid/util/Size;ILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->loadFromTempFile()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->getData()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    return-object p0
.end method

.method public getNodeChainKey()Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mNodeChainKey:Lcom/samsung/android/app/galaxyraw/core2/node/NodeChain$Key;

    return-object p0
.end method

.method public getResultFile()Ljava/io/File;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mBundle:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_DATA_RESULT_FILE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public getSavingType()Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    return-object p0
.end method

.method public isErrorRequest()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->NONE:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized releaseData()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mIsDataReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$PostProcessRequest$SavingType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mSavingType:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest$SavingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->returnBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mFileTempRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mTempFilePath:Ljava/nio/file/Path;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->deleteTempFile(Ljava/nio/file/Path;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mMemoryBufferPool:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mRentBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBufferPool;->returnBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessRequest;->mIsDataReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
