.class public final Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;
.super Ljava/lang/Object;
.source "MotionPhotoParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMotionPhotoParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MotionPhotoParser.kt\ncom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser\n*L\n1#1,143:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u000f\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB\r\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;",
        "",
        "filePath",
        "",
        "(Ljava/lang/String;)V",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "fd",
        "Ljava/io/FileDescriptor;",
        "(Ljava/io/FileDescriptor;)V",
        "inStream",
        "Ljava/io/FileInputStream;",
        "(Ljava/io/FileInputStream;)V",
        "f",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;",
        "fileSize",
        "",
        "getFileSize",
        "()J",
        "parseSef",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;",
        "read",
        "n",
        "",
        "readBuffer",
        "",
        "readString",
        "Companion",
        "DataPosition64",
        "SefFile",
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
.field public static final Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;

.field public static final MOTION_PHOTO_DATA_TYPE:J = 0xa30L

.field public static final MOTION_PHOTO_KEY_NAME:Ljava/lang/String; = "MotionPhoto_Data"


# instance fields
.field private final f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->Companion:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;-><init>(Ljava/io/FileInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;-><init>(Ljava/io/FileInputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileInputStream;)V
    .locals 1

    const-string v0, "inStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;-><init>(Ljava/io/FileInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private final read(I)J
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readBuffer(I)[B

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v0, 0x0

    :goto_0
    if-ltz p1, :cond_0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private final readBuffer(I)[B
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->read([BII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "support size in range 1 to 8"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private final readString(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readBuffer(I)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method public final getFileSize()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final parseSef()Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->size()J

    move-result-wide v1

    const/4 v3, 0x4

    int-to-long v4, v3

    sub-long/2addr v1, v4

    iget-object v6, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v6, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->seek(J)V

    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SEFT"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    return-object v7

    :cond_0
    sub-long/2addr v1, v4

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->seek(J)V

    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v4

    sub-long/2addr v1, v4

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->seek(J)V

    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SEFH"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    return-object v7

    :cond_1
    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    :goto_0
    cmp-long v8, v6, v4

    if-gez v8, :cond_3

    const/4 v8, 0x2

    invoke-direct {v0, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    invoke-direct {v0, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v9

    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v11

    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v13

    const-wide/16 v15, 0xa30

    cmp-long v15, v9, v15

    if-nez v15, :cond_2

    sub-long/2addr v1, v11

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->seek(J)V

    invoke-direct {v0, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    invoke-direct {v0, v8}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-nez v1, :cond_3

    invoke-direct {v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->read(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->readString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionPhoto_Data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser;->f:Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$SefFile$SefFileStream;->position()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v13, v14}, Lcom/samsung/android/apex/motionphoto/composer/utils/MotionPhotoParser$DataPosition64;-><init>(JJ)V

    return-object v1

    :cond_2
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t get position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
