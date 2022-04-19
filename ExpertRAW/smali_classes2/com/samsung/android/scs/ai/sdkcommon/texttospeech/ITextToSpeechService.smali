.class public interface abstract Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;
.super Ljava/lang/Object;
.source "ITextToSpeechService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Stub;,
        Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Default;
    }
.end annotation


# virtual methods
.method public abstract getAllVoiceTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initEngine(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSynthesize()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthesize(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthesizeByLocale(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthesizeByVoiceType(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
