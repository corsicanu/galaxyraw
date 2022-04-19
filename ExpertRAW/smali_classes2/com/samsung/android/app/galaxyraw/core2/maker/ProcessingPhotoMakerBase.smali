.class public abstract Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;
.super Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;
.source "ProcessingPhotoMakerBase.java"


# static fields
.field private static final PRIVATE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private final PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field protected mBasketCollectorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCurrentPictureProcessLock:Ljava/lang/Object;

.field protected mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentPictureSequenceId:I

.field private final mImmediateProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

.field protected mIsIPPCapturing:Z

.field protected mMakerPrivateKeys:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPPPStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

.field private final mPostProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "P_PhotoMakerBase"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PRIVATE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "context"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mMakerPrivateKeys:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mBasketCollectorMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mImmediateProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$2;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPostProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPPPStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$4;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDeviceMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$T7TKsOU7RHxIdBp4ehPNQcCUjiU;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$T7TKsOU7RHxIdBp4ehPNQcCUjiU;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDeviceThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected static checkDynamicShotInfoForProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamicShotInfo"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getProcessingMode()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsCondition()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsExtraInfo()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "DynamicShotInfo is not proper for processingPicture"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SingleMode is not supported for processingPicture"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static checkPostProcessorState()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->isPPPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "PostProcessor is not initialized"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$takeProcessingPictureInternal$1(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;)V
    .locals 1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->isInvalid()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "previous sequence is not finished"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private takeProcessingPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "postModeFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "takeProcessingPictureInternal - dynamicShotInfo %s isPostMode %b runningPhysicalId %s DFovStreamType %s"

    const/4 v8, 0x4

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v5, v3, v9

    const/4 v11, 0x1

    if-eqz p2, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mRunningPhysicalId:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v4, v3, v12

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mDFovStreamType:Ljava/lang/Integer;

    const/4 v13, 0x3

    aput-object v4, v3, v13

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "dynamicShotInfo"

    invoke-static {v5, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mRunningPhysicalId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCapturePhysicalId:I

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$fEHWJz3q6HLBk6XO6bTiH0ktDFE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProcessingPhotoMakerBase$fEHWJz3q6HLBk6XO6bTiH0ktDFE;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsCondition()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsExtraInfo()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsDeviceInfo()J

    move-result-wide v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsPicMainCount(Ljava/lang/Integer;)I

    move-result v3

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsModeNeedSeparatedCompPic(I)Z

    move-result v18

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsModeNeedRawPic(I)Z

    move-result v2

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsExtraInfoNeedPreviewTarget(I)Z

    move-result v1

    invoke-static {v7, v6}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isDsProcessingMode(II)Z

    move-result v19

    if-eqz v19, :cond_12

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v0, v12, v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v0, v13, v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-result-object v13

    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v0, v8, v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->THIRD:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    invoke-static {v9, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v9

    goto :goto_2

    :cond_1
    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->SECOND:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    invoke-static {v9, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    goto :goto_1

    :cond_2
    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    :goto_1
    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v9

    :goto_2
    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl$Sequence;

    move/from16 v20, v2

    iget v2, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureEncodeFormat:I

    move/from16 v21, v6

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mMakerPrivateKeys:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v22, v1

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureDepthCbImageSize:Landroid/util/Size;

    move-object/from16 v23, v8

    move/from16 v8, v22

    if-eqz v1, :cond_3

    const/16 v22, 0x1

    goto :goto_3

    :cond_3
    const/16 v22, 0x0

    :goto_3
    move-object v1, v11

    move-object/from16 v24, v13

    move/from16 v13, v20

    move v13, v3

    move-object v3, v9

    move v9, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v25, v7

    move/from16 v7, v22

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl$Sequence;-><init>(ILandroid/util/Size;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/util/Map;Z)V

    invoke-virtual {v0, v11}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->initializeSequence(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;)V

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessSequence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-interface {v11}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getProcessType()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    if-ne v1, v2, :cond_4

    if-eqz v18, :cond_4

    add-int/lit8 v7, v25, 0x1

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "takeProcessingPictureInternal dsCondition increasing - 0x%X"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    move/from16 v7, v25

    :goto_4
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->createRequestOptions()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCapturePhysicalId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/16 v3, 0x6e

    if-ne v9, v3, :cond_9

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mLatestRepeatingCaptureResult:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->LENS_INFO_CURRENT_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_6

    array-length v4, v2

    const/4 v5, 0x4

    if-ge v4, v5, :cond_7

    goto :goto_5

    :cond_6
    const/4 v5, 0x4

    :goto_5
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v5, "currentLensInfo is invalid"

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_7
    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mLatestRepeatingCaptureResult:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureResult;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;

    const/4 v6, 0x3

    aget v7, v2, v6

    const/4 v6, 0x0

    aget v3, v2, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v6, v4

    invoke-direct {v5, v7, v3, v6}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;-><init>(IIF)V

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LENS_POS - calculateLensCode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Current : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x3

    aget v7, v2, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v3, 0x6

    new-array v4, v3, [I

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos1()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v4, v7

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos1()I

    move-result v6

    const/4 v7, 0x1

    aput v6, v4, v7

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos2()I

    move-result v6

    const/4 v7, 0x2

    aput v6, v4, v7

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos2()I

    move-result v6

    const/4 v7, 0x3

    aput v6, v4, v7

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos2()I

    move-result v6

    const/16 v16, 0x4

    aput v6, v4, v16

    aget v6, v2, v7

    const/4 v7, 0x5

    aput v6, v4, v7

    const/16 v6, 0x9

    if-ne v13, v6, :cond_8

    new-array v4, v6, [I

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos1()I

    move-result v6

    const/16 v16, 0x0

    aput v6, v4, v16

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos1()I

    move-result v6

    const/16 v17, 0x1

    aput v6, v4, v17

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos2()I

    move-result v6

    const/16 v17, 0x2

    aput v6, v4, v17

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos2()I

    move-result v6

    const/16 v17, 0x3

    aput v6, v4, v17

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos2()I

    move-result v6

    const/16 v19, 0x4

    aput v6, v4, v19

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos3()I

    move-result v6

    aput v6, v4, v7

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos3()I

    move-result v6

    aput v6, v4, v3

    const/4 v3, 0x7

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/AIFLensPos;->getPos3()I

    move-result v5

    aput v5, v4, v3

    const/16 v3, 0x8

    aget v2, v2, v17

    aput v2, v4, v3

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    :goto_6
    move-object v2, v4

    goto :goto_7

    :cond_9
    const/16 v16, 0x0

    :goto_7
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move/from16 v4, v16

    :goto_8
    if-ge v4, v13, :cond_11

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dynamicShot currentRequest count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isMfHdrDsMode(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlMfHdrEvCompensationList()[F

    move-result-object v7

    array-length v7, v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v7, v4, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlMfHdrEvCompensationList()[F

    move-result-object v6

    aget v6, v6, v4

    :goto_9
    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAeCompensationStepReciprocal()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_a
    const/16 v5, 0x6e

    goto :goto_c

    :cond_b
    invoke-static {v9}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isLlHdrDsMode(I)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlLlHdrEvCompensationList()[F

    move-result-object v7

    array-length v7, v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v7, v4, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlLlHdrEvCompensationList()[F

    move-result-object v6

    aget v6, v6, v4

    :goto_b
    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAeCompensationStepReciprocal()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_a

    :cond_d
    const/16 v5, 0x6e

    if-ne v9, v5, :cond_e

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v6, v10}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->LENS_FOCUS_LENS_POS_STALL:Landroid/hardware/camera2/CaptureRequest$Key;

    aget v7, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_e
    :goto_c
    invoke-interface {v11}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getProcessType()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    if-ne v6, v7, :cond_f

    if-nez v4, :cond_f

    invoke-virtual {v1, v8}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPreview(Z)V

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    const/4 v7, 0x1

    invoke-virtual {v1, v12, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPictureRequestOption(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Z)V

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setThumbnail(Z)V

    if-eqz v18, :cond_10

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->clearStreamOption()V

    goto :goto_d

    :cond_f
    const/4 v7, 0x1

    :cond_10
    :goto_d
    invoke-virtual {v1, v8}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPreview(Z)V

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    xor-int/lit8 v5, v20, 0x1

    move-object/from16 v7, v24

    invoke-virtual {v1, v7, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPictureRequestOption(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Z)V

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    move-object/from16 p2, v2

    move/from16 v6, v20

    move-object/from16 v2, v23

    invoke-virtual {v1, v2, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPictureRequestOption(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Z)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->clearStreamOption()V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_8

    :cond_11
    :try_start_1
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v2, v14}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->takeMultiPicture(Ljava/util/List;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureSequenceId:I

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "takeProcessingPictureInternal fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_12
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "dynamicShotConditionForMultiPicture is invalid - wrong shot mode"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public bridge synthetic addMainPreviewSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mainPreviewSurface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->addMainPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic connectCamDevice(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "camDevice",
            "deviceConfiguration",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->connectCamDevice(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic disconnectCamDevice()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->disconnectCamDevice()V

    return-void
.end method

.method public bridge synthetic dumpLatestRepeatingCaptureResult()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->dumpLatestRepeatingCaptureResult()V

    return-void
.end method

.method public bridge synthetic getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLatestRepeatingCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getLatestRepeatingCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getMakerType()I
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMakerType()I

    move-result p0

    return p0
.end method

.method public getNumberOfPostProcessorSequenceStacked()I
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->getNumberOfPostProcessorSequenceStacked()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSecondPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getSecondPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p0

    return-object p0
.end method

.method protected initializeMaker()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PRIVATE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "initializeMaker E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lock()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mContext:Landroid/content/Context;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->initialize(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mImmediateProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->setImmediateProcessCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPostProcessCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->setPostProcessCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPPPStatusCallback:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->setPPPStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    const-string p0, "initializeMaker X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw v0
.end method

.method protected initializeSequence(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    return-void
.end method

.method public synthetic lambda$new$0$ProcessingPhotoMakerBase(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 5

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_CAPTURE_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isDsProcessingMode(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    move v0, v2

    :cond_0
    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p2, v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$ThumbnailCallbackHelper;->onDraftThumbnailTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p2, v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$ThumbnailCallbackHelper;->onThumbnailTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :goto_0
    return-void
.end method

.method protected onCamDeviceClosed()V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PRIVATE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "onCamDeviceClosed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "%s : getting onCamDeviceClosed while process sequence is on going"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    aput-object p0, v5, v0

    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v4, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->errorRequest(ILjava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method protected onCamDeviceConnected()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDeviceMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setPictureDepthCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    return-void
.end method

.method protected processWithBasketCollector(Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "basketCollector",
            "sequence",
            "imageBuffer",
            "camCapability"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->collect(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/util/Map;

    move-result-object p3

    const/4 v1, 0x1

    if-nez p3, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "processWithBasketCollector - bufferMap is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->getFormat()I

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_4

    const v6, 0x44363159

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_DATA_TOF_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->getData()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MULTI_PICTURE_DATA_CONFIDENCE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;->getData()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;->RESOURCE_IMAGE:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;

    invoke-interface {p2, v2, v3, p4}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->nextRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "MultiPictureCallback onPictureTaken - nextRequest is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->isError()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v2, v3, v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V

    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mBasketCollectorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->release()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mBasketCollectorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    return v1
.end method

.method protected releaseMaker()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PRIVATE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "releaseMaker E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mMakerPrivateKeys:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->setImmediateProcessCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->deinitialize()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    const-string p0, "releaseMaker X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw v0
.end method

.method public bridge synthetic restartPreviewRepeating()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->restartPreviewRepeating()I

    move-result p0

    return p0
.end method

.method protected sendPictureData(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "TAG",
            "pictureCallback",
            "data",
            "extraBundle"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsExtraInfoProcessingMode(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v0, v1

    :catch_1
    const-string v2, "CONTROL_DYNAMIC_SHOT_HINT is unsupported"

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, p2, p3, p4, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    goto :goto_3

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p1, p2, p3, p4, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onProcessingPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic setAePreCaptureTrigger(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "trigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setAePreCaptureTrigger(I)V

    return-void
.end method

.method public bridge synthetic setAfAndAePreCaptureTrigger(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "afTrigger",
            "aePreCaptureTrigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setAfAndAePreCaptureTrigger(II)V

    return-void
.end method

.method public bridge synthetic setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic setPrivateCommand(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "privateCommand"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setPrivateCommand(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic setRawPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setRawPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic startPreviewRepeating()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->startPreviewRepeating()I

    move-result p0

    return p0
.end method

.method public bridge synthetic stopRepeating()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->stopRepeating()V

    return-void
.end method

.method public declared-synchronized takePostProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takePostProcessingPicture - dynamicShotInfo %s runningPhysicalId %s DFovStreamType %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mRunningPhysicalId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mDFovStreamType:Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "resultFile"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->checkDynamicShotInfoForProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->checkPostProcessorState()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->takeProcessingPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized takeProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamicShotInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->PROCESSING_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takeProcessingPicture - dynamicShotInfo %s runningPhysicalId %s DFovStreamType %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mRunningPhysicalId:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mDFovStreamType:Ljava/lang/Integer;

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->checkDynamicShotInfoForProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->takeProcessingPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;)V

    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
