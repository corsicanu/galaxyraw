.class public Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;
.super Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.source "TextToSpeechServiceExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@TTSServiceExecutor"


# instance fields
.field private deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mContext:Landroid/content/Context;

.field private mTTSService:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->mTTSService:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getServiceIntent()Landroid/content/Intent;
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/scs/base/utils/ConnectionHelper;->getTextToSpeechServiceIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTTService()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->mTTSService:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    return-object p0
.end method

.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ScsApi@TTSServiceExecutor"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->mTTSService:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "RemoteException"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScsApi@TTSServiceExecutor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->mTTSService:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    return-void
.end method
