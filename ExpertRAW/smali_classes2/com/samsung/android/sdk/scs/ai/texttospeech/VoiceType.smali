.class public Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;
.super Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;
.source "VoiceType.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getVariantCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getFeatures()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getDeepLink()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const-string v0, "KEY_FEATURE_DOWNLOADABLE_DEEPLINK"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeatures()Landroid/os/Bundle;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getFeatures()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getGender()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const-string v0, "KEY_FEATURE_GENDER"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getLocaleCode()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getLocaleCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVariantCode()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->getVariantCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const-string v0, "KEY_FEATURE_VOICE_NAME"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public goToDownloadPage(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->getDeepLink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p0, 0x34000020

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public isBixbyVoice()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const-string v0, "KEY_FEATURE_IS_BIXBY_VOICE"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public isRequiresAuthorization()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const-string v0, "KEY_FEATURE_REQUIRES_AUTHORIZATION"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public isServerTTS()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/texttospeech/VoiceType;->mFeatures:Landroid/os/Bundle;

    const-string v0, "KEY_FEATURE_IS_SERVER_TTS"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method
