.class public Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;
.super Ljava/lang/Object;
.source "CamCapabilityContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawStreamConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final RAW_STREAM_CONFIG_INDEX_DEVICE_ID:I = 0x0

.field public static final RAW_STREAM_CONFIG_INDEX_HEIGHT:I = 0x2

.field public static final RAW_STREAM_CONFIG_INDEX_SENSOR_PIXEL_MODE:I = 0x3

.field public static final RAW_STREAM_CONFIG_INDEX_WIDTH:I = 0x1

.field public static final RAW_STREAM_CONFIG_LENGTH:I = 0x5


# instance fields
.field private final deviceId:I

.field private final sensorPixelMode:I

.field private final size:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceId",
            "size",
            "sensorPixelMode"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->deviceId:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->sensorPixelMode:I

    return-void
.end method

.method public static unMarshal([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x5

    if-lez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Landroid/util/Size;

    add-int/lit8 v5, v2, 0x1

    aget v5, p0, v5

    add-int/lit8 v6, v2, 0x2

    aget v6, p0, v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    move v5, v1

    move v6, v3

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v5, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    add-int/lit8 v5, v2, 0x0

    aget v5, p0, v5

    add-int/lit8 v7, v2, 0x3

    aget v7, p0, v7

    invoke-direct {v3, v5, v4, v7}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;-><init>(ILandroid/util/Size;I)V

    invoke-interface {v0, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x5

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p1, p0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->compareTo(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->deviceId:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->deviceId:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDeviceId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->deviceId:I

    return p0
.end method

.method public getSensorPixelMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->sensorPixelMode:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->deviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->sensorPixelMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sensorPixelMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->sensorPixelMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
