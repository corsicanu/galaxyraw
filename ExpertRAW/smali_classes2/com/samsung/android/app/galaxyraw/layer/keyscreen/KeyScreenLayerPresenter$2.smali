.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyScreenLayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "camera.action.ACTIVATE_SHOOTING_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->refreshView(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;->setRecordingMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->showBackButton()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->hideBackButton()V

    :cond_1
    :goto_0
    return-void
.end method
