.class public Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SynthesizeRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@SynthesizeRunnable"


# instance fields
.field private mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

.field private mLocale:Ljava/util/Locale;

.field private mParams:Landroid/os/Bundle;

.field mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

.field private mText:Ljava/lang/CharSequence;

.field private mUtteranceId:Ljava/lang/String;

.field private mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mParams:Landroid/os/Bundle;

    const-string v1, "tts_synthesize"

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mUtteranceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mParams:Landroid/os/Bundle;

    const-string v2, "PARAM_FOLLOW_BIXBY_VOICE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mLocale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->getTTService()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mParams:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mUtteranceId:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->synthesizeByVoiceType(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->getTTService()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mParams:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mUtteranceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->synthesizeByLocale(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->getTTService()Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mParams:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mUtteranceId:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;->synthesize(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string v0, "ScsApi@SynthesizeRunnable"

    const-string v1, "ERROR_EMPTY_INPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_TEXT_TO_SPEECH"

    return-object p0
.end method

.method public setCallback(Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mCallback:Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;

    return-void
.end method

.method public setLanguage(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mParams:Landroid/os/Bundle;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setUtteranceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mUtteranceId:Ljava/lang/String;

    return-void
.end method

.method public setVoiceType(Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeRunnable;->mVoiceType:Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;

    return-void
.end method
