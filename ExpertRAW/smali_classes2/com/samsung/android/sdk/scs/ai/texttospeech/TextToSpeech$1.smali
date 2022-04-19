.class Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;
.super Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-direct {p0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineInitDone(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitVoiceRunnable;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$000(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitVoiceRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$000(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitVoiceRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$1;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;->onEngineInitDone(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGenerateAudio(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;->onGenerateAudio(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public onGenerateRangeInfo(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;->onGenerateRangeInfo(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSynthesizeDone(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;->onSynthesizeDone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesizeError(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;->onSynthesizeError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSynthesizeStart(Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$500(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/scs/ai/texttospeech/SynthesizeProgressListener;->onSynthesizeStart(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public onVoiceListReloadDone(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitVoiceRunnable;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$000(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitVoiceRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;->this$0:Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;->access$000(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech;)Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeechServiceExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/texttospeech/InitVoiceRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1$2;-><init>(Lcom/samsung/android/sdk/scs/ai/texttospeech/TextToSpeech$1;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method
