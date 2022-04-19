.class public Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;
.super Lcom/samsung/android/bixby/service/sdk/domain/text/TextBase;
.source "LanguageTranslator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LanguageTranslator"


# instance fields
.field private mCallback:Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener;

.field private mClientListener:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/TextBase;-><init>()V

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$1;-><init>(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;)V

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->mCallback:Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->notifyResultToClient(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;)Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->mClientListener:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorListener;

    return-object p0
.end method

.method public static createInstance()Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;

    invoke-direct {v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;-><init>()V

    return-object v0
.end method

.method private notifyResultToClient(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;-><init>(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorOptions;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorListener;)V
    .locals 4

    const-string v0, "LanguageTranslator"

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->checkPreConditions(I)I

    move-result v2

    iput-object p3, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->mClientListener:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorListener;

    if-ne v2, v1, :cond_1

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorOptions;->getOptions()Lcom/samsung/android/bixby/service/sdk/common/Options;

    move-result-object p2

    const-string v2, "options ="

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, p3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "translateLanguage in SDK start"

    new-array v3, p3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->getTextService()Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->mCallback:Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener;

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/bixby/service/sdk/common/text/ITextService;->translateLanguage(Ljava/lang/String;Lcom/samsung/android/bixby/service/sdk/common/Options;Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener;)V

    const-string p1, "translateLanguage in SDK end"

    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, p3

    const-string p1, "exception"

    invoke-static {v0, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xc8

    goto :goto_0

    :cond_0
    const/16 v2, 0x12c

    :cond_1
    :goto_0
    new-instance p1, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;

    invoke-direct {p1}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;-><init>()V

    invoke-virtual {p1, v2}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;->setResultCode(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->notifyResultToClient(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V

    return-void
.end method
