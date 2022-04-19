.class public abstract Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;
.super Ljava/lang/Object;
.source "ImageBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageBase"

.field private static sImageServiceConnectionManager:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageServiceConnectionManager;

.field private static sImageSessionManager:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deInit()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;->sImageSessionManager:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->disConnectService()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;)V
    .locals 1

    const-class v0, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;->sImageSessionManager:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->init(Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Z
    .locals 6

    const-class v0, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImageBase"

    const-string v2, "init start: "

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/utils/Utils;->checkThread()V

    invoke-static {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;->sImageSessionManager:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageServiceConnectionManager;->getInstance()Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageServiceConnectionManager;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;->sImageSessionManager:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageServiceConnectionManager;->getConnectionCallback()Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->init(Lcom/samsung/android/bixby/service/sdk/session/ServiceConnectionListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageServiceConnectionManager;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageServiceConnectionManager;->waitConnect()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageServiceConnectionManager;->isConnected()Z

    move-result p0

    const-string v1, "ImageBase"

    const-string v2, "init isConnected: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected checkPreConditions(I)I
    .locals 5

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/utils/Utils;->checkThread()V

    invoke-static {}, Lcom/samsung/android/bixby/service/sdk/utils/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bixby/service/sdk/utils/Utils;->getImageServiceVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ImageBase"

    const-string v4, "ImageServiceVersion "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/samsung/android/bixby/service/sdk/utils/Utils;->checkVersion(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 v1, 0xc8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;->checkServiceConnection()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 v1, 0x64

    :cond_1
    :goto_0
    return v1
.end method

.method protected checkServiceConnection()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;->sImageSessionManager:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->isServiceConnected()Z

    move-result p0

    return p0
.end method

.method protected getImageService()Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;
    .locals 0

    sget-object p0, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;->sImageSessionManager:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->getBixbyAiVisionService()Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;

    move-result-object p0

    return-object p0
.end method
