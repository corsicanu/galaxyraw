.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;
.super Landroid/content/BroadcastReceiver;
.source "PreviewOverlayLayerPresenter.java"


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "camera.action.ACTIVATE_SHOOTING_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p2, "camera.action.INACTIVATE_SHOOTING_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;->enableFaceRectView(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;->enableInclinometerView(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;->enableLevelMeterView(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getPreviewDisplayMatrix(ILandroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;->setTranslateMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;->enableFaceRectView(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$300(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$400(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isInclinometerSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;->enableInclinometerView(Z)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isLevelMeterSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;->enableLevelMeterView(Z)V

    :cond_3
    :goto_0
    return-void
.end method
