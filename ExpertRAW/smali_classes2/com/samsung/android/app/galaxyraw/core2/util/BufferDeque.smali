.class public Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;
.super Ljava/lang/Object;
.source "BufferDeque.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field protected final mCapacity:I

.field protected mClosed:Z

.field protected final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final mLockedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNoneDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReadyDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "size"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mNoneDeque:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLockedList:Ljava/util/List;

    const-string v0, "capacity"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkPositive(ILjava/lang/String;)I

    const-string v0, "size"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkPositive(ILjava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mCapacity:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mSize:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mNoneDeque:Ljava/util/Deque;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    int-to-long v3, v0

    const/4 v5, 0x0

    invoke-static {p2, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->allocate(ILcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;-><init>(JLcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$1;)V

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dump(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "%s - N %d, R %d, L %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mNoneDeque:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLockedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private putBufferIntoImageBuffer(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "dstBufferSlot",
            "captureResult"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;->getBuffer()Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rewind()V

    instance-of v1, p1, [B

    if-eqz v1, :cond_0

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->put([B)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->put(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->putAndUpdateImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/media/Image;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/media/Image;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->putAndUpdateImageInfo(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :cond_3
    instance-of p3, p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-eqz p3, :cond_4

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->put(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Not supported buffer type"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mNoneDeque:Ljava/util/Deque;

    invoke-interface {p3, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public addFirstBuffer(Ljava/lang/Object;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "captureResult"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->findBufferSlot()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->putBufferIntoImageBuffer(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addFirstBuffer is fail - bufferDeque is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addLastBuffer(Ljava/lang/Object;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "captureResult"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->findBufferSlot()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->putBufferIntoImageBuffer(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addLastBuffer is fail - bufferDeque is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mNoneDeque:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "clear is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mNoneDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLockedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected findBufferSlot()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mNoneDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "findBufferSlot is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getBufferSize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mSize:I

    return p0
.end method

.method public getCapacity()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mCapacity:I

    return p0
.end method

.method public releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSlot"
        }
    .end annotation

    const-string v0, "bufferSlot"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLockedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mNoneDeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "releaseBuffer is fail - buffer is not taken from this"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "releaseBuffer is fail - bufferDeque is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public removeFirstBuffer()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLockedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "removeFirstBuffer is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public removeFirstBufferAndClear()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLockedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "removeFirstBufferAndClear is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public removeLastBuffer()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLockedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "removeLastBuffer is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public removeLastBufferAndClear()Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mReadyDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque$BufferSlot;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLockedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "removeLastBufferAndClear is fail - bufferDeque is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferDeque;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
