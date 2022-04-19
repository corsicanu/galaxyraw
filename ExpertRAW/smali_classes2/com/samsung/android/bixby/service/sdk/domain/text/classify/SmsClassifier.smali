.class public Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;
.super Lcom/samsung/android/bixby/service/sdk/domain/text/TextBase;
.source "SmsClassifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsClassifier"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/TextBase;-><init>()V

    return-void
.end method

.method public static createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;

    invoke-direct {v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;-><init>()V

    return-object v0
.end method


# virtual methods
.method public classifyMessage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierOptions;)Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierResult;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;->checkPreConditions(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "SmsClassifier"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierOptions;->getOptions()Lcom/samsung/android/bixby/service/sdk/common/Options;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p2, "options ="

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {v3, p2, v4}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "classifyMessage in SDK start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, p2, v4}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/classify/SmsClassifier;->getTextService()Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;->classifyMessage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    const-string p1, "classifyMessage in SDK end"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    const-string p1, "classifyMessage Result:"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/common/Result;->getResultData()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-static {v3, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class p1, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/Result;->convertResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "exception"

    invoke-static {v3, p0, p1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xc8

    :cond_2
    :goto_2
    new-instance p0, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierResult;

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierResult;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/bixby/service/sdk/common/text/classify/SmsClassifierResult;->setResultCode(I)V

    return-object p0
.end method
