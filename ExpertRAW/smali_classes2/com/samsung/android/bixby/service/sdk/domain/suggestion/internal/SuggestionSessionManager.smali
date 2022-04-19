.class public Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;
.super Lcom/samsung/android/bixby/service/sdk/session/SessionManager;
.source "SuggestionSessionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SuggestionSessionManager"

.field private static volatile sInstance:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;


# instance fields
.field private deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mSuggestionService:Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bixby/service/sdk/session/SessionManager;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager$1;-><init>(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;)V

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;)Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->mSuggestionService:Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;)Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->mSuggestionService:Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->notifyServiceConnection(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->sInstance:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->sInstance:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->sInstance:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->sInstance:Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;

    return-object p0
.end method


# virtual methods
.method public getServiceIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "bixby.intent.action.BIND_SUGGESTION_SERVICE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.bixby.service"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public getSuggestionService()Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->mSuggestionService:Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    return-object p0
.end method

.method public isServiceConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->mSuggestionService:Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->mSuggestionService:Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "SuggestionSessionManager"

    const-string v0, "RemoteException"

    invoke-static {p2, p0, v0, p1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/suggestion/internal/SuggestionSessionManager;->mSuggestionService:Lcom/samsung/android/bixby/service/sdk/common/suggestion/ISuggestionService;

    return-void
.end method
