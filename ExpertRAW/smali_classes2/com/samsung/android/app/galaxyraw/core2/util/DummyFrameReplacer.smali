.class public Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;
.super Ljava/lang/Object;
.source "DummyFrameReplacer.java"


# static fields
.field private static final DUMMY_FRAME_PATH:Ljava/nio/file/Path;

.field private static final DUMMY_FRAME_REPLACER_MODE:I

.field public static final DUMMY_FRAME_REPLACER_MODE_DUMP:I = 0x1

.field public static final DUMMY_FRAME_REPLACER_MODE_NONE:I = 0x0

.field public static final DUMMY_FRAME_REPLACER_MODE_REPLACE:I = 0x2

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private mDumpCount:J

.field private final mFileToBufferMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data/user/0/com.samsung.android.app.galaxyraw/files/"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->DUMMY_FRAME_PATH:Ljava/nio/file/Path;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;->CAMERA_INJECT_PREVIEW_FRAMES:Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;->getDebugIntValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->DUMMY_FRAME_REPLACER_MODE:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->mFileToBufferMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    return-void
.end method

.method public static getDummyFrameReplacerMode()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->isDebugModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->DUMMY_FRAME_REPLACER_MODE:I

    return v0
.end method

.method private getFileName(Landroid/media/Image;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "bufferSize"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v4, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v4, p1

    const-string p0, "%d_%dx%d_rowStride_%d_bufferSize_%d.bin"

    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImageBuffer(Ljava/lang/String;I)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileName",
            "bufferSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->mFileToBufferMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->DUMMY_FRAME_PATH:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v6, "Reading the buffer from file(%s)"

    invoke-static {v2, v6, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-array v0, p2, [B

    invoke-virtual {v2, v0, v5, p2}, Ljava/io/FileInputStream;->read([BII)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->mFileToBufferMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {p0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v5

    const-string p1, "File(%s) does not exist"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public static isDummyFrameReplacerEnabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->getDummyFrameReplacerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public dumpImage(Landroid/media/Image;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getByteBufferfromImage(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->getFileName(Landroid/media/Image;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->mDumpCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->mDumpCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->DUMMY_FRAME_PATH:Ljava/nio/file/Path;

    invoke-interface {v1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->saveToFile(Landroid/media/Image;Ljava/io/File;)Z

    return-void
.end method

.method public replaceImage(Landroid/media/Image;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getByteBufferfromImage(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->getFileName(Landroid/media/Image;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DummyFrameReplacer;->getImageBuffer(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
