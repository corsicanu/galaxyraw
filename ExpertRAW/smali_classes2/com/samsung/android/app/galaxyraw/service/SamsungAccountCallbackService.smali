.class public Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;
.super Landroid/app/Service;
.source "SamsungAccountCallbackService.java"


# static fields
.field private static final CC_REQUEST_ID:I = 0x64

.field private static final CLIENT_ID:Ljava/lang/String; = "q78xkxlcnz"

.field private static final SA_INTENT_ACTION:Ljava/lang/String; = "com.msc.action.samsungaccount.REQUEST_SERVICE"

.field private static final SA_INTENT_CLASS_NAME:Ljava/lang/String; = "com.msc.sa.service.RequestService"

.field private static final SA_INTENT_PACKAGE_NAME:Ljava/lang/String; = "com.osp.app.signin"

.field private static final TAG:Ljava/lang/String; = "GalaxyRaw/SACallbackService"


# instance fields
.field private mRegistrationCode:Ljava/lang/String;

.field private final mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

.field private mSaService:Lcom/msc/sa/aidl/ISAService;

.field private final saServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;-><init>(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;-><init>(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->saServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->mRegistrationCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->mRegistrationCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Lcom/msc/sa/aidl/ISACallback$Stub;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->mSaCallback:Lcom/msc/sa/aidl/ISACallback$Stub;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "GalaxyRaw/SACallbackService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.msc.sa.service.RequestService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->saServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "GalaxyRaw/SACallbackService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->saServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
