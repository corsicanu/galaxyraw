.class public Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;
.super Ljava/lang/Object;
.source "TextServiceConnectionManager.java"


# static fields
.field private static sInstance:Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;


# instance fields
.field private mConnectionCallback:Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;

.field private mIsConnected:Z

.field private mWaitConnect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mWaitConnect:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mIsConnected:Z

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager$1;-><init>(Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;)V

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mConnectionCallback:Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mWaitConnect:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->setConnected(Z)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->sInstance:Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->sInstance:Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;

    invoke-direct {v1}, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;-><init>()V

    sput-object v1, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->sInstance:Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->sInstance:Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;

    return-object v0
.end method

.method private declared-synchronized setConnected(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getConnectionCallback()Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mConnectionCallback:Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;

    return-object p0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitConnect()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mWaitConnect:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mIsConnected:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/internal/TextServiceConnectionManager;->mWaitConnect:Ljava/lang/Object;

    sget-wide v1, Lcom/samsung/android/bixby/service/sdk/utils/Constants;->SERVICE_CONNECT_WAIT_TIME:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
