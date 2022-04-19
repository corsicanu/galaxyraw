.class final Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;
.super Landroid/os/Handler;
.source "STPServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/singletake/STPServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StpServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/singletake/STPServiceClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/singletake/STPServiceClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;->this$0:Lcom/samsung/android/camera/singletake/STPServiceClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleOnError(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "service_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, -0xa

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onError(), Storage Permission Denied, Proceed to unbind "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;->this$0:Lcom/samsung/android/camera/singletake/STPServiceClient;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$400(Lcom/samsung/android/camera/singletake/STPServiceClient;Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording started time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recording_start_time"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$500()Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_3

    const/16 v1, 0x34

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/singletake/-$$Lambda$STPServiceClient$StpServiceCallback$0b20_A9WBiyUJnpz9MdfaQRdoO0;->INSTANCE:Lcom/samsung/android/camera/singletake/-$$Lambda$STPServiceClient$StpServiceCallback$0b20_A9WBiyUJnpz9MdfaQRdoO0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;->handleOnError(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;->this$0:Lcom/samsung/android/camera/singletake/STPServiceClient;

    invoke-static {v0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$700(Lcom/samsung/android/camera/singletake/STPServiceClient;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;->this$0:Lcom/samsung/android/camera/singletake/STPServiceClient;

    invoke-static {v0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$600(Lcom/samsung/android/camera/singletake/STPServiceClient;Landroid/os/Message;)V

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/singletake/STPServiceClient$StpServiceCallback;->this$0:Lcom/samsung/android/camera/singletake/STPServiceClient;

    invoke-static {p0}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$800(Lcom/samsung/android/camera/singletake/STPServiceClient;)Lcom/samsung/android/camera/singletake/STPServiceClient$STPServiceListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/singletake/STPServiceClient$STPServiceListener;->onReceiveCallback(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lcom/samsung/android/camera/singletake/STPServiceClient;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleMessage: listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
