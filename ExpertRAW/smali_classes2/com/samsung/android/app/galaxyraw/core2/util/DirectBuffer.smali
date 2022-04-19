.class public Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
.super Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;
.source "DirectBuffer.java"


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private mIsReleased:Z

.field protected final mNeedRelease:Z

.field private mRentByteBufferCount:I

.field protected final mWrapBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "directbuffer-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "wrapBuffer",
            "needRelease"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mWrapBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mNeedRelease:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "allocate fail - byteBuffer is not direct"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static allocate(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    const-string v0, "capacity"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkPositive(ILjava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->nativeAllocateNativeHeap(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Z)V

    return-object v0
.end method

.method public static copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->allocate(I)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->clear()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->put(Lcom/samsung/android/app/galaxyraw/core2/util/BufferBase;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->rewind()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->limit(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->position(I)V

    return-object v0
.end method

.method public static loadLibrary()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "loadLibrary E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string v1, "directbuffer-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "loadLibrary X"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected static native nativeAllocateNativeHeap(I)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation
.end method

.method private native nativeReleaseNativeHeap(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteBuffer"
        }
    .end annotation
.end method

.method public static wrap(Ljava/nio/ByteBuffer;IIZ)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "position",
            "length",
            "needRelease"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Z)V

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public static wrap(Ljava/nio/ByteBuffer;Z)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "needRelease"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Z)V

    return-object v0
.end method


# virtual methods
.method public duplicate()Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mWrapBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Z)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->release()V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mIsReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mIsReleased:Z

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mRentByteBufferCount:I

    if-gtz v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mNeedRelease:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->nativeReleaseNativeHeap(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "can\'t release native buffer because some rented buffers(count %d) are not returned yet. it will make memory leak!"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mRentByteBufferCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rentByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mRentByteBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mRentByteBufferCount:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized returnByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteBuffer"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mRentByteBufferCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mRentByteBufferCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input byteBuffer isn\'t equal with original buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public slice(II)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "length"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr p2, p1

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mWrapBuffer:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mNeedRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p0

    :goto_1
    const/4 v3, 0x0

    invoke-direct {p1, p2, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method
