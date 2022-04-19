.class public Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;
.super Ljava/lang/Object;
.source "MakerRepeatingModeManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RepeatingKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;",
        ">;"
    }
.end annotation


# instance fields
.field private mFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

.field private final mId:I

.field private final mMode:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

.field private final mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "name",
            "mode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_MAX_PREVIEW_FPS:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "name",
            "mode",
            "frameRate"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mId:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mMode:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getFrameRateRatio()F

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->getFrameRateRatio()F

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

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
            "target"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->compareTo(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;)I

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

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mId:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mMode:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mMode:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

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

.method public getFrameRate()Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    return-object p0
.end method

.method public getFrameRateRatio()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->getRationalValue()F

    move-result p0

    return p0
.end method

.method public getMode()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mMode:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public setFrameRate(Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameRate"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mMode:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;->mFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "%s - id %d, name %s, repeatingMode %s, frameRate %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
