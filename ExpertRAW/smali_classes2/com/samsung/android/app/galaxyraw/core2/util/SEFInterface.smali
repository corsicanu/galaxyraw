.class public Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;
.super Ljava/lang/Object;
.source "SEFInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;
    }
.end annotation


# static fields
.field public static final DUAL_SHOT_BOKEH_INFO:I = 0xae0

.field public static final DUAL_SHOT_INFO:I = 0xab0

.field public static final DUAL_SHOT_ONLY:I = 0xad0

.field public static final DUAL_SHOT_ZOOMINOUT:I = 0xac0

.field public static final FRONT_CAM_SELFIE_INFO:I = 0x910

.field private static final SEF_DATA_TYPE_IMAGE_UTC_DATA:I = 0xa01

.field private static final SEF_DATA_TYPE_MCC_DATA:I = 0xaa1

.field private static final SEF_DATA_TYPE_UWD_PHOTO_EDITOR_DATA:I = 0xb60

.field public static final SINGLE_SHOT_BOKEH_INFO:I = 0xb40

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static final mSwLensDistortionCorrectionFeatureArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SWLENS_DISTORTION_CORRECTION"

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FloatingFeatureUtils;->getFeatureString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->mSwLensDistortionCorrectionFeatureArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "keyName",
            "dataFile",
            "dataType"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->getFileExtension(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->getOptionsByFileExtension(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x4

    aput-object v0, v2, p0

    const-string p0, "addData is failed - file %s, keyName %s, dataFile %s, dataType %d : %s"

    invoke-static {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "keyName",
            "data",
            "dataType"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FileUtils;->getFileExtension(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->getOptionsByFileExtension(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x3

    aput-object p2, v1, p0

    const-string p0, "addData is failed - file %s, keyName %s, dataType %d : %s"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static addData(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Ljava/util/List;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputBuffer",
            "sefParamList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;",
            ">;)",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "addData is failed : sefParamList is empty"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v6, v1

    move-wide v7, v2

    move-wide v9, v7

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->data:[B

    array-length v5, v5

    int-to-long v11, v5

    add-long/2addr v7, v11

    iget-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->sefName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v11, v5

    add-long/2addr v9, v11

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addData  sefParam.sefName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->sefName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->capacity()I

    move-result v0

    int-to-long v4, v0

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/media/SemExtendedFormat;->getRequiredBufferSize(JIJJ)J

    move-result-wide v4

    long-to-int v0, v4

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addData requiredBufferSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->rentByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->returnByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    if-eqz v4, :cond_3

    iget-object v2, v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->sefName:Ljava/lang/String;

    iget-object v3, v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->data:[B

    iget v4, v4, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;->dataType:I

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/nio/ByteBuffer;Ljava/lang/String;[BII)J

    move-result-wide v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Ljava/nio/ByteBuffer;ZLcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    long-to-int p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->slice(II)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static getMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const v0, 0x48454946

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "image/heic"

    return-object p0

    :cond_1
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method private static getOptionsByFileExtension(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileExtension"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, ".heif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, ".heic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x5

    return p0

    :sswitch_data_0
    .sparse-switch
        0x1678d6 -> :sswitch_4
        0x1684f3 -> :sswitch_3
        0x169003 -> :sswitch_2
        0x2b90805 -> :sswitch_1
        0x2b90808 -> :sswitch_0
    .end sparse-switch
.end method

.method public static insertMobileCountryCodeDataToSEF(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/16 v1, 0xaa1

    const-string v2, "MCC_Data"

    invoke-direct {v0, v2, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;-><init>(Ljava/lang/String;[BI)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "insertMobileCountryCodeDataToSEF - skip : MCCData is null"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static insertUTCToSEF(J)Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateTaken"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "Image_UTC_Data"

    const/16 v1, 0xa01

    invoke-direct {v0, p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method public static insertUltraLensWideDataToSEF(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;I)Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "sensorName",
            "processedOption"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "insertUltraLensWideDataToSEF is failed - argument is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->mSwLensDistortionCorrectionFeatureArray:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p1, v5, [Ljava/lang/Object;

    array-length p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "insertUltraLensWideDataToSEF is failed - featureArray is invalid : length %d"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LENS_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v6}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v1, v5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object v1, v1, v5

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-eq v1, v5, :cond_3

    :cond_2
    and-int/lit8 v1, p2, 0x2

    if-eq v1, v4, :cond_3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/16 p1, 0xb60

    const-string p2, "UltraWide_PhotoEditor_Data"

    invoke-direct {v0, p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface$SefParam;-><init>(Ljava/lang/String;[BI)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/SEFInterface;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v3

    aput-object v2, v7, v5

    aput-object v6, v7, v4

    const/4 p0, 0x3

    aput-object p1, v7, p0

    const/4 p0, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, p0

    const-string p0, "insertUltraLensWideDataToSEF - skip : sefData %s, ultra %d, cameraId %s, sensorName %s, processedOption %d"

    invoke-static {v1, p0, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
