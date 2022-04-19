.class Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "CameraExecutorManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

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

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "camera.action.AUDIOFOCUS_GAIN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "camera.action.PICTURE_SAVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string p2, "camera.action.EXECUTE_BIXBY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    const-string p1, "audio"

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/media/AudioManager;

    move-result-object p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$002(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$000(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/media/AudioManager;

    move-result-object p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$002(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->startVoiceRecognizer()V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$300(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$302(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;Z)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->sendResult()V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    const-wide/16 p1, 0xc8

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;IJ)V

    :cond_6
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79bb46f1 -> :sswitch_3
        -0x6d4206c9 -> :sswitch_2
        -0x322ef7f3 -> :sswitch_1
        -0x322c7c4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
