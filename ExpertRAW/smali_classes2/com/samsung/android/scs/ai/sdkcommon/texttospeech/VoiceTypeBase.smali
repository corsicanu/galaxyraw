.class public Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;
.super Ljava/lang/Object;
.source "VoiceTypeBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_FEATURE_DOWNLOADABLE_DEEPLINK:Ljava/lang/String; = "KEY_FEATURE_DOWNLOADABLE_DEEPLINK"

.field public static final KEY_FEATURE_GENDER:Ljava/lang/String; = "KEY_FEATURE_GENDER"

.field public static final KEY_FEATURE_IS_BIXBY_VOICE:Ljava/lang/String; = "KEY_FEATURE_IS_BIXBY_VOICE"

.field public static final KEY_FEATURE_IS_SERVER_TTS:Ljava/lang/String; = "KEY_FEATURE_IS_SERVER_TTS"

.field public static final KEY_FEATURE_REQUIRES_AUTHORIZATION:Ljava/lang/String; = "KEY_FEATURE_REQUIRES_AUTHORIZATION"

.field public static final KEY_FEATURE_UID:Ljava/lang/String; = "KEY_FEATURE_UID"

.field public static final KEY_FEATURE_VOICE_NAME:Ljava/lang/String; = "KEY_FEATURE_VOICE_NAME"

.field private static final LOCALE_DELIMITER:Ljava/lang/String; = "-"


# instance fields
.field protected mFeatures:Landroid/os/Bundle;

.field protected mIsAvailable:Z

.field protected mLocale:Ljava/util/Locale;

.field protected mVariantCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase$1;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase$1;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mIsAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mVariantCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mFeatures:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mIsAvailable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mIsAvailable:Z

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mVariantCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mLocale:Ljava/util/Locale;

    iput-object p3, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mFeatures:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFeatures()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mFeatures:Landroid/os/Bundle;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getLocaleCode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVariantCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mVariantCode:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mIsAvailable:Z

    return p0
.end method

.method public setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mIsAvailable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mVariantCode:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mFeatures:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "[%s-%s-%s][%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mVariantCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mFeatures:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/texttospeech/VoiceTypeBase;->mIsAvailable:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
