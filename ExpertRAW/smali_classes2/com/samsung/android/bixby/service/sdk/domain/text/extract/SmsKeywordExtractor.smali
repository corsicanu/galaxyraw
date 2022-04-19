.class public Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;
.super Lcom/samsung/android/bixby/service/sdk/domain/text/TextBase;
.source "SmsKeywordExtractor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsKeywordExtractor"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/TextBase;-><init>()V

    return-void
.end method

.method public static createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;

    invoke-direct {v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;-><init>()V

    return-object v0
.end method


# virtual methods
.method public extractMessageKeywords(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;)Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorResult;
    .locals 5

    const-string v0, "SmsKeywordExtractor"

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;->checkPreConditions(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorOptions;->getOptions()Lcom/samsung/android/bixby/service/sdk/common/Options;

    move-result-object p2

    const-string v3, "extractMessageKeywords in SDK start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/extract/SmsKeywordExtractor;->getTextService()Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;->extractMessageKeywords(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    const-string p1, "extractMessageKeywords in SDK response "

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    const-string p1, "extractMessageKeywords Result data "

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/common/Result;->getResultData()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class p1, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/Result;->convertResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "exception"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xc8

    goto :goto_1

    :cond_1
    const/16 p0, 0x12c

    :goto_0
    move v2, p0

    :cond_2
    :goto_1
    new-instance p0, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorResult;

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorResult;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/bixby/service/sdk/common/text/extract/SmsKeywordExtractorResult;->setResultCode(I)V

    return-object p0
.end method
