.class Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractRecordingModePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;

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

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: action = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbstractRecordingModePresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method
