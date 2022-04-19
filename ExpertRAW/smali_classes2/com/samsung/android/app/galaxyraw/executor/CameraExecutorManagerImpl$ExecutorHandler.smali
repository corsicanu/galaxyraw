.class Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;
.super Landroid/os/Handler;
.source "CameraExecutorManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutorHandler"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraExecutorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$ExecutorHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SWITCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1500(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->waitEmptyRequest()V

    const-string p0, "change CameraFacing"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isNotificationExist()Z

    move-result p1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const-string p1, "fail change CameraFacing retry"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendResult, isNotificationExist = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isNotificationExist()Z

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1602(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Z)Z

    invoke-static {p0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;IJ)V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isRequestQueueEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1602(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Z)Z

    invoke-static {p0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;IJ)V

    goto :goto_0

    :cond_4
    const-string p1, "fail change CameraFacing"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1700(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Z)V

    goto :goto_0

    :cond_5
    const-string p1, "can\'t process in the current state and so retry"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1400(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1300(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getFirstActionState()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1300(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;)V

    :goto_0
    return-void
.end method
