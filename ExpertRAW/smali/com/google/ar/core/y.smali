.class final Lcom/google/ar/core/y;
.super Lcom/google/a/b/a/a/a/e;
.source "InstallServiceImpl.java"


# instance fields
.field private final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic b:Lcom/google/ar/core/v;


# direct methods
.method constructor <init>(Lcom/google/ar/core/v;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iput-object p2, p0, Lcom/google/ar/core/y;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/google/a/b/a/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/y;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x64

    const-string v1, "error.code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "install.status"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    sget-object p1, Lcom/google/ar/core/o;->c:Lcom/google/ar/core/o;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/o;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const/16 p1, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "requestInstall = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", launching fullscreen."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ARCore-InstallService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p1, p1, Lcom/google/ar/core/v;->c:Lcom/google/ar/core/p;

    iget-object v0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object v0, v0, Lcom/google/ar/core/v;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    invoke-static {p1, v0, p0}, Lcom/google/ar/core/p;->a(Lcom/google/ar/core/p;Landroid/app/Activity;Lcom/google/ar/core/s;)V

    return-void

    :cond_2
    const-string v0, "resolution.intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object v0, v0, Lcom/google/ar/core/v;->c:Lcom/google/ar/core/p;

    iget-object v1, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object v1, v1, Lcom/google/ar/core/v;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    invoke-static {v0, v1, p1, p0}, Lcom/google/ar/core/p;->a(Lcom/google/ar/core/p;Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/s;)V

    return-void

    :cond_3
    const/16 p1, 0xa

    if-eq v1, p1, :cond_4

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const/16 v0, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected install status: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/ar/core/s;->a(Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    sget-object p1, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/o;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/o;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unexpected FAILED install status without error."

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/ar/core/s;->a(Ljava/lang/Exception;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    sget-object p1, Lcom/google/ar/core/o;->c:Lcom/google/ar/core/o;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/o;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    sget-object p1, Lcom/google/ar/core/o;->a:Lcom/google/ar/core/o;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/s;->a(Lcom/google/ar/core/o;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->b:Lcom/google/ar/core/s;

    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unexpected REQUIRES_UI_INTENT install status without an intent."

    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/ar/core/s;->a(Ljava/lang/Exception;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
