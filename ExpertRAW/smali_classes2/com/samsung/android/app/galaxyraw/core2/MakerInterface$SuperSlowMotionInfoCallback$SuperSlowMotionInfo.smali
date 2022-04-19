.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperSlowMotionInfo"
.end annotation


# instance fields
.field private mSuperSlowMotionMode:Ljava/lang/Integer;

.field private mSuperSlowMotionState:Ljava/lang/Integer;

.field private mSuperSlowMotionTrigger:Ljava/lang/Integer;


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
            "superSlowMotionMode",
            "superSlowMotionState",
            "superSlowMotionTrigger"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionMode:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionState:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionTrigger:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getSuperSlowMotionMode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSuperSlowMotionState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionState:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSuperSlowMotionTrigger()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionTrigger:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionMode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionState:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionTrigger:Ljava/lang/Integer;

    return-void
.end method

.method public setSuperSlowMotionMode(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superSlowMotionMode"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionMode:Ljava/lang/Integer;

    return-void
.end method

.method public setSuperSlowMotionState(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superSlowMotionState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionState:Ljava/lang/Integer;

    return-void
.end method

.method public setSuperSlowMotionTrigger(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superSlowMotionTrigger"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionTrigger:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionMode:Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionState:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback$SuperSlowMotionInfo;->mSuperSlowMotionTrigger:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "SuperSlowMotionMode(%d), SuperSlowMotionState(%d), SuperSlowMotionTrigger(%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
