.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;
.super Ljava/lang/Object;
.source "CamDeviceHandlerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;
    }
.end annotation


# static fields
.field private static final HANDLER_EXEC_LIMIT_TIME_MILLIS:J

.field private static final PENDING_PICTURE_DATA_HOLD_TIMEOUT_NANOS:J = 0x12a05f200L

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field private final mBackgroundHandlerThreadLock:Ljava/lang/Object;

.field private mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field private mCaptureCallbackHandler:Landroid/os/Handler;

.field private mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

.field private final mImageReaderHandlerThreadLock:Ljava/lang/Object;

.field private final mImageReaderHandlerThreadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;",
            "Landroid/util/Pair<",
            "Landroid/os/HandlerThread;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSendPictureHandler:Landroid/os/Handler;

.field private mSendPictureHandlerThread:Landroid/os/HandlerThread;

.field private mSendSessionCallbackHandler:Landroid/os/Handler;

.field private mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

.field private mSendShutterHandler:Landroid/os/Handler;

.field private mSendShutterHandlerThread:Landroid/os/HandlerThread;

.field private mSendThumbnailHandler:Landroid/os/Handler;

.field private mSendThumbnailHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->HANDLER_EXEC_LIMIT_TIME_MILLIS:J

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDeviceImpl"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "CamDeviceManager"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    return-void
.end method

.method private checkDiscardPictureData(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "basePictureData"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->isDrainedAll()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, "checkDiscardPictureData - timestamp(%d) removed at TimestampToPictureDataMappingTable."

    invoke-static {v2, p1, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTimestampToPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide v5, 0x12a05f200L

    cmp-long p1, v0, v5

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTimestampToPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p0

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "checkDiscardPictureData - warning!! there are too many pending picture data : %d"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->drainImageGroups(Z)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->dumpDebugString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "checkDiscardPictureData - %s is discarded"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method


# virtual methods
.method getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getCaptureCallbackHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getImageReaderHandler(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;)Landroid/os/Handler;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handlerType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageReaderHandler - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IReader-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startImageReaderHandlerThread-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    :cond_0
    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getSendPictureHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getSendSessionCallbackHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getSendShutterHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;

    return-object p0
.end method

.method sendPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureData"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->isPossibleToDrainImageGroups()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "sendPictureCallback - pictureData timestamp %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getImageGroups()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_6

    if-eq v3, v2, :cond_4

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v6, "sendPictureCallback - invalid imageGroup(timestamp %d) type(%d)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-static {v3, v6, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->closeImage()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getCallbackHolder()Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->getPictureDepthCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    move-result-object v8

    invoke-direct {v6, v7, v1, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v7, "sendPictureCallback - sendPictureHandler(%s) is null or can\'t post imageGroup(timestamp %d) via sendPictureDepthRunnable"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v6, v7, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->closeImage()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendThumbnailRunnable;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getCallbackHolder()Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->getThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    move-result-object v8

    invoke-direct {v6, v7, v1, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendThumbnailRunnable;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_5
    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v7, "sendPictureCallback - sendThumbnailHandler(%s) is null or can\'t post imageGroup(timestamp %d) via sendThumbnailRunnable"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v6, v7, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->closeImage()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    if-eqz v3, :cond_7

    new-instance v13, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getCallbackHolder()Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;->getCallback()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->hasThumbnailTarget()Z

    move-result v10

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getPictureIndex()I

    move-result v11

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getTotalPictureCount()I

    move-result v12

    move-object v6, v13

    move-object v8, v1

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureRunnable;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;Ljava/lang/Object;ZII)V

    invoke-virtual {v3, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_7
    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v7, "sendPictureCallback - sendPictureHandler(%s) is null or can\'t post imageGroup(timestamp %d) via sendPictureRunnable"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v6, v7, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData$ImageGroup;->closeImage()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->drainImageGroups(Z)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->checkDiscardPictureData(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method startBackgroundHandlerThread()V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "[CAMFWKPI] startBackgroundHandlerThread E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Background"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    const-string v2, "startBackgroundHandlerThread for backgroundHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-wide v4, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->HANDLER_EXEC_LIMIT_TIME_MILLIS:J

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "CaptureCallback"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    const-string v2, "startBackgroundHandlerThread for captureCallbackHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SendPicture"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    const-string v2, "startBackgroundHandlerThread for sendPictureHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SendThumbnail"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    const-string v2, "startBackgroundHandlerThread for sendThumbnailHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SendShutter"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    const-string v2, "startBackgroundHandlerThread for sendShutterHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SendSessionCallback"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    const-string v2, "startBackgroundHandlerThread for sendSessionCallbackHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager$ExecTimeLoggingHandler;-><init>(Landroid/os/Looper;J)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandler:Landroid/os/Handler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "[CAMFWKPI] startBackgroundHandlerThread X"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method stopBackgroundHandlerThread()V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopBackgroundHandlerThread E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "stopBackgroundHandlerThread for backgroundThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBackgroundHandlerThread fail for backgroundThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    goto :goto_0

    :goto_1
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mBackgroundHandler:Landroid/os/Handler;

    throw v0

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "stopBackgroundHandlerThread for captureCallbackHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    :goto_3
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_7
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBackgroundHandlerThread fail for captureCallbackHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    goto :goto_3

    :goto_4
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mCaptureCallbackHandler:Landroid/os/Handler;

    throw v0

    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "stopBackgroundHandlerThread for sendPictureHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    :goto_6
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_b
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBackgroundHandlerThread fail for sendPictureHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    goto :goto_6

    :goto_7
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendPictureHandler:Landroid/os/Handler;

    throw v0

    :cond_2
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "stopBackgroundHandlerThread for sendThumbnailHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    :goto_9
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    :try_start_f
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBackgroundHandlerThread fail for sendThumbnailHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    goto :goto_9

    :goto_a
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendThumbnailHandler:Landroid/os/Handler;

    throw v0

    :cond_3
    :goto_b
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "stopBackgroundHandlerThread for sendShutterHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    :goto_c
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    :try_start_13
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBackgroundHandlerThread fail for sendShutterHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    goto :goto_c

    :goto_d
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendShutterHandler:Landroid/os/Handler;

    throw v0

    :cond_4
    :goto_e
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "stopBackgroundHandlerThread for sendSessionCallbackHandlerThread"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    :goto_f
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandler:Landroid/os/Handler;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_11

    :catchall_5
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    :try_start_17
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBackgroundHandlerThread fail for sendSessionCallbackHandlerThread - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    goto :goto_f

    :goto_10
    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mSendSessionCallbackHandler:Landroid/os/Handler;

    throw v0

    :cond_5
    :goto_11
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "stopBackgroundHandlerThread X"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_6
    move-exception p0

    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    throw p0
.end method

.method stopImageReaderHandlerThread()V
    .locals 9

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopImageReaderHandlerThread E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopImageReaderHandlerThread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v6, "stopImageReaderHandlerThread fail for %s - %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->mImageReaderHandlerThreadMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceHandlerManager;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "stopImageReaderHandlerThread X"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
