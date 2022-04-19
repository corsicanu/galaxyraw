.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AeInfo"
.end annotation


# instance fields
.field private mAeExtraMode:Ljava/lang/Integer;

.field private mAeMode:Ljava/lang/Integer;

.field private mAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAeState:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aeMode",
            "aeState",
            "aeRegions",
            "aeExtraMode"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeMode:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeState:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeExtraMode:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAeExtraMode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeExtraMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public getAeMode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public getAeRegions()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public getAeState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeState:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeMode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeState:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeExtraMode:Ljava/lang/Integer;

    return-void
.end method

.method public setAeExtraMode(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aeExtraMode"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeExtraMode:Ljava/lang/Integer;

    return-void
.end method

.method public setAeMode(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aeMode"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeMode:Ljava/lang/Integer;

    return-void
.end method

.method public setAeRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aeRegions"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public setAeState(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aeState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeState:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeMode:Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeState:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->mAeExtraMode:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "AeMode(%d), AeState(%d), AeRegions(%s), AeExtraMode(%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
