.class public Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;
.super Lcom/samsung/android/bixby/service/sdk/domain/text/TextBase;
.source "LanguageIdentifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LanguageIdentifier"


# instance fields
.field private mCallback:Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener;

.field private mClientListener:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/TextBase;-><init>()V

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$1;-><init>(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;)V

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->mCallback:Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->notifyResultToClient(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;)Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->mClientListener:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierListener;

    return-object p0
.end method

.method public static createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;

    invoke-direct {v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;-><init>()V

    return-object v0
.end method

.method private notifyResultToClient(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;-><init>(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public identifyLanguage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierOptions;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierListener;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->checkPreConditions(I)I

    move-result v1

    iput-object p3, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->mClientListener:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierListener;

    if-ne v1, v0, :cond_1

    const/4 p3, 0x0

    const/4 v1, 0x0

    const-string v2, "LanguageIdentifier"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierOptions;->getOptions()Lcom/samsung/android/bixby/service/sdk/common/Options;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p2, "options ="

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p3, v3, v1

    invoke-static {v2, p2, v3}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "identifyLanguage in SDK start"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v3}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->getTextService()Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;

    move-result-object p2

    iget-object v3, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->mCallback:Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener;

    invoke-interface {p2, p1, p3, v3}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;->identifyLanguage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageIdentifierListener;)V

    const-string p1, "identifyLanguage in SDK end"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "exception"

    invoke-static {v2, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xc8

    :cond_1
    new-instance p1, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;

    invoke-direct {p1}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;-><init>()V

    invoke-virtual {p1, v1}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;->setResultCode(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->notifyResultToClient(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;)V

    return-void
.end method
