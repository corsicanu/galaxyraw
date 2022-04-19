.class Lcom/samsung/android/bixby/service/sdk/session/SessionManager$1;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/session/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bixby/service/sdk/session/SessionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bixby/service/sdk/session/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/session/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SessionManager"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/session/SessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/session/SessionManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->notifyServiceConnection(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SessionManager"

    invoke-static {v2, p1, v1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/session/SessionManager;

    invoke-virtual {p1}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->onDisconnected()V

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/session/SessionManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->notifyServiceConnection(Z)V

    return-void
.end method
