.class public Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;
.super Lcom/samsung/android/bixby/service/sdk/common/Options;
.source "SmsKeywordExtractorOptions.java"


# instance fields
.field private mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private mMsgReceivedTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private mMsgType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msgType"
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
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mMsgType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mMsgReceivedTime:J

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgReceivedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mMsgReceivedTime:J

    return-wide v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mMsgType:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setMsgReceivdTime(J)Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mMsgReceivedTime:J

    return-object p0
.end method

.method public setMsgtype(Ljava/lang/String;)Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->mMsgType:Ljava/lang/String;

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
