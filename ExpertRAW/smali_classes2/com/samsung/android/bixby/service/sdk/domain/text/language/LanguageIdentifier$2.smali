.class Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;
.super Ljava/lang/Object;
.source "LanguageIdentifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->notifyResultToClient(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;

.field final synthetic val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;

    iput-object p2, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;->val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;->val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;->getResultCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;->val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;

    invoke-virtual {v2}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;->getLanguage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "LanguageIdentifier"

    const-string v2, "Language Identifier detected language ="

    invoke-static {v1, v2, v0}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;

    invoke-static {v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->access$100(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;)Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;

    invoke-static {v0}, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;->access$100(Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier;)Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/text/language/LanguageIdentifier$2;->val$result:Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;

    invoke-interface {v0, p0}, Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierListener;->onLanguageIdentified(Lcom/samsung/android/bixby/service/sdk/common/text/language/LanguageIdentifierResult;)V

    :cond_1
    return-void
.end method
