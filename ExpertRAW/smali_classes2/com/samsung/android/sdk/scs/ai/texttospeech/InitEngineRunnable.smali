.class public Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "InitEngineRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@InitEngineRunnable"


# instance fields
.field private mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

.field private mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    const-string v0, "ERROR_INITIALIZE_LISTENER"

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    const-string v2, "ScsApi@InitEngineRunnable"

    if-nez v1, :cond_0

    const-string v0, "ERROR_INVALID_LISTENER"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->getTTService()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->initEngine(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_TEXT_TO_SPEECH"

    return-object p0
.end method

.method public setCallback(Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitEngineRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    return-void
.end method
