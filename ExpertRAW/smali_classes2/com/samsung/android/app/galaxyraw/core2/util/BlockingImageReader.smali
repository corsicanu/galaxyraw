.class public Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;
.super Ljava/lang/Object;
.source "BlockingImageReader.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mClosed:Z

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private final mHandOutImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageReader:Landroid/media/ImageReader;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMaxImages:I

.field private final mNeedReleaseFreeBuffers:Z

.field private mPhysicalId:Ljava/lang/String;

.field private mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/media/ImageReader;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageReader",
            "physicalId",
            "picType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mMaxImages:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mPhysicalId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p3

    const/16 v0, 0x20

    if-eq p3, v0, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p1

    const/16 p3, 0x23

    if-ne p1, p3, :cond_1

    const p1, 0x2dc6c00

    if-lt p2, p1, :cond_1

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->HIGH:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isLessThan(Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mNeedReleaseFreeBuffers:Z

    return-void
.end method

.method private getHandOutImageTimestamps()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "acquireLatestImage is failed - already closed"

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mMaxImages:I

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getHandOutImageTimestamps()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "acquireLatestImage waiting for handout images: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z

    if-eqz v0, :cond_0

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public acquireLatestImage(JLjava/util/concurrent/TimeUnit;)Landroid/media/Image;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p3

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string v4, "acquireLatestImage is failed - already closed"

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_0
    move-wide/from16 v5, p1

    :goto_1
    :try_start_2
    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v7, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mMaxImages:I

    if-lt v2, v7, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v5, v6, v0}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const-string v12, "acquireLatestImage is failed : waiting time(%d %s) elapsed"

    if-eqz v2, :cond_3

    :try_start_3
    iget-boolean v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z

    if-eqz v2, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v7

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v3, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v3, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "acquireNextImage is failed - already closed"

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mMaxImages:I

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getHandOutImageTimestamps()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "acquireNextImage waiting for handout images: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z

    if-eqz v0, :cond_0

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public acquireNextImage(JLjava/util/concurrent/TimeUnit;)Landroid/media/Image;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p3

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string v4, "acquireNextImage is failed - already closed"

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :cond_0
    move-wide/from16 v5, p1

    :goto_1
    :try_start_2
    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v7, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mMaxImages:I

    if-lt v2, v7, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v5, v6, v0}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const-string v12, "acquireNextImage is failed : waiting time(%d %s) elapsed"

    if-eqz v2, :cond_3

    :try_start_3
    iget-boolean v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z

    if-eqz v2, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v7

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v3, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v3, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public closeImage(Landroid/media/Image;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "closeImage is failed - already closed"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mNeedReleaseFreeBuffers:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mHandOutImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->discardFreeBuffers()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "closeImage is failed : image is not getting from this imageReader or already is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getHeight()I

    move-result p0

    return p0
.end method

.method public getImageFormat()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p0

    return p0
.end method

.method public getMaxImages()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mMaxImages:I

    return p0
.end method

.method public getOriginImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getPhysicalId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mPhysicalId:Ljava/lang/String;

    return-object p0
.end method

.method public getPicType()Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getWidth()I

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setPhysicalId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mPhysicalId:Ljava/lang/String;

    return-void
.end method

.method public setPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->mPicType:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-void
.end method
