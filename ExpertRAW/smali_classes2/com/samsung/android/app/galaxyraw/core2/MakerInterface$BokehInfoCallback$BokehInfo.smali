.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BokehInfo"
.end annotation


# instance fields
.field private mBokehCropRegion:Landroid/graphics/Rect;

.field private mBokehFocusedRects:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mBokehState:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bokehState",
            "bokehFocusedRects",
            "bokehCropRegion"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehState:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehFocusedRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehCropRegion:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBokehCropRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBokehFocusedRects()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehFocusedRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public getBokehState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehState:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehState:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehFocusedRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehCropRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setBokehCropRegion(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bokehCropRegion"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehCropRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setBokehFocusedRects([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bokehFocusedRects"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehFocusedRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public setBokehState(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bokehState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehState:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehState:Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehFocusedRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;->mBokehCropRegion:Landroid/graphics/Rect;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "BokehState(%d), BokehFocusedRects(%s), BokehCropRegion(%s)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
