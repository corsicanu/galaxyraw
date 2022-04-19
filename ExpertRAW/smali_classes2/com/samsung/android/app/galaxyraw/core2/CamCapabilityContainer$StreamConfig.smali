.class public Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;
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
    name = "StreamConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final STREAM_CONFIG_LENGTH:I = 0x4


# instance fields
.field private final format:I

.field private final isInput:Z

.field private final size:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "size",
            "isInput"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->format:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->isInput:Z

    return-void
.end method

.method public static unMarshal([IZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metas",
            "forDepth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;

    aget v4, p0, v2

    invoke-static {v4, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormat(IZ)I

    move-result v4

    new-instance v5, Landroid/util/Size;

    add-int/lit8 v6, v2, 0x1

    aget v6, p0, v6

    add-int/lit8 v7, v2, 0x2

    aget v7, p0, v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    add-int/lit8 v6, v2, 0x3

    aget v6, p0, v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;-><init>(ILandroid/util/Size;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->compareTo(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;)I

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

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->format:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->format:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->isInput:Z

    iget-boolean p1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->isInput:Z

    if-ne p0, p1, :cond_0

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

.method public getFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->format:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->format:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->isInput:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isInput()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->isInput:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->format:I

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->toImageFormatString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInput = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$StreamConfig;->isInput:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
