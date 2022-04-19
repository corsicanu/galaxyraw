.class Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private listener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;->listener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;->listener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onPartialResults(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;->listener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;->onPartialResults(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResults(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer$ListenerWrapper;->listener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;->onResults(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
