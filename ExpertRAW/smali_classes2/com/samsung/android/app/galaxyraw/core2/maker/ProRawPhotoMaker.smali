.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;
.super Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;
.source "ProRawPhotoMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;
    }
.end annotation


# static fields
.field private static final PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mDngManageNode:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

.field private final mDngNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

.field private final mDngPacking:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncodeResultCallback:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mEvComp:Ljava/lang/Float;

.field private mHDRState:Ljava/lang/Integer;

.field private mJpegNode:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

.field private final mJpegNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

.field private final mMpiMfrpCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

.field private mMpiMfrpNode:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

.field private mNonLinearCompression:Ljava/lang/Boolean;

.field private mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

.field private mRawPictureSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
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

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$X84umMma9wQVpy2x0pYdJszMvaU;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$X84umMma9wQVpy2x0pYdJszMvaU;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$FRBiP41BwyG96zkIPKNswMyxnSA;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$FRBiP41BwyG96zkIPKNswMyxnSA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngPacking:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mJpegNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$2;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMpiMfrpCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$1fm6sbKhp53mCIhjUH_8H-KW4v0;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$1fm6sbKhp53mCIhjUH_8H-KW4v0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mEncodeResultCallback:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;

    const/16 p1, 0x23

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMainPreviewCbImageFormat:I

    const/16 p2, 0x100

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mFirstCompPicCbImageFormat:I

    const/16 p2, 0x20

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mFirstRawPicCbImageFormat:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mThumbnailCbImageFormat:I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$dlZpMdaNgR4CHtbNGCQg71m9xBQ;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$dlZpMdaNgR4CHtbNGCQg71m9xBQ;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDeviceMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$3;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevicePictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mJpegNode:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngManageNode:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    return-object p0
.end method

