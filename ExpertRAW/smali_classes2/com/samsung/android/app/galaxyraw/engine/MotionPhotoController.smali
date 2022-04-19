.class Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;
.super Ljava/lang/Object;
.source "MotionPhotoController.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;


# static fields
.field private static final APEX_PACKAGE_VERSION_SUPPORTING_AUDIO_RECORDING:Ljava/lang/String; = "3.2.00"

.field private static final RECORDING_COMPLETE_SOUND_DURATION:I = 0x1c2

.field private static final TAG:Ljava/lang/String; = "MotionPhotoController"


# instance fields
.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mIsAudioRecordingSupported:Z

.field private mIsEffectMode:Z

.field private mIsMotionPhotoStarted:Z

.field private mLastPreviewTimeStamp:J

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

.field private mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

.field private final mRequestIds:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/concurrent/locks/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStampOffset:J


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

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->checkMotionPhotoFeature()V

    return-void
.end method

.method private checkMotionPhotoFeature()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.apex"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "3.2.00"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsAudioRecordingSupported:Z

    :cond_0
    return-void
.end method

.method private getRecordingFpsFactor()I
    .locals 2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MOTION_PHOTO_RECORDING_FPS:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result p0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported motion photo recording fps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MOTION_PHOTO_RECORDING_FPS:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method isAudioRecordingSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsAudioRecordingSupported:Z

    return p0
.end method

.method isMotionPhotoEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isMotionPhotoSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method isPreviewCallbackRequired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInfo(IIILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "what",
            "ext1",
            "ext2",
            "data"
        }
    .end annotation

    const-string p3, "MotionPhotoController"

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo - what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ext1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " data "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x2723

    if-eq p1, p2, :cond_4

    const/16 p2, 0x2724

    if-eq p1, p2, :cond_4

    const-string p2, "id"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {p4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/Condition;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto/16 :goto_0

    :cond_0
    const-string p1, "APEX_INFO_STORE_CANCELED : storeCompletedCondition is null"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    move-object p1, p4

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    check-cast p4, Landroid/os/Bundle;

    const-string v0, "uri"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {p4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/Condition;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto/16 :goto_0

    :cond_1
    const-string p1, "APEX_INFO_STORE_COMPLETED : storeCompletedCondition is null"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsEffectMode:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getEffectController()Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setRecordingSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getToken()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    goto :goto_0

    :cond_3
    const-string p1, "APEX_INFO_RECORDER_STARTED : MotionPhotoComposer is released"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsAudioRecordingSupported:Z

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->MOTION_PHOTO_RECORDING_COMPLETE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->VIDEO_RECORD:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onInfo - process fail for callback "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x2718
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewData",
            "info"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;->getTimeStamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    const/16 v2, 0x23

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    iget-wide v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mTimeStampOffset:J

    sub-long/2addr v0, v3

    invoke-virtual {p2, p1, v2, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->queueBuffer(Ljava/nio/ByteBuffer;IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method prepareStore()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->prepareStore(Ljava/lang/Long;)V

    return-void
.end method

.method prepareStore(Ljava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    const-string v0, "MotionPhotoController"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-nez v1, :cond_0

    const-string p1, "prepareStore : Returned, because MotionPhotoComposer is released"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v5, 0x3e8

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    div-long/2addr v1, v5

    iget-wide v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mTimeStampOffset:J

    :goto_0
    sub-long/2addr v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, v5

    iget-wide v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mTimeStampOffset:J

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v3

    invoke-virtual {p1, v3, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->store(IJ)J

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareStore : MotionPhotoComposer store id("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareStore fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method start()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mTimeStampOffset:J

    return-void
.end method

.method startMotionPhoto()V
    .locals 9

    const-string v0, "MotionPhotoController"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "startMotionPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsMotionPhotoStarted:Z

    if-eqz v1, :cond_0

    const-string v1, "startMotionPhoto : Returned because motion photo was started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsMotionPhotoStarted:Z

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "CameraMotionPhotoComposerReferenceTag"

    invoke-static {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Factory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v2, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsEffectMode:Z

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailableEffectPreviewFpsRange()Landroid/util/Range;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsEffectMode:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    new-array v4, v5, [I

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v6

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    const/16 v4, 0x1e

    if-nez v3, :cond_3

    new-array v3, v5, [I

    const/4 v5, 0x7

    aput v5, v3, v6

    aput v4, v3, v1

    goto :goto_0

    :cond_3
    new-array v3, v5, [I

    const/16 v5, 0xa

    aput v5, v3, v6

    aput v4, v3, v1

    :goto_0
    move-object v4, v3

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "front"

    goto :goto_2

    :cond_4
    const-string v3, "rear"

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    new-instance v7, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    invoke-direct {v7}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setPreviewSize(II)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setPreviewFpsRange([I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->getRecordingFpsFactor()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setFpsFactor(I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsEffectMode:Z

    invoke-virtual {v2, v4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setEffectRecording(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setUseIntrinsicTimestamp(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsEffectMode:Z

    if-nez v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    invoke-virtual {v2, v4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setAllocPreviewBuffer(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    const-string v4, "cam-id"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    if-ne v3, v1, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v6

    :goto_4
    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setSaveAsFlipped(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    const-string v3, "capture-heif"

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v4, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v4

    if-ne v4, v1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v6

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v1

    const-string v2, "audio-enable"

    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsAudioRecordingSupported:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v1

    const-string v2, "capture-button-sound-duration"

    const/16 v3, 0x1c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->build()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionPhoto fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_7
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method stop()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "MotionPhotoController"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->stopMotionPhoto()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method stopMotionPhoto()V
    .locals 4

    const-string v0, "MotionPhotoController"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "stopMotionPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsMotionPhotoStarted:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mIsMotionPhotoStarted:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getEffectController()Lcom/samsung/android/app/galaxyraw/engine/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/EffectController;->setRecordingSurface(Landroid/view/Surface;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->stop()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "stopMotionPhoto : Returned because motion photo was not started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionPhoto failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method store(Landroid/content/ContentValues;Landroid/os/ParcelFileDescriptor;)Landroid/net/Uri;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "parcelFileDescriptor"
        }
    .end annotation

    const-string v0, "] ["

    const-string v1, "Capture - StoreMotionPhoto : End["

    const-string v2, "MotionPhotoController"

    const-string v3, "]"

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-nez v8, :cond_0

    const-string p1, "store : Returned, because MotionPhotoComposer is released"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Capture - StoreMotionPhoto : Start["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v9}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "store id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v11}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget-object v11, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v12, "id"

    invoke-virtual {v11, v12, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v12, "key-value"

    invoke-virtual {v11, v12, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "pfd"

    invoke-virtual {v11, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {p1, v11}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setStoreData(Landroid/os/Bundle;)V

    const-wide/16 p1, 0xa

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, p1, p2, v11}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "store : wait timeout"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v9, v10}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "store fail - "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw p1
.end method
