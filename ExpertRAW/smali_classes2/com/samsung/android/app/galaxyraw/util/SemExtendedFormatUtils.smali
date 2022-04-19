.class public Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;
.super Ljava/lang/Object;
.source "SemExtendedFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;,
        Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$KeyName;,
        Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$DataType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemExtendedFormatUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;I)I
    .locals 1
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

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->getOptionsByFileExtension(Ljava/lang/String;)I

    move-result v0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "error while addSEFData - dataType : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemExtendedFormatUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;[BI)I
    .locals 1
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

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->getOptionsByFileExtension(Ljava/lang/String;)I

    move-result v0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "error while addSEFData - dataType : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemExtendedFormatUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static addData(Ljava/nio/ByteBuffer;Ljava/util/List;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "sefDataInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;->keyName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;->data:[B

    iget v0, v0, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;->dataType:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v0, v3}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/nio/ByteBuffer;Ljava/lang/String;[BII)J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static addSefInfoForBurstShot(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sefDataInfoList",
            "groupId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "Burst_Shot_Info"

    const/16 v2, 0x9e0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;-><init>(Ljava/lang/String;[BI)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addSefInfoForMobileCountryCode(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "sefDataInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/16 v1, 0xaa1

    const-string v2, "MCC_Data"

    invoke-direct {v0, v2, p0, v1}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;-><init>(Ljava/lang/String;[BI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static addSefInfoForUTC(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sefDataInfoList",
            "dateTaken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "Image_UTC_Data"

    const/16 v1, 0xa01

    invoke-direct {v0, p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;-><init>(Ljava/lang/String;[BI)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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

    const/4 v1, 0x2

    const/4 v2, 0x3

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

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    return v3

    :cond_1
    return v2

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

.method public static insertSefDataList(Ljava/nio/ByteBuffer;Ljava/util/List;)Ljava/nio/ByteBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "sefDataInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v1, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;

    iget-object v9, v8, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;->data:[B

    array-length v9, v9

    int-to-long v9, v9

    add-long/2addr v4, v9

    iget-object v8, v8, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/media/SemExtendedFormat;->getRequiredBufferSize(JIJJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->addData(Ljava/nio/ByteBuffer;Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
