.class Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;,
        Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;
    }
.end annotation


# static fields
.field private static final MAX_POST_PROCESSING_COUNT_FOR_108M_RESOLUTION:I = 0x2

.field private static final PICTURE_LATCH_WAIT_TIMEOUT:I = 0x1f4

.field private static final SHUTTER_LATCH_WAIT_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PictureCallbackManager"


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mDateTaken:J

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

.field private mIsDraftPictureSaved:Z

.field private mIsPictureCallbackReceived:Z

.field private mPictureData:Ljava/nio/ByteBuffer;

.field private mPictureLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPostProcessingCount:I

.field private final mPostProcessingEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRawPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;

.field private mSavingType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

.field private mShutterLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mThumbnailCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mThumbnailCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->isPictureCallbackReceived()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->getDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mIsDraftPictureSaved:Z

    return p1
.end method

.method private completeTakePicture()V
    .locals 7

    const-string v0, "PictureCallbackManager"

    const-string v1, "completeTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$TakePictureType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentTakePictureType()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    iget-wide v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mDateTaken:J

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mSavingType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;JLcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$aZ9d21NP2pUCNBphkc63R1rOP50;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$aZ9d21NP2pUCNBphkc63R1rOP50;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->waitPictureLatch()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startTransientCaptureStopTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyCurrentLightCondition()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyCurrentDynamicShotCaptureDurationTime()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->reset()V

    return-void
.end method

.method private getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mDateTaken:J

    return-wide v0
.end method

.method private getImageSavingType(I)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_SCAN_MANUAL_CROP:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->SMART_SCAN:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    return-object p0

    :cond_0
    const p0, 0x48454946

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    :goto_0
    return-object p0
.end method

