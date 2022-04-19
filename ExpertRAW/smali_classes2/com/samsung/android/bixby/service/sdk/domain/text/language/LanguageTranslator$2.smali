.class Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;
.super Ljava/lang/Object;
.source "LanguageTranslator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->notifyResultToClient(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;

.field final synthetic val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;

    iput-object p2, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;->val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;->val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;->getResultCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;->val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;

    invoke-virtual {v2}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;->getTranslatedText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "LanguageTranslator"

    const-string v2, "LanguageTranslatorResult ="

    invoke-static {v1, v2, v0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;

    invoke-static {v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->access$100(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;)Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;

    invoke-static {v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;->access$100(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator;)Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageTranslator$2;->val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;

    invoke-interface {v0, p0}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorListener;->onLanguageTranslated(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageTranslatorResult;)V

    :cond_1
    return-void
.end method
