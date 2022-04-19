.class public Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "KeyPhraseExtractRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@KeyPhraseExtractRunnable"


# instance fields
.field private mOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

.field private mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;->getTextContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->getRequestType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "requestType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->getActionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "actionType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->getUserTags()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "userTags"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->getExtraInfo()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "extraInfo"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->getTopK()I

    move-result v2

    const-string v3, "topK"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mText:Ljava/lang/String;

    const-string v3, "string"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://com.samsung.android.scs.ai.text"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "getKeyPhrase"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ScsApi@KeyPhraseExtractRunnable"

    if-nez v0, :cond_0

    const-string v0, "KeyPhraseExtractor.extract(). ContentResolver result is null!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v0, Lcom/samsung/android/sdk/scs/base/ResultException;

    const/4 v1, 0x5

    const-string v2, "ContentResolver result is null"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string v2, "resultCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-eq v2, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected resultCode!!! resultCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    if-ne v2, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v1, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v0, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_2
    const-string v2, "phraseTextList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "phraseScoreArray"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    if-eqz v2, :cond_6

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    array-length v5, v0

    if-eq v3, v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected size!!! : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v0, Lcom/samsung/android/sdk/scs/base/ResultException;

    const-string v1, "list size mismatched"

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    new-instance v5, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;

    invoke-direct {v5}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;->setString(Ljava/lang/String;)V

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;->setScore(D)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null!! keyPhraseTextList: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", keyPhraseScoreArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v0, Lcom/samsung/android/sdk/scs/base/ResultException;

    const-string v1, "bundle content is null"

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_TEXT_GET_KEY_PHRASE"

    return-object p0
.end method

.method public setOptions(Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mOptions:Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->getLanguage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->setLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractRunnable;->mText:Ljava/lang/String;

    return-void
.end method
