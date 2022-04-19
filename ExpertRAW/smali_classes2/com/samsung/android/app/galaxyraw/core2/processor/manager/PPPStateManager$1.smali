.class Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "PPPStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera is Available for camera Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " PackageName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "service.camera.client"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string v0, "Scheduling ResumePPP after 10 seconds"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$202(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;Z)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$400(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;)V

    const-wide/16 v2, 0xa

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$302(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera is Unavailable for camera Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " PackageName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "service.camera.client"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string v1, "Cancelling current task"

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$300(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;->RESUMED:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;->pausePPP()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;->PAUSED:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->setProcessingState(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$ProcessingState;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;->access$202(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PPPStateManager;Z)Z

    return-void
.end method
