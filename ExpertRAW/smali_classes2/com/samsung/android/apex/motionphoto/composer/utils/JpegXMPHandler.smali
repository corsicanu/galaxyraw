.class final Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGooglePhotosHelperV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GooglePhotosHelperV2.kt\ncom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler\n*L\n1#1,313:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J0\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;",
        "fd",
        "Ljava/io/FileDescriptor;",
        "(Ljava/io/FileDescriptor;)V",
        "getFd",
        "()Ljava/io/FileDescriptor;",
        "xmpPosition",
        "",
        "getXmpPosition",
        "()J",
        "setXmpPosition",
        "(J)V",
        "removeXmp",
        "",
        "reserveXmp",
        "reservedSize",
        "",
        "seekToXmpStartPosition",
        "iStream",
        "Ljava/io/FileInputStream;",
        "writeXmp",
        "primary_videoLength",
        "primary_videoOffset",
        "second_videoLength",
        "second_videoOffset",
        "duration",
        "Companion",
        "motionphoto_composer_v3.0.42_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;

.field public static final JPEG_LENGTH_SIZE:I = 0x2

.field public static final JPEG_MARKER_SIZE:I = 0x2

.field public static final JPEG_SEF_XMP_PADDING:I = 0x3b

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private xmpPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler$Companion;

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "JpegXMPHandler"

    :goto_0
    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private final seekToXmpStartPosition(Ljava/io/FileInputStream;)V
    .locals 8

    const/16 p0, 0x400

    new-array p0, p0, [B

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    :cond_0
    :goto_0
    invoke-virtual {p1, p0, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Lkotlin/Pair;

    aget-byte v3, p0, v0

    const/16 v4, 0xff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v6, p0, v5

    and-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_4

    const/16 v3, 0xd7

    const/16 v6, 0xd0

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-le v6, v7, :cond_2

    goto :goto_2

    :cond_2
    if-lt v3, v7, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p1, p0, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/16 v6, 0xdd

    if-eq v3, v6, :cond_0

    aget-byte v3, p0, v0

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    aget-byte v5, p0, v5

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-long v3, v3

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0xe1

    if-ne v2, v3, :cond_0

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this is not valid markers"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "malformed \'JPEG\' image"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public final getFd()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public final getXmpPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    return-wide v0
.end method

.method public removeXmp()V
    .locals 12

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v2, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->seekToXmpStartPosition(Ljava/io/FileInputStream;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    const/4 v4, 0x2

    new-array v5, v4, [B

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    const/4 v6, 0x0

    aget-byte v7, v5, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    aget-byte v5, v5, v7

    and-int/2addr v5, v8

    const/16 v9, 0xe1

    if-ne v5, v9, :cond_2

    new-array v1, v4, [B

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    aget-byte v5, v1, v6

    and-int/2addr v5, v8

    shl-int/lit8 v5, v5, 0x8

    aget-byte v1, v1, v7

    and-int/2addr v1, v8

    or-int/2addr v1, v5

    add-int/2addr v1, v4

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xmp size : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    sub-long/2addr v4, v8

    int-to-long v8, v1

    sub-long/2addr v4, v8

    long-to-int v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iget-wide v10, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    add-long/2addr v10, v8

    invoke-virtual {v4, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v6, v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read bytes("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") differ from buffer size("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_2
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_3

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/nio/channels/FileChannel;

    iget-wide v4, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reserveXmp()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler$DefaultImpls;->reserveXmp(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;)V

    return-void
.end method

.method public reserveXmp(I)V
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v1, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->seekToXmpStartPosition(Ljava/io/FileInputStream;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    sub-long/2addr v3, v5

    int-to-long v5, p1

    add-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v4, 0xe1

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v4, 0xfe

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reserveXmp: read bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/nio/channels/FileChannel;

    iget-wide v4, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    invoke-virtual {v1, v3, v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setXmpPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    return-void
.end method

.method public writeXmp(JJJJJ)V
    .locals 15

    move-object v0, p0

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0xe1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0xfe

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const/16 v4, 0x3b

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-static/range {v3 .. v14}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->access$getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    new-instance v3, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v3}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v5, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Ljava/nio/channels/FileChannel;

    iget-wide v5, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/JpegXMPHandler;->xmpPosition:J

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method
