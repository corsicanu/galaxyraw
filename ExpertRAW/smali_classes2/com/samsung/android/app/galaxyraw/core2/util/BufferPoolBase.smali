.class public abstract Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;
.super Ljava/lang/Object;
.source "BufferPoolBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Buffer_T:",
        "Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CACHE_BUFFER_SIZE_THRESHOLD:I = 0x4000000

.field private static final DEFAULT_CORE_BUFFER_POOL_SIZE:I

.field private static final DEFAULT_MAX_BUFFER_POOL_SIZE:I

.field public static final ERROR_GET_BUFFER_NOT_ENOUGH_MEMORY:I = 0x2

.field public static final ERROR_GET_BUFFER_OVER_MAX_POOL_SIZE:I = 0x1

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field protected final mActivityManager:Landroid/app/ActivityManager;

.field protected final mBufferPool:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "TBuffer_T;>;>;"
        }
    .end annotation
.end field

.field protected final mCoreBufferPoolSize:I

.field protected mCurrentBufferPoolSize:I

.field protected mLastBufferSize:I

.field protected final mMaxBufferPoolSize:I

.field protected final mRentBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TBuffer_T;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->LOW:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isGreaterThan(Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->DEFAULT_CORE_BUFFER_POOL_SIZE:I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getBufferPoolSize()I

    move-result v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->DEFAULT_MAX_BUFFER_POOL_SIZE:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->DEFAULT_CORE_BUFFER_POOL_SIZE:I

    sget v1, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->DEFAULT_MAX_BUFFER_POOL_SIZE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "coreBufferPoolSize",
            "maxBufferPoolSize"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mRentBuffers:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_1

    const/4 v2, 0x2

    if-gt p2, p3, :cond_0

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mActivityManager:Landroid/app/ActivityManager;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCoreBufferPoolSize:I

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mMaxBufferPoolSize:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "bufferPool(hash %d), created : bufferPoolSize core %d max %d"

    invoke-static {p1, p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    const-string p2, "coreBufferPoolSize(%d) must not be greater than maxBufferPoolSize(%d)"

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "coreBufferPoolSize(%d) must not be less than 1"

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected abstract allocBuffer(I)Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuffer_T;"
        }
    .end annotation
.end method

.method public declared-synchronized getBuffer(ILjava/util/function/Consumer;)Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "errorCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)TBuffer_T;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, v2

    :cond_1
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getBufferPoolTotalSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isBufferPoolAvailable(Landroid/app/ActivityManager;J)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {p2}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->allocBuffer(I)Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mMaxBufferPoolSize:I

    const/4 v6, 0x3

    if-ge v1, v5, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->allocBuffer(I)Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    move-result-object v0

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    const-string v1, "bufferPool(hash %d) - allocate new buffer(size %d) : bufferPoolSize %d/%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mMaxBufferPoolSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {p2, v1, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    const-string v5, "bufferPool(hash %d) - fail to get buffer(size %d) : over max bufferPoolSize(%d)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mMaxBufferPoolSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v1, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    const-string v5, "bufferPool(hash %d) - fail to get buffer(size %d) : available memory not enough"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v1, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mRentBuffers:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mLastBufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBufferPoolTotalSize()J
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;->capacity()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mRentBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;->capacity()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
.end method

.method protected abstract releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuffer_T;)V"
        }
    .end annotation
.end method

.method public declared-synchronized releaseBuffers(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptCoreBuffers"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    move v1, v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCoreBufferPoolSize:I

    sub-int/2addr v5, v1

    sub-int/2addr v4, v5

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCoreBufferPoolSize:I

    if-lt v1, v2, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->clear()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->putAll(Ljava/util/Map;)V

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    goto :goto_6

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {p1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-interface {p1}, Ljava/util/NavigableMap;->clear()V

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string v1, "bufferPool(hash %d) - releaseBuffers : bufferPoolSize %d/%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mMaxBufferPoolSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mRentBuffers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    const-string v2, "bufferPool(hash %d) - %d buffers are not returned yet, release the buffers"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mRentBuffers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mLastBufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized returnBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuffer_T;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mRentBuffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "%s doesn\'t belong to this bufferPool(hash %d), ignore"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;->capacity()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mLastBufferSize:I

    if-lt v0, v4, :cond_3

    const/high16 v4, 0x4000000

    if-gt v0, v4, :cond_3

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCoreBufferPoolSize:I

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getBufferPoolTotalSize()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isBufferPoolAvailable(Landroid/app/ActivityManager;J)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mBufferPool:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->releaseBuffer(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->getTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string v4, "bufferPool(hash %d), delete buffer(size %d) : bufferPoolSize %d/%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mCurrentBufferPoolSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x3

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/BufferPoolBase;->mMaxBufferPoolSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {p1, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
