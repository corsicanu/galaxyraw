.class public Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;
.super Ljava/lang/Object;
.source "KeyPhraseExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractOptions"
.end annotation


# instance fields
.field actionType:Ljava/lang/String;

.field extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field language:Ljava/lang/String;

.field requestType:Ljava/lang/String;

.field topK:I

.field userTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$RequestType;Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ActionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$RequestType;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->requestType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ActionType;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->actionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getActionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->actionType:Ljava/lang/String;

    return-object p0
.end method

.method getExtraInfo()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->extraInfo:Ljava/util/Map;

    return-object p0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->language:Ljava/lang/String;

    return-object p0
.end method

.method getRequestType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->requestType:Ljava/lang/String;

    return-object p0
.end method

.method getTopK()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->topK:I

    return p0
.end method

.method getUserTags()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->userTags:Ljava/util/Map;

    return-object p0
.end method

.method public setExtraInfo(Ljava/util/Map;)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->extraInfo:Ljava/util/Map;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setTopK(I)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->topK:I

    return-object p0
.end method

.method public setUserTags(Ljava/util/Map;)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor$ExtractOptions;->userTags:Ljava/util/Map;

    return-object p0
.end method
