.class Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;
.super Lcom/samsung/android/scs/ai/sdkcommon/asr/IRecognitionListener$Stub;
.source "RecognitionServiceListener.java"


# instance fields
.field private mClientListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/IRecognitionListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;->mClientListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;->mClientListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

    const-string v0, "Service Error"

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;->mClientListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;->onPartialResults(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionServiceListener;->mClientListener:Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/client/RecognitionListener;->onResults(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
