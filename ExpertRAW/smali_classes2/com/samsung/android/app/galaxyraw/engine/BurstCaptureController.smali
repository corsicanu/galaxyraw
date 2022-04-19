.class Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;
.super Ljava/lang/Object;
.source "BurstCaptureController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;


# static fields
.field private static final BURST_CAPTURE_SOUND_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BurstCaptureController"


# instance fields
.field private mBurstCaptureCount:I

.field private mBurstCaptureDateTaken:J

.field private final mBurstCaptureEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBurstCaptureFps:I

.field private mBurstCaptureGroupId:I

.field private mBurstCaptureSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mInputType:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

.field private mIsCapturing:Z

.field private mMaxBurstCaptureCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->BURST_CAPTURE_SOUND_ARRAY:Landroid/util/SparseArray;

    return-void
.end method

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mIsCapturing:Z

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureFps:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureDateTaken:J

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->BURST_SHUTTER_20FPS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method private cancelBurstPicture()V
    .locals 5

    const-string v0, "BurstCaptureController"

    const-string v1, "cancelBurstCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "StopBurstPictureRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture - StopBurstPictureRequest : End["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GalaxyRaw/CameraPerformance"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BurstCaptureController$4rNeQ_-IJHxZOzSv_ZJGm1bjM5k;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BurstCaptureController$4rNeQ_-IJHxZOzSv_ZJGm1bjM5k;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->updateBurstPictureDB(I)V

    :cond_0
    const-string p0, "TakeBurstPictureSequence"

    invoke-static {p0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - TakeBurstPictureSequence : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setBurstCaptureSoundId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "burstShotFps"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BurstCaptureController"

    const-string p1, "setBurstCaptureSoundId : returned because capturing is in progress"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->BURST_CAPTURE_SOUND_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    :cond_1
    return-void
.end method


# virtual methods
.method getBurstCaptureFps()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureFps:I

    return p0
.end method

.method getBurstCaptureSoundId()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureSoundId:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    return-object p0
.end method

.method handleBurstShutterPressed(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    const-string v1, "BurstCaptureController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleBurstShutterPressed : Return, wrong state for take picture: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleBurstShutterPressed : Return, wrong capture state for take picture: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "handleBurstShutterPressed : Return, it is already requested."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getRemainCount(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_5

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    if-ge v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    const-string v0, "handleBurstShutterPressed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TakeBurstPictureSequence"

    invoke-static {v0, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - TakeBurstPictureSequence : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capture - AddTakeBurstPictureRequest : Point["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mInputType:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureFps:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->setBurstCaptureSoundId(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const/16 v0, 0x2710

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->acquireDVFSLock(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    return v3

    :cond_5
    const-string p0, "handleBurstShutterPressed : Return, remain count is not enough for burst capture"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method handleBurstShutterReleased()Z
    .locals 2

    const-string v0, "BurstCaptureController"

    const-string v1, "handleBurstShutterReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$cancelBurstPicture$3$BurstCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureCompleted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onBurstPictureCompleted$0$BurstCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureCompleted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onBurstPictureStarted$1$BurstCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onPictureProcessingStarted()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureStarted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onBurstPictureTaken$2$BurstCaptureController()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureProgress(I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBurstPictureCompleted(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "camDevice"
        }
    .end annotation

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mIsCapturing:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBurstPictureCompleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BurstCaptureController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "StopBurstPictureRequest"

    invoke-static {p1, p2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - StopBurstPictureRequest : End["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GalaxyRaw/CameraPerformance"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    const-string p0, "onBurstPictureCompleted : returned because camera is not running!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BurstCaptureController$Pl04S4rOGWu94PsDsRpdZs1WUwk;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BurstCaptureController$Pl04S4rOGWu94PsDsRpdZs1WUwk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->updateBurstPictureDB(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyCurrentLightCondition()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_3
    const-string p0, "TakeBurstPictureSequence"

    invoke-static {p0, p2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Capture - TakeBurstPictureSequence : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBurstPictureStarted(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBurstPictureStarted : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BurstCaptureController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "TakeBurstPictureRequest"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - TakeBurstPictureRequest : End["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "onBurstPictureStarted : Returned because camera is not running."

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mIsCapturing:Z

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureDateTaken:J

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v3, p2

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    sub-long/2addr v1, v3

    :cond_1
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2, v1, v2}, Ljava/util/Random;-><init>(J)V

    const v1, 0x7fffffff

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->getBurstCaptureSoundId()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->getBurstCaptureSoundId()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    move-result-object p2

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BurstCaptureController$XbDDc2hRdT1gjJfpYWLHpdopC1g;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BurstCaptureController$XbDDc2hRdT1gjJfpYWLHpdopC1g;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->stopMotionPhoto()V

    :cond_3
    return-void
.end method

.method public onBurstPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 8
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p2

    const-string p3, "BurstCaptureController"

    if-nez p2, :cond_0

    const-string p0, "onBurstPictureTaken : Camera is not running. return."

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p2, v0, :cond_1

    const-string p0, "onBurstPictureTaken : returned because CaptureState is not STARTING and CAPTURING"

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    if-lt p2, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBurstPictureTaken : stop burst capture and returned because mMaxBurstCaptureCount("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is reached"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBurstPictureTaken : mBurstCaptureCount="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureDateTaken:J

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->BURST:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;JIIILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BurstCaptureController$ZquTeeggbFlOXxzfdhvO2AvktsE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$BurstCaptureController$ZquTeeggbFlOXxzfdhvO2AvktsE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBurstShotFpsChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "burstShotFps",
            "camDevice"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBurstShotFpsChanged : burstShotFps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BurstCaptureController"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureFps:I

    :cond_0
    return-void
.end method

.method public onDraftThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "draftThumbnailData",
            "info",
            "camDevice"
        }
    .end annotation

    const-string p0, "BurstCaptureController"

    const-string p1, "onDraftThumbnailTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "thumbnailData",
            "info",
            "camDevice"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    const-string v1, "BurstCaptureController"

    if-eq p3, v0, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p3, v0, :cond_0

    const-string p0, "onBurstPictureTaken : returned because CaptureState is not STARTING and CAPTURING"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget p3, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureCount:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    if-lt p3, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onThumbnailTaken : returned because mMaxBurstCaptureCount("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") is reached"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p3, "onThumbnailTaken"

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->getFormat()I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {p3, p1, v0, p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    return-void
.end method

.method registerBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->removeRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mIsCapturing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mIsCapturing:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->cancelBurstPicture()V

    :cond_1
    return-void
.end method

.method unregisterBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
