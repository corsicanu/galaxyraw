.class Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;
.super Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;
.source "WatchServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/WatchServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-direct {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public decreaseZoomValue()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "decreaseZoomValue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$npMuLfq5l7T0f9M7XgetdhSds3k;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$npMuLfq5l7T0f9M7XgetdhSds3k;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public increaseZoomValue()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "increaseZoomValue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$83QewnONw69rL9XwaQm4WKMsDyA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$83QewnONw69rL9XwaQm4WKMsDyA;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isPhoneStorageAvailable()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "isPhoneStorageAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$decreaseZoomValue$0$WatchServiceManager$4()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1600(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    const/16 v1, 0xa9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "zoom_not_available"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$increaseZoomValue$1$WatchServiceManager$4()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1600(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    const/16 v1, 0xa8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "zoom_not_available"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$notifySuccessMirroring$2$WatchServiceManager$4()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v0

    const-string v1, "WatchServiceManager"

    if-nez v0, :cond_0

    const-string p0, "notifySuccessMirroring : Returned because camera is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/app/Presentation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/app/Presentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "notifySuccessMirroring : Returned because presentation dialog is already shown"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2800(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->reconnectMaker()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2902(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Z)Z

    return-void
.end method

.method public synthetic lambda$requestCancelTimer$3$WatchServiceManager$4()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->cancelShutterTimer()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "timer_is_not_running"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestCurrentStates$4$WatchServiceManager$4()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    return-void
.end method

.method public synthetic lambda$requestPauseRecording$5$WatchServiceManager$4()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordPauseButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "recording_is_not_in_progress"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestResumeRecording$6$WatchServiceManager$4()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordResumeButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "recording_is_not_in_progress"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestStartRecording$7$WatchServiceManager$4()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecordingAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "recording_not_available"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestStopAndSwitchToPhoto$8$WatchServiceManager$4()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2600(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2502(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Z)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;->CANCEL_SHOOTING:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->onWatchEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$requestStopCapture$9$WatchServiceManager$4()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$requestStopRecording$10$WatchServiceManager$4()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "recording_is_not_in_progress"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestSwitchToPhoto$11$WatchServiceManager$4()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onLaunchShootingMode(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonProperty(Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "changing_shooting_mode_not_available"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$requestTakePicture$12$WatchServiceManager$4()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCapturing()Z

    move-result v0

    const-string v1, "capture_not_available"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2200(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "capturing"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordSnapShotButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->restartInactivityTimer()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    :goto_1
    return-void
.end method

.method public synthetic lambda$setFlashState$13$WatchServiceManager$4(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xddf

    const/4 v6, 0x2

    if-eq v4, v5, :cond_3

    const v5, 0x1ad6f

    if-eq v4, v5, :cond_2

    const v5, 0x55c64adf

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "auto_off"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_2
    const-string v4, "off"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v6

    goto :goto_1

    :cond_3
    const-string v4, "on"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_6

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setTorch(I)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFlash(I)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setTorch(I)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFlash(I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setTorch(I)V

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFlash(I)V

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$setLensState$14$WatchServiceManager$4()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->WATCH_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const-string v0, "changing_camera_facing_not_available"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setTimerState$15$WatchServiceManager$4(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    const/16 v2, 0x35

    if-eq v1, v2, :cond_1

    const/16 v2, 0x61f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_1
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v6

    goto :goto_0

    :cond_2
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    move v3, v6

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v6, :cond_8

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$setTouchFocus$16$WatchServiceManager$4(FF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1800(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2000(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$setZoomLevel$17$WatchServiceManager$4(D)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1600(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    double-to-int p1, p1

    mul-int/lit8 p1, p1, 0xa

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->extendArea()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p0

    invoke-interface {p2, v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->startZoomLevelChangeAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;II)V

    :cond_0
    return-void
.end method

.method public notifyControllerAppLaunched()V
    .locals 1

    const-string p0, "WatchServiceManager"

    const-string v0, "notifyControllerAppLaunched"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyControllerAppTerminated()V
    .locals 1

    const-string p0, "WatchServiceManager"

    const-string v0, "notifyControllerAppTerminated"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyControllerWidgetLaunched()V
    .locals 1

    const-string p0, "WatchServiceManager"

    const-string v0, "notifyControllerWidgetLaunched"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyControllerWidgetTerminated()V
    .locals 1

    const-string p0, "WatchServiceManager"

    const-string v0, "notifyControllerWidgetTerminated"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyProviderLaunched()V
    .locals 1

    const-string p0, "WatchServiceManager"

    const-string v0, "notifyProviderLaunched"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyProviderTerminated()V
    .locals 1

    const-string p0, "WatchServiceManager"

    const-string v0, "notifyProviderTerminated"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyProviderVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyProviderVersion : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WatchServiceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifySuccessMirroring(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySuccessMirroring : Device name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchServiceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$JwuIUZsLY1DisC1WigJRAuO-s9o;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$JwuIUZsLY1DisC1WigJRAuO-s9o;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestAngleChangeEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    return-void
.end method

.method public requestBurstModeStart()V
    .locals 1

    const-string p0, "WatchServiceManager"

    const-string v0, "requestBurstModeStart"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestBurstModeStop()V
    .locals 1

    const-string p0, "WatchServiceManager"

    const-string v0, "requestBurstModeStop"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestCameraTerminate()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestCameraTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$q79gst-nBpHv-bCv5ddl8loJtcU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$q79gst-nBpHv-bCv5ddl8loJtcU;-><init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestCancelTimer()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestCancelTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$w9FTlMCD5-Ehzbo3A2W6EDubeQw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$w9FTlMCD5-Ehzbo3A2W6EDubeQw;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestCurrentStates()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestCurrentStates"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$tV7kB_gGRlKK9PeP_lSVyfLS-GA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$tV7kB_gGRlKK9PeP_lSVyfLS-GA;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestPauseRecording()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestPauseRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$fuBINWLH1GohRp21PGDU8NxXj_Y;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$fuBINWLH1GohRp21PGDU8NxXj_Y;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestResumeRecording()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestResumeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Df-sXdkikVJ12_jeycAXkY__zoQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Df-sXdkikVJ12_jeycAXkY__zoQ;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStartRecording()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestStartRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$o5Slw0Mkjtf3iCX6lcxnAtN4z1w;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$o5Slw0Mkjtf3iCX6lcxnAtN4z1w;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStopAndSwitchToPhoto()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestStopAndSwitchToPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$H6FWWaZitMChEQPWqMomWbXeEb8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$H6FWWaZitMChEQPWqMomWbXeEb8;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStopCapture()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestStopCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$7QFFk5si1LQvFVSxSLMKcEoBuBU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$7QFFk5si1LQvFVSxSLMKcEoBuBU;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStopRecording()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestStopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$wvrTxujmPtF5IsC1MFrqLlCwofc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$wvrTxujmPtF5IsC1MFrqLlCwofc;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestSwitchToPhoto()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestSwitchToPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$mXuv7pBhy-6N6f_aJJ1sdq9r4jA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$mXuv7pBhy-6N6f_aJJ1sdq9r4jA;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestTakePicture()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "requestTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$0EcDFtCI4kTSVYG4Dm2M0PKyKrc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$0EcDFtCI4kTSVYG4Dm2M0PKyKrc;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFlashState(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flashState"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlashState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$LnHiqvEURh-QfltDZxBOzwDySZI;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$LnHiqvEURh-QfltDZxBOzwDySZI;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLensState(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensState"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLensState : lensState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchServiceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$EqnLBa9hzNrm6tknrVbVQezW-84;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$EqnLBa9hzNrm6tknrVbVQezW-84;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTimerState(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerState"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimerState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$MmK1IO2ytqdapAj28Ef_Q23bSQc;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$MmK1IO2ytqdapAj28Ef_Q23bSQc;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTouchFocus(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchX",
            "touchY"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$qn2DPnNZ4RTGfcsIlku6ClySTC0;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setZoomLevel(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Sys79xen3XzHNSHE1YMTpJkmGtA;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$4$Sys79xen3XzHNSHE1YMTpJkmGtA;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
