.class Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;
.super Ljava/lang/Object;
.source "ServiceExecutor.java"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$000(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$102(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;Z)Z

    const-string p1, "connected, signal all"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$200(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$000(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$000(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->onDisconnected(Landroid/content/ComponentName;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$000(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$102(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;Z)Z

    const-string p1, "disconnected, signal all"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$200(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$000(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->access$000(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onError()V
    .locals 0

    return-void
.end method