.method private handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "info"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    const-string v2, "PictureCallbackManager"

    if-eq v0, v1, :cond_0

    const-string p0, "handlePictureTaken : Returned because current capture state is not CAPTURING."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getEffectController()Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->isEffectProcessorTakePictureRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getEffectController()Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->takePicture(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->getImageFormat()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->getImageSavingType(I)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mSavingType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mDateTaken:J

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRawCaptureEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->access$200(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mDateTaken:J

    goto :goto_0

    :cond_2
    const-string p0, "handlePictureTaken : raw picture callback was not called yet on raw capture sequence."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method private isPictureCallbackReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    return p0
.end method

.method private notifyNextCaptureAvailable()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->isMaxPostProcessingCountReached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$alSye_cIm40LY5YrQhMRHTZaEms;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$alSye_cIm40LY5YrQhMRHTZaEms;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    :cond_1
    return-void
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mIsDraftPictureSaved:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mSavingType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mDateTaken:J

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;)V

    return-void
.end method

.method private startShutterEffect()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isMotionPhotoAudioRecordingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$YnjpH8_Q6fT12QDH_L5tRKbnY0Q;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$YnjpH8_Q6fT12QDH_L5tRKbnY0Q;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isLongTakePicture()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->SINGLE_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getScreenFlashController()Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isScreenFlashStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getScreenFlashController()Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->stopScreenFlash()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getScreenFlashController()Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isNightScreenFlashStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getScreenFlashController()Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->stopNightScreenFlash()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$gXpDT2A5xjzJU0PXen2rN73yqOo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$gXpDT2A5xjzJU0PXen2rN73yqOo;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method private waitPictureLatch()V
    .locals 4

    const-string v0, "PictureCallbackManager"

    :try_start_0
    const-string v1, "waitPictureLatch : Waiting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitPictureLatch : Waiting completed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "waitPictureLatch : Interrupted while waiting mPictureLatch."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method countDownPictureLatch()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method getRawPictureCallbackManager()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$RawPictureCallbackManager;

    return-object p0
.end method

.method getThumbnailCallbackManager()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mThumbnailCallbackManager:Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$ThumbnailCallbackManager;

    return-object p0
.end method

.method public handleTakePictureStopped()V
    .locals 3

    const-string v0, "TakePictureRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string v0, "TakeProcessingPictureRequest"

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - TakePictureStopped : Point["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->startShutterEffect()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyCurrentLightCondition()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyCurrentDynamicShotCaptureDurationTime()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->reset()V

    return-void
.end method

.method initPostProcessingCount()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMakerHolder()Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getNumberOfPostProcessorSequenceStacked()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    return-void
.end method

.method isDraftPictureSaved()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDraftPictureSaved : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mIsDraftPictureSaved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mIsDraftPictureSaved:Z

    return p0
.end method

.method isMaxPostProcessingCountReached()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MAX_POST_PROCESSING_COUNT_FOR_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$completeTakePicture$6$PictureCallbackManager()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$YYb5FxN5zsFFMSVR1QMYARKBwtQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$YYb5FxN5zsFFMSVR1QMYARKBwtQ;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$notifyNextCaptureAvailable$7$PictureCallbackManager()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AUFVDQpEuMvJwHplaU4pTV1EZ_M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AUFVDQpEuMvJwHplaU4pTV1EZ_M;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onDraftPostProcessingPictureTaken$0$PictureCallbackManager(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onPictureSaved(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;Z)V

    return-void
.end method

.method public synthetic lambda$onProcessingFrameCollected$1$PictureCallbackManager(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onProcessingFrameProgress(I)V

    return-void
.end method

.method public synthetic lambda$onProcessingPictureTaken$2$PictureCallbackManager()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onPictureProcessingCompleted()V

    return-void
.end method

.method public synthetic lambda$onShutter$3$PictureCallbackManager()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$qe1irH4Wy5RYrk13zGFdbwM9gqg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$qe1irH4Wy5RYrk13zGFdbwM9gqg;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onShutter$4$PictureCallbackManager()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onPictureProcessingStarted()V

    return-void
.end method

.method public synthetic lambda$onShutter$5$PictureCallbackManager()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ktpPWAgvS1TBrxtWlfsYTV0GiUc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ktpPWAgvS1TBrxtWlfsYTV0GiUc;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$startShutterEffect$8$PictureCallbackManager()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public synthetic lambda$startShutterEffect$9$PictureCallbackManager()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->startShutterAnimation()V

    return-void
.end method

.method public onDraftPostProcessingPictureTaken(Landroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resultUri",
            "resultFile",
            "camDevice"
        }
    .end annotation

    const-string p3, "PictureCallbackManager"

    const-string v0, "onDraftPostProcessingPictureTaken"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clear()V

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForReading(Landroid/net/Uri;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v5

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$e9OqD4UXu2uamENdSLIq3shXtVM;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$e9OqD4UXu2uamENdSLIq3shXtVM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reason",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PictureCallbackManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "TakePictureRequest"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p1, "TakeProcessingPictureRequest"

    invoke-static {p1, p2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Capture - TakePictureError : Point["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GalaxyRaw/CameraPerformance"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCameraDeviceOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->interruptCaptureRequest()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/16 p1, -0xa

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "info",
            "camDevice"
        }
    .end annotation

    const-string p3, "TakePictureRequest"

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - TakePictureRequest : End["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "PictureCallbackManager"

    const-string v0, "onPictureTaken"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;)V

    return-void
.end method

.method public onPostProcessingError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation

    const-string p1, "TakePictureSequence"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - TakePictureSequence (PostProcessing ERROR): End["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostProcessingError - Post processing count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PictureCallbackManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->notifyNextCaptureAvailable()V

    return-void
.end method

.method public onPostProcessingFrameCollectionCompleted(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation

    const-string p1, "TakeProcessingPictureRequest"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - TakeProcessingPictureRequest : End["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PictureCallbackManager"

    const-string v0, "onPostProcessingFrameCollectionCompleted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method public onPostProcessingFrameCollectionStopped(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation

    const-string p1, "TakeProcessingPictureRequest"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - TakeProcessingPictureRequest : End["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PictureCallbackManager"

    const-string v0, "onPostProcessingFrameCollectionStopped"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isWaiting(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->completeTakePicture()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->stopCapture(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V

    :goto_0
    return-void
.end method

.method public onPostProcessingPictureTaken(Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultFile",
            "camDevice"
        }
    .end annotation

    const-string p1, "TakePictureSequence"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Capture - TakePictureSequence : End["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GalaxyRaw/CameraPerformance"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPostProcessingPictureTaken - Post processing count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PictureCallbackManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->notifyNextCaptureAvailable()V

    return-void
.end method

.method public onProcessingFrameCollected(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProcessingFrameCollected : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PictureCallbackManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$0bLYfTWj0eHM2fJpfGhxW963C38;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$0bLYfTWj0eHM2fJpfGhxW963C38;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;I)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProcessingPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "info",
            "camDevice"
        }
    .end annotation

    const-string p3, "TakeProcessingPictureRequest"

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - TakeProcessingPictureRequest : End["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "PictureCallbackManager"

    const-string v0, "onProcessingPictureTaken"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$ThRe6spzNe6ufYc7PqlCWY2HwNE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$ThRe6spzNe6ufYc7PqlCWY2HwNE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "camDevice"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onProgress : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictureCallbackManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShutter(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "camDevice"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Capture - ShutterCallback : Point["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GalaxyRaw/CameraPerformance"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PictureCallbackManager"

    const-string p2, "onShutter : Returned because camera is not running."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->interruptRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->interruptRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setShutterReceived(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->startShutterEffect()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentTakePictureType()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    if-eq p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->prepareStore(Ljava/lang/Long;)V

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$TakePictureType:[I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentTakePictureType()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$OT--jeT2P26rRuOJ7NBgqA7WoAg;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$OT--jeT2P26rRuOJ7NBgqA7WoAg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingCount:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->isMaxPostProcessingCountReached()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$xcJE5rAvl2YRsA3iQpSofCZ-8As;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$xcJE5rAvl2YRsA3iQpSofCZ-8As;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$-OOQDWIXfpECtRImwpv6bME98-Q;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureCallbackManager$-OOQDWIXfpECtRImwpv6bME98-Q;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method registerPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->isMaxPostProcessingCountReached()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$qe1irH4Wy5RYrk13zGFdbwM9gqg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$qe1irH4Wy5RYrk13zGFdbwM9gqg;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method start()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->reset()V

    return-void
.end method

.method stop()V
    .locals 4

    const-string v0, "PictureCallbackManager"

    const-string v1, "stop : wait shutter latch - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Interrupted while waiting shutter latch."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop : wait shutter latch - end, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method unregisterPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureCallbackManager;->mPostProcessingEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
