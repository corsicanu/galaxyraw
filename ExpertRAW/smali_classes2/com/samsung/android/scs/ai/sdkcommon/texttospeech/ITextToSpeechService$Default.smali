.class public Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService$Default;
.super Ljava/lang/Object;
.source "ITextToSpeechService.java"

# interfaces
.implements Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllVoiceTypes()Ljava/util/List;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public initEngine(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public stopSynthesize()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public synthesize(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public synthesizeByLocale(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public synthesizeByVoiceType(ILcom/samsung/android/scs/ai/sdkcommon/texttospeech/ITextToSpeechCallback;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
