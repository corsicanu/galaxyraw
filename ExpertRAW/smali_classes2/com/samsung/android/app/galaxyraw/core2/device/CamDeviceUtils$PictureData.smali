.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;
.super Ljava/lang/Object;
.source "CamDeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PictureData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;
    }
.end annotation


# static fields
.field private static TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private final mImageGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureRequestInfo:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

.field private mRemainingTargetCount:I

.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "pictureRequestInfo"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mRemainingTargetCount:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->setPictureMetaData(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mTimestamp:J

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockingImageReader",
            "image",
            "imageBuffer",
            "imageType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mRemainingTargetCount:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->addImageGroup(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)V

    invoke-virtual {p2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mTimestamp:J

    return-void
.end method


# virtual methods
.method declared-synchronized addImageGroup(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockingImageReader",
            "image",
            "imageBuffer",
            "imageType"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->setCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized drainImageGroups(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeImage"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mRemainingTargetCount:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mRemainingTargetCount:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "drainImageGroups(%b) - timestamp(%d), remainingTargetCount(%d/%d), imageGroups size(%d)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-wide v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mRemainingTargetCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mPictureRequestInfo:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getTargetCount()I

    move-result v4

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->closeImage()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dumpDebugString()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "PictureData(timestamp %d, captureResult %s, remaining / origin targetCount %d / %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mRemainingTargetCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mPictureRequestInfo:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getTargetCount()I

    move-result v4

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCallbackHolder()Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mPictureRequestInfo:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getCallbackHolder()Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getImageGroups()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getPictureIndex()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mPictureRequestInfo:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getRequestIndex()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mTimestamp:J

    return-wide v0
.end method

.method declared-synchronized getTotalPictureCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mPictureRequestInfo:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getTotalRequestCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasThumbnailTarget()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mPictureRequestInfo:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->hasThumbnailTarget()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isDrainedAll()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mRemainingTargetCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isPossibleToDrainImageGroups()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "isPossibleToDrainImageGroups(timestamp %d) - Capture Result is null."

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "isPossibleToDrainImageGroups(timestamp %d) - Image Group is empty."

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setPictureMetaData(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "pictureRequestInfo"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mPictureRequestInfo:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getTargetCount()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mRemainingTargetCount:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setPictureMetaData - mRemainingTargetCount=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->mImageGroups:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->setCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
