.class public Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;
.super Ljava/lang/Object;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;,
        Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;,
        Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$SetDngMetadataExecutor;,
        Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$RawDataFormat;
    }
.end annotation


# static fields
.field private static final COLOR_SPACE_SIZE:I = 0x12

.field private static final DNG_ORIENTATION:Landroid/util/SparseIntArray;

.field private static final SET_DNG_METADATA_EXECUTOR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$SetDngMetadataExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->DNG_ORIENTATION:Landroid/util/SparseIntArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$1;-><init>()V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->SET_DNG_METADATA_EXECUTOR_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x5a

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0xb4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x10e

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setLatitude(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setFocalLength(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setColorCalibration(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setColorMatrix(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setWhiteLevel(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setBlackLevelRepeat(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setCaptureTime(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setJpegOrientation(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setSensorSensitivity(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setFnumber(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->DNG_ORIENTATION:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setColorFilterArrangement(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setExposureTime(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setNoiseProfile(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setForwardTransform(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setIlluminati(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->setNeutralColorPoint(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static convertCFA(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aput-byte v3, v0, v2

    aput-byte v4, v0, v4

    aput-byte v4, v0, v3

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_1
    aput-byte v4, v0, v2

    aput-byte v3, v0, v4

    aput-byte v2, v0, v3

    aput-byte v4, v0, v1

    goto :goto_0

    :cond_2
    aput-byte v4, v0, v2

    aput-byte v2, v0, v4

    aput-byte v3, v0, v3

    aput-byte v4, v0, v1

    goto :goto_0

    :cond_3
    aput-byte v2, v0, v2

    aput-byte v4, v0, v4

    aput-byte v4, v0, v3

    aput-byte v3, v0, v1

    :goto_0
    return-object v0
.end method

.method private static generateNoiseProfile([Landroid/util/Pair;[BII[D)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "perChannelNoiseProfile",
            "cfa",
            "numChannels",
            "numPlanes",
            "noiseProfile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;[BII[D)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, p4, v3

    aput-wide v5, p4, v4

    const/4 v5, 0x1

    move v6, v1

    :goto_1
    if-ge v6, p2, :cond_1

    aget-byte v7, p1, v6

    aget-byte v8, v0, v2

    if-ne v7, v8, :cond_0

    aget-object v7, p0, v6

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aget-wide v9, p4, v3

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    aget-object v5, p0, v6

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, p4, v3

    aget-object v5, p0, v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, p4, v4

    move v5, v1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "No valid NoiseProfile coefficients for color plane"

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
    .end array-data
.end method

.method public static getDngMetadataFromCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Landroid/util/Size;)Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "capability",
            "pictureSize"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "getDngMetadataFromCaptureResult"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;-><init>()V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$1602(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$1702(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$1802(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->SET_DNG_METADATA_EXECUTOR_MAP:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$SetDngMetadataExecutor;

    invoke-interface {v1, p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$SetDngMetadataExecutor;->execute(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$setLatitude$0(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3802(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;D)D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3902(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;D)D

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$4002(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;D)D

    return-void
.end method

.method private static setBlackLevelRepeat(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "metadata"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getBlackLevelPattern()Landroid/hardware/camera2/params/BlackLevelPattern;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2002(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2000(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/params/BlackLevelPattern;->copyTo([II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_BLACK_LEVEL_PATTERN is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static setCaptureTime(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    add-long/2addr v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->date_time:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_TIMESTAMP is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static setColorCalibration(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "metadata"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getCalibrationTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    new-array v3, v2, [I

    invoke-static {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2402(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2400(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getCalibrationTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2502(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2500(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_CALIBRATION_TRANSFORM2 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_CALIBRATION_TRANSFORM1 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static setColorFilterArrangement(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "metadata"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getColorFilterArrangement()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3302(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "getColorFilterArrangement is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static setColorMatrix(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "metadata"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getColorTransform1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    new-array v3, v2, [I

    invoke-static {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2202(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2200(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getColorTransform2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2302(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2300(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_COLOR_TRANSFORM2 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_COLOR_TRANSFORM1 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static setExposureTime(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const v1, 0x3b9aca00

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shr-long v2, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    shr-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "Should be unreachable"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3202(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3200(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    aput p0, v2, v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3200(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p0

    aput v1, p0, v3

    return v3

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_EXPOSURE_TIME is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static setFnumber(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->multiply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3402(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "LENS_APERTURE is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static setFocalLength(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->multiply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3602(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "LENS_FOCAL_LENGTH is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static setForwardTransform(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "metadata"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getForwardMatrix1()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    new-array v3, v2, [I

    invoke-static {p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2902(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2900(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getForwardMatrix2()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3002(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3000(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_FORWARD_MATRIX2 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_FORWARD_MATRIX1 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static setIlluminati(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "metadata"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getReferenceIlluminant1()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2702(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getReferenceIlluminant2()Ljava/lang/Byte;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2802(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_REFERENCE_ILLUMINANT2 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_REFERENCE_ILLUMINANT1 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static setJpegOrientation(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->DNG_ORIENTATION:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$1902(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$1902(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static setLatitude(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$lmq6mhPy8KIUl818q95JUeSUu8Y;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$DngUtils$lmq6mhPy8KIUl818q95JUeSUu8Y;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static setNeutralColorPoint(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Rational;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2602(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I

    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2600(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v1

    mul-int/lit8 v3, v0, 0x2

    aget-object v4, p0, v0

    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    aput v4, v1, v3

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2600(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v1

    add-int/2addr v3, v2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_NEUTRAL_COLOR_POINT is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static setNoiseProfile(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "capability",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NOISE_PROFILE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getColorFilterArrangement()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    new-array v3, v3, [D

    invoke-static {p2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3102(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[D)[D

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->convertCFA(I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3100(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[D

    move-result-object p2

    invoke-static {p0, p1, v2, v1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->generateNoiseProfile([Landroid/util/Pair;[BII[D)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "Can not get CFA"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_NOISE_PROFILE or SENSOR_INFO_COLOR_FILTER_ARRANGEMENT is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static setSensorSensitivity(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "metadata"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$3502(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_SENSITIVITY is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static setWhiteLevel(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "metadata"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$CamCapability;->getWhiteLevel()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->access$2102(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "SENSOR_INFO_WHITE_LEVEL is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
