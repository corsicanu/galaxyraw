.class public Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;
.super Ljava/lang/Object;
.source "CamCapabilityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialFunctionsFpsRanges"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges$SpecialFunctionsMaxCoverage;,
        Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges$SpecialFunctionsMode;
    }
.end annotation


# static fields
.field private static final SPECIAL_FUNCTIONS_FPS_RANGES_LENGTH:I = 0x4


# instance fields
.field private final mFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCoverage:I

.field private final mMode:I


# direct methods
.method private constructor <init>(IILandroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "maxCoverage",
            "fps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->mMode:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->mMaxCoverage:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->mFps:Landroid/util/Range;

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
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;

    aget v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p0, v4

    new-instance v5, Landroid/util/Range;

    add-int/lit8 v6, v1, 0x2

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v7, v1, 0x3

    aget v7, p0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;-><init>(IILandroid/util/Range;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->mFps:Landroid/util/Range;

    return-object p0
.end method

.method public getMaxCoverage()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->mMaxCoverage:I

    return p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$SpecialFunctionsFpsRanges;->mMode:I

    return p0
.end method