.method static synthetic lambda$onPreviewResult$4(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setLatestRepeatingCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic lambda$takeProcessingRawPictureInternal$11(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;)V
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

.method private takeProcessingRawPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;[BLjava/lang/Boolean;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dynamicShotInfo",
            "postModeFile",
            "multiFrameEvList",
            "isMultiFrame"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "takeProcessingRawPictureInternal - dynamicShotInfo %s isPostMode %b runningPhysicalId %s DFovStreamType %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const/4 v11, 0x1

    if-eqz p2, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v10

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x2

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRunningPhysicalId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDFovStreamType:Ljava/lang/Integer;

    aput-object v5, v3, v4

    invoke-static {v9, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRunningPhysicalId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCapturePhysicalId:I

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$STs41Dna2ycjnvvh6KSsNIe-8kQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$STs41Dna2ycjnvvh6KSsNIe-8kQ;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsCondition()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsExtraInfo()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsDeviceInfo()J

    move-result-wide v16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsPicMainCount(Ljava/lang/Integer;)I

    move-result v8

    invoke-static {v2, v8}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsModeNeedSeparatedCompPicForGalaxyRaw(II)Z

    move-result v18

    invoke-static {v15}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsExtraInfoNeedPreviewTarget(I)Z

    move-result v7

    invoke-static {v14, v15}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isDsProcessingMode(II)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-result-object v6

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v4

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl$Sequence;

    iget v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureEncodeFormat:I

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMakerPrivateKeys:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v11, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureDepthCbImageSize:Landroid/util/Size;

    move/from16 v19, v2

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    move-object v2, v3

    move-object v0, v3

    move/from16 v3, v19

    move-object/from16 v20, v5

    move-object/from16 v5, p2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object/from16 v6, p1

    move-object/from16 p2, v12

    move v12, v7

    move-object v7, v10

    move v10, v8

    move v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequestImpl$Sequence;-><init>(ILandroid/util/Size;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/util/Map;Z)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->initializeSequence(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessSequence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_RAW_DATA_FORMAT:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->RGB16:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mNonLinearCompression:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_IS_MULTIFRAME_CAPTURE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    new-instance v3, Ljava/lang/Boolean;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_HDR_STATE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mHDRState:Ljava/lang/Integer;

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_EV_COMP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mEvComp:Ljava/lang/Float;

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->set(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;->RGB16:Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;)V

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getProcessType()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    if-ne v2, v3, :cond_2

    if-eqz v18, :cond_2

    add-int/lit8 v14, v14, 0x1

    const-string v2, "takeProcessingRawPictureInternal dsCondition increasing - 0x%X"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v9, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->createRequestOptions()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCapturePhysicalId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_MULTI_FRAME_EV_LIST:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3
    if-ge v5, v10, :cond_6

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dynamicShot currentRequest count "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;->getProcessType()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    if-ne v3, v4, :cond_5

    if-nez v5, :cond_5

    invoke-virtual {v2, v12}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPreview(Z)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    move-object/from16 v4, p2

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v3, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPictureRequestOption(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Z)V

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setThumbnail(Z)V

    if-eqz v18, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    move-result-object v3

    move-object/from16 v7, v19

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->clearStreamOption()V

    goto :goto_4

    :cond_4
    move-object/from16 v7, v19

    goto :goto_4

    :cond_5
    move-object/from16 v4, p2

    move-object/from16 v7, v19

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v2, v12}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPreview(Z)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    move-object/from16 v8, v20

    invoke-virtual {v2, v8, v3, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPictureRequestOption(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Z)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->clearStreamOption()V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 p2, v4

    move-object/from16 v19, v7

    goto :goto_3

    :cond_6
    move-object/from16 v7, v19

    :try_start_1
    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCurrentPictureProcessLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->takeMultiPicture(Ljava/util/List;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCurrentPictureSequenceId:I

    iput-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCurrentPictureProcessSequence:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "takeProcessingRawPicture fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "dynamicShotConditionForMultiPicture is invalid - wrong shot mode"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method public declared-synchronized connectCamDevice(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
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

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "connectCamDevice - %s, %s, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureMaxRawSizeOnly()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getRawPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawPictureSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getParameters()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getStreamType()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getMaximumSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawPictureSize:Landroid/util/Size;

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->connectCamDevice(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createFirstPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 6

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mFirstCompPicCbImageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mFirstCompPicCbOption:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawPictureSize:Landroid/util/Size;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mFirstRawPicCbImageFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawPictureSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mFirstRawPicCbOption:Ljava/lang/Integer;

    invoke-direct {v2, v4, v5, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    return-object v0
.end method

.method protected createPreviewCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMainPreviewCbImageFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMainPreviewCbSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMainPreviewCbOption:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    return-object p1
.end method

.method protected createSecondPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createThirdPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMakerShootingMode()I
    .locals 0

    const/16 p0, 0x26

    return p0
.end method

.method protected getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object p0
.end method

.method protected getPrivateSettingExecutionMapToGet()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToGet:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getPrivateSettingExecutionMapToGet()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToGet:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToGet:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$Ju87Z6Ps4nWObTV3_hR33f4-jwE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$Ju87Z6Ps4nWObTV3_hR33f4-jwE;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToGet:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->HDR_STATE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$IyvUy_CryTDppZGZPOkMfM0PY-Y;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$IyvUy_CryTDppZGZPOkMfM0PY-Y;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToGet:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->EV_COMPENSATION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$37xhFw_zhskNprmS22p2mWMd2Fw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$37xhFw_zhskNprmS22p2mWMd2Fw;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToGet:Ljava/util/HashMap;

    return-object p0
.end method

.method protected getPrivateSettingExecutionMapToSet()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToSet:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->getPrivateSettingExecutionMapToSet()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToSet:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToSet:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->ENABLE_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$hPHNh1C-qtoiiWt6qHBqkwrip-I;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$hPHNh1C-qtoiiWt6qHBqkwrip-I;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToSet:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->HDR_STATE:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$9jreRKPzjoI67x-uCyEkzL14rCI;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$9jreRKPzjoI67x-uCyEkzL14rCI;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToSet:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->EV_COMPENSATION:Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$M1G2WDisZHqU2VdPzuEFBQLL7A0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$M1G2WDisZHqU2VdPzuEFBQLL7A0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPrivateSettingExecutionMapToSet:Ljava/util/HashMap;

    return-object p0
.end method

.method protected initializeMaker()V
    .locals 6

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->initializeMaker()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "initializeMaker E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMpiMfrpCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMpiMfrpNode:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->initialize(Z)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode$NodeCallback;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngManageNode:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->initialize(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngManageNode:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->OUTPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngPacking:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->setOutputPortDataCallback(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;)V

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mJpegNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFactory;->create(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mJpegNode:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->initialize(ZZ)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mJpegNode:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->OUTPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mEncodeResultCallback:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->setOutputPortDataCallback(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    const-string p0, "initializeMaker X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw v0
.end method

.method public synthetic lambda$getPrivateSettingExecutionMapToGet$5$ProRawPhotoMaker()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mNonLinearCompression:Ljava/lang/Boolean;

    return-object p0
.end method

.method public synthetic lambda$getPrivateSettingExecutionMapToGet$6$ProRawPhotoMaker()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mHDRState:Ljava/lang/Integer;

    return-object p0
.end method

.method public synthetic lambda$getPrivateSettingExecutionMapToGet$7$ProRawPhotoMaker()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mEvComp:Ljava/lang/Float;

    return-object p0
.end method

.method public synthetic lambda$getPrivateSettingExecutionMapToSet$10$ProRawPhotoMaker(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mEvComp:Ljava/lang/Float;

    return-void
.end method

.method public synthetic lambda$getPrivateSettingExecutionMapToSet$8$ProRawPhotoMaker(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mNonLinearCompression:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic lambda$getPrivateSettingExecutionMapToSet$9$ProRawPhotoMaker(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mHDRState:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic lambda$new$0$ProRawPhotoMaker()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    return-void
.end method

.method public synthetic lambda$new$1$ProRawPhotoMaker(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "onDataReceived : mDngPacking %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;

    if-nez v1, :cond_0

    const-string p0, "onDataReceived - RawPictureCallback is null"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$RawPictureCallbackHelper;->onPictureTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    return-void
.end method

.method public synthetic lambda$new$2$ProRawPhotoMaker(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived : mEncodeJpeg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->setJpegData(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;->dngCreate()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->sendPictureData(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    return-void
.end method

.method public synthetic lambda$new$3$ProRawPhotoMaker(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lockIfFlagEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;->onPreviewFrame(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method protected onPreviewResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "camCapability"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMpiMfrpNode:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$_jRyGn38nl5PTrVKZ9fouWUmBKQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$_jRyGn38nl5PTrVKZ9fouWUmBKQ;

    invoke-virtual {p0, p2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$W3zY5HZ8Zi0-Yq4nipiTkQS965Y;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$W3zY5HZ8Zi0-Yq4nipiTkQS965Y;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected releaseMaker()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->releaseMaker()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "releaseMaker"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngManageNode:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDngManageNode:Lcom/samsung/android/app/galaxyraw/core2/node/DngManageNode;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mJpegNode:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mJpegNode:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMpiMfrpNode:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMpiMfrpNode:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->unlock()V

    throw v0
.end method

.method public declared-synchronized stopBurstPictureRepeating()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopBurstPictureRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->stopBurstPictureRepeatingInternal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTakePicture()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTakePicture: captureState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCaptureState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRawData:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->restartPreviewRepeating()I
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "stopTakePicture fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takePicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    .locals 8
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
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takePicture - dynamicShotInfo %s runningPhysicalId %s DFovStreamType %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRunningPhysicalId:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDFovStreamType:Ljava/lang/Integer;

    aput-object v6, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRunningPhysicalId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCapturePhysicalId:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->createRequestOptions()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsCondition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsExtraInfo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsDeviceInfo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCapturePhysicalId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsExtraInfo()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsExtraInfoNeedPreviewTarget(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPreview(Z)V

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->COMP:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-virtual {v0, p1, v1, v5}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPictureRequestOption(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mThumbnailCbImageSize:Landroid/util/Size;

    if-eqz p1, :cond_2

    move v3, v5

    :cond_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setThumbnail(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->takePicture(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "takePicture fail"

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized takePostProcessingRawPicture(Ljava/io/File;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
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
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takePostProcessingRawPicture - runningPhysicalId %s DFovStreamType %s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRunningPhysicalId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDFovStreamType:Ljava/lang/Integer;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMpiMfrpNode:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getEVList()[B

    move-result-object v1

    aget-byte v3, v1, v5

    const/high16 v4, 0xaa0000

    aget-byte v7, v1, v5

    or-int v10, v7, v4

    aput-byte v5, v1, v5

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v9

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;-><init>(IIIJ)V

    const-string v7, "takePostProcessingRawPicture - dynamicShotInfo %s numOfRawFrames %d"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-static {v0, v7, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "resultFile"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->checkDynamicShotInfoForProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->checkPostProcessorState()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    if-le v3, v6, :cond_0

    move v5, v6

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v4, p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->takeProcessingRawPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;[BLjava/lang/Boolean;)V
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

.method public declared-synchronized takePostProcessingSingleRawPicture(Ljava/io/File;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
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
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takePostProcessingSingleRawPicture - runningPhysicalId %s DFovStreamType %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRunningPhysicalId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDFovStreamType:Ljava/lang/Integer;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0xaa0001

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const v8, 0xaa0001

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;-><init>(IIIJ)V

    const-string v1, "takePostProcessingSingleRawPicture - dynamicShotInfo %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "resultFile"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->checkDynamicShotInfoForProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->checkPostProcessorState()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    const/16 v0, 0x15

    new-array v0, v0, [B

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->takeProcessingRawPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;[BLjava/lang/Boolean;)V
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

.method public declared-synchronized takeProcessingRawPicture()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->PRO_RAW_PHOTO_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takeProcessingRawPicture - runningPhysicalId %s DFovStreamType %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mRunningPhysicalId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mDFovStreamType:Ljava/lang/Integer;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mMpiMfrpNode:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getEVList()[B

    move-result-object v1

    const/high16 v2, 0xaa0000

    aget-byte v3, v1, v4

    or-int v8, v3, v2

    aput-byte v4, v1, v4

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;-><init>(IIIJ)V

    const-string v3, "takeProcessingRawPicture - dynamicShotInfo %s"

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-static {v0, v3, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->checkDynamicShotInfoForProcessingPicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    const/4 v0, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->takeProcessingRawPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Ljava/io/File;[BLjava/lang/Boolean;)V

    iput-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mIsIPPCapturing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
