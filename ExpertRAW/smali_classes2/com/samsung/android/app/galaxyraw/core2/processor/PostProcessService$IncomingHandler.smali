.class Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService$IncomingHandler;
.super Landroid/os/Handler;
.source "PostProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService$IncomingHandler;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService$IncomingHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;->setProgressAndNotify(II)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;->cancelNotification()V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)V

    :goto_0
    return-void
.end method
