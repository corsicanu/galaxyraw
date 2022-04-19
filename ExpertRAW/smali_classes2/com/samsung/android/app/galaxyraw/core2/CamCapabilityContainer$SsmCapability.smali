.class public Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;
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
    name = "SsmCapability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;",
        ">;"
    }
.end annotation


# static fields
.field public static final SSM_CAPABILITY_LENGTH:I = 0x3


# instance fields
.field private final imageCount:I

.field private final size:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/util/Size;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "imageCount"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->imageCount:I

    return-void
.end method

.method public static unMarshal([I)Ljava/util/List;
    .locals 6
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
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;

    new-instance v3, Landroid/util/Size;

    aget v4, p0, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p0, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    add-int/lit8 v4, v1, 0x2

    aget v4, p0, v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;-><init>(Landroid/util/Size;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v0, p0

    iget-object p0, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    sub-int/2addr v0, p0

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->compareTo(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;)I

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

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->imageCount:I

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->imageCount:I

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

.method public getImageCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->imageCount:I

    return p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->imageCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SsmCapability;->imageCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
