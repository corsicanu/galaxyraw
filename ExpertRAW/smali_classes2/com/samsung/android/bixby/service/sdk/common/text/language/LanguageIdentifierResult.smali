.class public Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;
.super Lcom/samsung/android/bixby/service/sdk/common/Result;
.source "LanguageIdentifierResult.java"


# instance fields
.field private mDetectedLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;->mDetectedLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;->mDetectedLanguage:Ljava/lang/String;

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
