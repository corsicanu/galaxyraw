.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptiveLensModeInfo"
.end annotation


# instance fields
.field private mAdaptiveLensCondition:Ljava/lang/Integer;

.field private mAdaptiveLensMode:Ljava/lang/Integer;

.field private mAdaptiveLensModeState:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adaptiveLensCondition",
            "adaptiveLensModeState",
            "adaptiveLensMode"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensCondition:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensModeState:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensMode:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAdaptiveLensCondition()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensCondition:Ljava/lang/Integer;

    return-object p0
.end method

.method public getAdaptiveLensMode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public getAdaptiveLensModeState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensModeState:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensCondition:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensModeState:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensMode:Ljava/lang/Integer;

    return-void
.end method

.method public setAdaptiveLensCondition(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adaptiveLensCondition"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensCondition:Ljava/lang/Integer;

    return-void
.end method

.method public setAdaptiveLensMode(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adaptiveLensMode"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensMode:Ljava/lang/Integer;

    return-void
.end method

.method public setAdaptiveLensModeState(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adaptiveLensModeState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensModeState:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensCondition:Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensModeState:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->mAdaptiveLensMode:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "AdaptiveLensCondition(%d), AdaptiveLensModeState(%d), AdaptiveLensMode(%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
