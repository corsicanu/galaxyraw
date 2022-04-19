.class public Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
.super Ljava/lang/Object;
.source "PicCbImgSizeConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final mPhysicalId:Ljava/lang/String;

.field private final mSensorPixelMode:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

.field private final mSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/util/Size;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "physicalId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "physicalId",
            "sensorPixelMode"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mSize:Landroid/util/Size;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mPhysicalId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mSensorPixelMode:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mSize:Landroid/util/Size;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mPhysicalId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mSensorPixelMode:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSensorPixelMode()Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public getPhysicalId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mPhysicalId:Ljava/lang/String;

    return-object p0
.end method

.method public getSensorPixelMode()Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mSensorPixelMode:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    return-object p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mSize:Landroid/util/Size;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PicCbImgSizeConfig{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mPhysicalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sensorPixelMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->mSensorPixelMode:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
