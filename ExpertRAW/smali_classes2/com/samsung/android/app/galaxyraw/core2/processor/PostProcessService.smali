.class public Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;
.super Landroid/app/Service;
.source "PostProcessService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService$IncomingHandler;
    }
.end annotation


# static fields
.field static final MSG_CANCEL_NOTIFICATION:I = 0x3

.field static final MSG_SET_PROGRESS:I = 0x4

.field static final MSG_START_FOREGROUND:I = 0x1

.field static final MSG_STOP_FOREGROUND:I = 0x2

.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private volatile mIsServiceForeground:Z

.field final mMessenger:Landroid/os/Messenger;

.field private mPostProcessNotification:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService$IncomingHandler;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->startForegroundService()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->stopForegroundService()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;)Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mPostProcessNotification:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;

    return-object p0
.end method

.method private startForegroundService()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mIsServiceForeground:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mPostProcessNotification:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "startForeground"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mIsServiceForeground:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startForegroundService is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "startForegroundService is failed : notification is null"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopForegroundService()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mIsServiceForeground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->stopForeground(Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopForeground"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mIsServiceForeground:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopForeground is failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    :try_start_0
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mPostProcessNotification:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create PostProcessNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/util/PLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->mPostProcessNotification:Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessNotification;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    const/4 p0, 0x2

    return p0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/PostProcessService;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->stopService(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
