.class public Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorOptions;
.super Lcom/samsung/android/bixby/service/sdk/common/Options;
.source "LanguageTranslatorOptions.java"


# instance fields
.field private mFromLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fromLanguage"
    .end annotation
.end field

.field private mToLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toLanguage"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/Options;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorOptions;->mFromLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getToLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorOptions;->mToLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setFromLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorOptions;->mFromLanguage:Ljava/lang/String;

    return-void
.end method

.method public setToLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorOptions;->mToLanguage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
