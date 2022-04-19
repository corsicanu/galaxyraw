.class public Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;
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
    name = "VideoStreamConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIDEO_STREAM_CONFIG_LENGTH:I = 0x6


# instance fields
.field private final fps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Landroid/util/Size;

.field private final timeLimit:I

.field private final vdisRatio:I


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Range;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "fps",
            "vdisRatio",
            "timeLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->fps:Landroid/util/Range;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->vdisRatio:I

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->timeLimit:I

    return-void
.end method

.method public static unMarshal([I)Ljava/util/List;
    .locals 7
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
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x6

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;

    new-instance v3, Landroid/util/Size;

    aget v4, p0, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p0, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    new-instance v4, Landroid/util/Range;

    add-int/lit8 v5, v1, 0x2

    aget v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v1, 0x3

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    add-int/lit8 v6, v1, 0x5

    aget v6, p0, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;-><init>(Landroid/util/Size;Landroid/util/Range;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->compareTo(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;)I

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

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->fps:Landroid/util/Range;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->fps:Landroid/util/Range;

    invoke-virtual {v0, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->vdisRatio:I

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->vdisRatio:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->timeLimit:I

    iget p1, p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->timeLimit:I

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

.method public getFps()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->fps:Landroid/util/Range;

    return-object p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    return-object p0
.end method

.method public getTimeLimit()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->timeLimit:I

    return p0
.end method

.method public getVdisRatio()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->vdisRatio:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->fps:Landroid/util/Range;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->vdisRatio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->timeLimit:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

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

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->fps:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vdisRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->vdisRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeLimit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$VideoStreamConfig;->timeLimit:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
