.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$1;
.super Ljava/lang/Object;
.source "PreviewOverlayLayerPresenter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensor",
            "accuracy"
        }
    .end annotation

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget p1, p1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v0, v1, v2, p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;->updateAccelerationValue(FFFLandroid/graphics/Rect;)V

    return-void
.end method
