.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$nd8PLiXmyStEKsBtM95nhTMa0gg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$nd8PLiXmyStEKsBtM95nhTMa0gg;->f$0:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/-$$Lambda$SpeechRecognizerTask$nd8PLiXmyStEKsBtM95nhTMa0gg;->f$0:Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;

    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/SpeechRecognizerTask;->lambda$destroy$3$SpeechRecognizerTask(Lcom/samsung/android/scs/ai/sdkcommon/asr/ISpeechRecognizerService;)V

    return-void
.end method
