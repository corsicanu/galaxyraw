.class public abstract Lcom/samsung/android/bixby/service/sdk/session/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionManager"


# instance fields
.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceConnectionListener:Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mBound:Z

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager$1;-><init>(Lcom/samsung/android/bixby/service/sdk/session/SessionManager;)V

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/bixby/service/sdk/utils/ContextHolder;->setContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected connectToService()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mBound:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SessionManager"

    const-string v4, "connectToService mBound = "

    invoke-static {v2, v4, v1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mBound:Z

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Binding service with app context"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    :cond_0
    new-array p0, v3, [Ljava/lang/Object;

    const-string v1, "already bound"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public disConnectService()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mBound:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SessionManager"

    const-string v3, "disConnectService mBound = "

    invoke-static {v1, v3, v0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mBound:Z

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "unbindService"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->onDisconnected()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->notifyServiceConnection(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mBound:Z

    :cond_0
    return-void
.end method

.method protected abstract getServiceIntent()Landroid/content/Intent;
.end method

.method public init(Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->setConnectionStatusListener(Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->isServiceConnected()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SessionManager"

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->notifyServiceConnection(Z)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "just return already bound service obj"

    invoke-static {v2, p1, p0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->connectToService()Z

    move-result p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "connectToService result"

    invoke-static {v2, p0, p1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public abstract isServiceConnected()Z
.end method

.method protected notifyServiceConnection(Z)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SessionManager"

    const-string v4, "notifyServiceConnection"

    invoke-static {v2, v4, v1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mServiceConnectionListener:Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;->onConnected()V

    iput-boolean v0, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mBound:Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;->onDisconnected()V

    iput-boolean v3, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mBound:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method protected abstract onDisconnected()V
.end method

.method protected setConnectionStatusListener(Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;->mServiceConnectionListener:Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;

    return-void
.end method
