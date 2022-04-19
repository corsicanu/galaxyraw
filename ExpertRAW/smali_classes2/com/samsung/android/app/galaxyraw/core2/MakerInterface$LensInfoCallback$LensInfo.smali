.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LensInfo"
.end annotation


# instance fields
.field private mLensAperture:Ljava/lang/Float;

.field private mLensCurrentPosition:Ljava/lang/Integer;

.field private mLensFocusDistance:Ljava/lang/Float;

.field private mLensState:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lensAperture",
            "lensCurrentPosition",
            "lensFocusDistance",
            "lensState"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensAperture:Ljava/lang/Float;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensCurrentPosition:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensFocusDistance:Ljava/lang/Float;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensState:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getLensAperture()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensAperture:Ljava/lang/Float;

    return-object p0
.end method

.method public getLensCurrentPosition()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensCurrentPosition:Ljava/lang/Integer;

    return-object p0
.end method

.method public getLensFocusDistance()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensFocusDistance:Ljava/lang/Float;

    return-object p0
.end method

.method public getLensState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensState:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensAperture:Ljava/lang/Float;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensCurrentPosition:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensFocusDistance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensState:Ljava/lang/Integer;

    return-void
.end method

.method public setLensAperture(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensAperture"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensAperture:Ljava/lang/Float;

    return-void
.end method

.method public setLensCurrentPosition(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensCurrentPosition"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensCurrentPosition:Ljava/lang/Integer;

    return-void
.end method

.method public setLensFocusDistance(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensFocusDistance"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensFocusDistance:Ljava/lang/Float;

    return-void
.end method

.method public setLensState(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensState:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensAperture:Ljava/lang/Float;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensCurrentPosition:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensFocusDistance:Ljava/lang/Float;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;->mLensState:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "LensAperture(%f) LensCurrentPosition(%d) LensFocusDistance(%f) LensState(%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
