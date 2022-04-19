.class public Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_BUFFER_POOL_SIZE:J = 0x40000000L

.field private static final DEFAULT_MAX_RAW_BUFFER_NUM:I = 0x3

.field private static final DEVICE_MEMORY_USAGE_LEVEL:I

.field private static final MEGA_BYTES:J = 0x100000L

.field private static final MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_MEMORY_USAGE_LEVEL"

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FloatingFeatureUtils;->getFeatureInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->DEVICE_MEMORY_USAGE_LEVEL:I

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->valueOf(I)Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "can\'t create instance of MemoryUtils class"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static getBufferPoolSize()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->getBufferPoolSize()I

    move-result v0

    return v0
.end method

.method public static getDeviceMemoryLevel()Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    return-object v0
.end method

.method public static getMaxBufferCountOfRawImageReader(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capability"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSuperNightPPPAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->getMaxRawBufferNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public static getMaxBufferNumOfYuvImageReader()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->getMaxYuvBufferNum()I

    move-result v0

    return v0
.end method

.method public static getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v0
.end method

.method public static isAvailableMemoryEnough(Landroid/app/ActivityManager;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iget-wide v2, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v5, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "available memory is not enough : available %d, threshold %d"

    invoke-static {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    return v1
.end method

.method public static isBufferPoolAvailable(Landroid/app/ActivityManager;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "bufferPoolSize"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iget-wide v2, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    iget-wide v4, p0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v1

    const/4 p0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, p0

    const-string p0, "available bufferPool memory is not enough : available mem %d, threshold %d, PoolSize %d"

    invoke-static {v0, p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const-wide/32 v3, 0x40000000

    cmp-long p0, v3, p1

    if-gez p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Exceed max buffer pool size %d"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    return v1
.end method

.method public static isGreaterThan(Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLessThan(Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeedDeinitSolution(Landroid/app/ActivityManager;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->getCutOffThreshold()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x100000

    mul-long v5, v1, v3

    iget-wide v7, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v6, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v6, v0

    const-string p0, "need to deinitialize solution for memory : available mem %d MB, threshold %d MB"

    invoke-static {v5, p0, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v0
.end method
