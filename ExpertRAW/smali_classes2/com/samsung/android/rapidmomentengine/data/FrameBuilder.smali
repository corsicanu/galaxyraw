.class public Lcom/samsung/android/rapidmomentengine/data/FrameBuilder;
.super Ljava/lang/Object;
.source "FrameBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromInputFrameData(Lcom/samsung/android/rapidmomentengine/data/InputFrameData;)Lcom/samsung/android/rapidmomentengine/data/FrameData;
    .locals 3

    new-instance v0, Lcom/samsung/android/rapidmomentengine/data/FrameData;

    invoke-direct {v0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setWidth(I)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setHeight(I)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getOrigWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setOrigWidth(I)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getOrigHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setOrigHeight(I)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setTimestamp(J)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getFaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getFaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getFaces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setFaces(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getImgByteArrayNV21()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setByteArrayNV21([B)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getImgByteArrayRGBA()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setByteArrayBGR([B)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getCameraId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setCameraID(I)V

    return-object v0
.end method

.method public static buildResizedNV21FrameFromInputFrameData(Lcom/samsung/android/rapidmomentengine/data/InputFrameData;)Lcom/samsung/android/rapidmomentengine/data/FrameData;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getOrigWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getOrigHeight()I

    move-result v1

    const/16 v2, 0x200

    if-le v0, v1, :cond_0

    mul-int/lit16 v3, v1, 0x200

    div-int/2addr v3, v0

    and-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    mul-int/lit16 v3, v0, 0x200

    div-int/2addr v3, v1

    and-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v4

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_0
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getImgByteArrayNV21()[B

    move-result-object v6

    invoke-static {v6, v0, v1, v2, v3}, Lcom/samsung/android/rapidmomentengine/utils/Utility;->resize([BIIII)[B

    move-result-object v0

    const-string v1, "RapidMomentSync"

    const-string v6, "resize"

    const-string v7, "Process"

    invoke-static {v4, v5, v1, v6, v7}, Lcom/samsung/android/rapidmomentengine/utils/TimeProfiler;->printElapsedTime(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/rapidmomentengine/data/FrameData;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/data/FrameData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setWidth(I)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setHeight(I)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getOrigWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setOrigWidth(I)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getOrigHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setOrigHeight(I)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setTimestamp(J)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getFaces()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getFaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getFaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setFaces(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setByteArrayNV21([B)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setByteArrayBGR([B)V

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/InputFrameData;->getCameraId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/rapidmomentengine/data/FrameData;->setCameraID(I)V

    return-object v1
.end method
