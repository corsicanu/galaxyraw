.class public Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;
    }
.end annotation


# instance fields
.field private final mClient:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;

.field private final mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;

.field private mPrepared:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mPrepared:Z

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;

    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;

    new-instance p2, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mClient:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mClient:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->cancel()V

    return-void
.end method

.method public prepare(Ljava/util/Locale;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig$Builder;->setLocale(Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig$Builder;->build()Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mClient:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->prepare(Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionConfig;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mPrepared:Z

    return p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mClient:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->destroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mPrepared:Z

    return-void
.end method

.method public start(Ljava/io/InputStream;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mPrepared:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;

    const/16 p1, -0xa

    const-string v0, "Recognizer is NOT prepared"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;->onError(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mClient:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerClient;->start(Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method
