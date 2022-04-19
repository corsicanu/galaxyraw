.class final Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;
.super Ljava/lang/Object;
.source "GooglePhotosHelperV2.kt"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGooglePhotosHelperV2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GooglePhotosHelperV2.kt\ncom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler\n*L\n1#1,313:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u0003H\u0083 J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J0\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;",
        "fd",
        "Ljava/io/FileDescriptor;",
        "(Ljava/io/FileDescriptor;)V",
        "getFd",
        "()Ljava/io/FileDescriptor;",
        "mNativeContext",
        "",
        "reserver",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;",
        "getReserver",
        "()Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;",
        "setReserver",
        "(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;)V",
        "xmpPosition",
        "getXmpPosition",
        "()J",
        "setXmpPosition",
        "(J)V",
        "native_remove_xmp_on_heic",
        "",
        "removeXmp",
        "reserveXmp",
        "reservedSize",
        "",
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
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;

.field public static final HEIC_SEF_XMP_PADDING:I = 0x43

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final mNativeContext:J

.field public reserver:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;

.field private xmpPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler$Companion;

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "HeicXMPHandler"

    :goto_0
    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->TAG:Ljava/lang/String;

    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private final native native_remove_xmp_on_heic(Ljava/io/FileDescriptor;)V
.end method


# virtual methods
.method public final getFd()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->fd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public final getReserver()Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->reserver:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;

    if-nez p0, :cond_0

    const-string v0, "reserver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final getXmpPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->xmpPosition:J

    return-wide v0
.end method

.method public removeXmp()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->native_remove_xmp_on_heic(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public reserveXmp()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler$DefaultImpls;->reserveXmp(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpHandler;)V

    return-void
.end method

.method public reserveXmp(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->reserver:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;

    if-nez v0, :cond_0

    const-string v1, "reserver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;->invoke(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->xmpPosition:J

    return-void
.end method

.method public final setReserver(Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->reserver:Lcom/samsung/android/apex/motionphoto/composer/utils/XmpReserver;

    return-void
.end method

.method public final setXmpPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->xmpPosition:J

    return-void
.end method

.method public writeXmp(JJJJJ)V
    .locals 14

    move-object v0, p0

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const/16 v3, 0x43

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-static/range {v2 .. v13}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelperV2Kt;->access$getXMPMeta(Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;IJJJJJ)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    new-instance v3, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v3}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

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

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Ljava/nio/channels/FileChannel;

    iget-wide v5, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/HeicXMPHandler;->xmpPosition:J

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
