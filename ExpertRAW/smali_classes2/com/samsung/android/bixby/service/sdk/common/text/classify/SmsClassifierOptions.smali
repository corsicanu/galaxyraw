.class public Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierOptions;
.super Lcom/samsung/android/bixby/service/sdk/common/Options;
.source "SmsClassifierOptions.java"


# instance fields
.field private mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/Options;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierOptions;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierOptions;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierOptions;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierOptions;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
