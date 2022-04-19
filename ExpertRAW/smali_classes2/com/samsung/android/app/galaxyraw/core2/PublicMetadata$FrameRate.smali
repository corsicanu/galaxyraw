.class public final enum Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;
.super Ljava/lang/Enum;
.source "PublicMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

.field public static final enum RATIO_1_OVER_2:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

.field public static final enum RATIO_4_OVER_5:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

.field public static final enum RATIO_MAX_PREVIEW_FPS:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

.field public static final enum RATIO_NONE:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;


# instance fields
.field ratio:Landroid/util/Rational;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    new-instance v1, Landroid/util/Rational;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    const-string v4, "RATIO_NONE"

    invoke-direct {v0, v4, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;-><init>(Ljava/lang/String;ILandroid/util/Rational;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_NONE:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    new-instance v4, Landroid/util/Rational;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Landroid/util/Rational;-><init>(II)V

    const-string v6, "RATIO_1_OVER_2"

    invoke-direct {v1, v6, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;-><init>(Ljava/lang/String;ILandroid/util/Rational;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_1_OVER_2:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    new-instance v6, Landroid/util/Rational;

    const/4 v7, 0x4

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Landroid/util/Rational;-><init>(II)V

    const-string v8, "RATIO_4_OVER_5"

    invoke-direct {v4, v8, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;-><init>(Ljava/lang/String;ILandroid/util/Rational;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_4_OVER_5:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    new-instance v8, Landroid/util/Rational;

    invoke-direct {v8, v3, v3}, Landroid/util/Rational;-><init>(II)V

    const-string v9, "RATIO_MAX_PREVIEW_FPS"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v8}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;-><init>(Ljava/lang/String;ILandroid/util/Rational;)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_MAX_PREVIEW_FPS:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v10

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/util/Rational;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "ratio"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Rational;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->ratio:Landroid/util/Rational;

    return-void
.end method

.method public static getFrameRate(Landroid/util/Rational;)Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rational"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->values()[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$PublicMetadata$FrameRate$e2deRr-QEFqoQR59w79uwjtOKFo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$PublicMetadata$FrameRate$e2deRr-QEFqoQR59w79uwjtOKFo;-><init>(Landroid/util/Rational;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_NONE:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    return-object p0
.end method

.method static synthetic lambda$getFrameRate$0(Landroid/util/Rational;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->getRational()Landroid/util/Rational;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->$VALUES:[Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    return-object v0
.end method


# virtual methods
.method public compareFrameRate(Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetFrameRate"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->ratio:Landroid/util/Rational;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->getRational()Landroid/util/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRational()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->ratio:Landroid/util/Rational;

    return-object p0
.end method

.method public getRationalValue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->ratio:Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    return p0
.end method

.method public setRational(Landroid/util/Rational;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->ratio:Landroid/util/Rational;

    return-void
.end method
