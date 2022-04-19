.class Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onObjectTrackingInfoChanged$0$AeAfManagerImpl$5(Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$2100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$2100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$TrackingAfChangeListener;->onTrackingAfChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onObjectTrackingInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "objectTrackingInfo",
            "camDevice"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->getObjectTrackingState()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->getObjectTrackingRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->getCropRegion()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1900(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->getObjectTrackingState()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->getObjectTrackingRegions()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->getCropRegion()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onObjectTrackingInfoChanged : state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", afRegion="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", afRect="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", cropRegion="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AeAfManagerImpl"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback$ObjectTrackingInfo;->getObjectTrackingState()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p3, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_NOT_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_FOCUSING:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;

    invoke-direct {p2, p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$5$KTY7Ska5JVYoz5Hfehf4J43N380;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$5;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->resetTrackingAf()V

    :cond_7
    :goto_0
    return-void
.end method
