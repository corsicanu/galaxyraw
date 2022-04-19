.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectTrackingInfo"
.end annotation


# instance fields
.field private mAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAfState:Ljava/lang/Integer;

.field private mCropRegion:Landroid/graphics/Rect;

.field private mObjectTrackingRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mObjectTrackingState:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Integer;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "afState",
            "afRegions",
            "objectTrackingRegions",
            "objectTrackingState",
            "cropRegion"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mAfState:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mObjectTrackingRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mObjectTrackingState:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mCropRegion:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getAfRegions()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mAfRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public getAfState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mAfState:Ljava/lang/Integer;

    return-object p0
.end method

.method public getCropRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getObjectTrackingRegions()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mObjectTrackingRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public getObjectTrackingState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->mObjectTrackingState:Ljava/lang/Integer;

    return-object p0
.end method
