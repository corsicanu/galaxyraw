.class public Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;
.super Ljava/lang/Object;
.source "IndicatorOrientationData.java"


# instance fields
.field private final mLandscapeTranslation:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPortraitTranslation:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReverseLandscapeTranslation:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "portraitX",
            "portraitY",
            "landscapeX",
            "landscapeY",
            "reverseLandscapeX",
            "reverseLandscapeY"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;->mPortraitTranslation:Landroid/util/Pair;

    new-instance p1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;->mLandscapeTranslation:Landroid/util/Pair;

    new-instance p1, Landroid/util/Pair;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;->mReverseLandscapeTranslation:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public getTranslationPair(I)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;->mLandscapeTranslation:Landroid/util/Pair;

    return-object p0

    :cond_0
    const/16 v0, -0x5a

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;->mReverseLandscapeTranslation:Landroid/util/Pair;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/IndicatorOrientationData;->mPortraitTranslation:Landroid/util/Pair;

    return-object p0
.end method
