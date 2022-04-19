.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiViewInfo"
.end annotation


# instance fields
.field private mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiViewCropRoiRects"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method


# virtual methods
.method public getMultiViewCropRoiRects()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->mMultiViewCropRoiRects:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method
