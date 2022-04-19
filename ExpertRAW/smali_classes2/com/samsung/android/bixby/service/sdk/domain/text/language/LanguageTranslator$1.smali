.class Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$1;
.super Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener$Stub;
.source "LanguageTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;


# direct methods
.method constructor <init>(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/text/ILanguageTranslatorListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageTranslated(Lcom/samsung/android/bixby/service/sdk/common/Result;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/bixby/service/sdk/common/Result;->getResultData()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "LanguageTranslator"

    const-string v2, "Result:"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v0, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;

    invoke-virtual {p1, v0}, Lcom/samsung/android/bixby/service/sdk/common/Result;->convertResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;

    invoke-direct {p1}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;->setResultCode(I)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;

    invoke-static {p0, p1}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->access$000(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V

    return-void
.end method
