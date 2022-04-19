.class Lcom/samsung/android/app/galaxyraw/CommandReceiver$MainHandler;
.super Landroid/os/Handler;
.source "CommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/CommandReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mCommandReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/galaxyraw/CommandReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CommandReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandReceiver"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$MainHandler;->mCommandReceiver:Ljava/lang/ref/WeakReference;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver$MainHandler;->mCommandReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/CommandReceiver;

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;->onMyFilterSelect(I)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/CommandReceiver;->onFilterSelect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Z

    :cond_3
    :goto_0
    return-void
.end method
