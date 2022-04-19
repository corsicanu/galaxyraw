.class public Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;
.super Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;
.source "Word.java"


# instance fields
.field protected tokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->tokenList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToken(Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->tokenList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->tokenList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->tokenList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTokenList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->tokenList:Ljava/util/List;

    return-object p0
.end method

.method public indexOf(Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;)I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->tokenList:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->tokenList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->getPosition()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->getPosition()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->getRawText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;->getRawText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setTokenList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/text/bnlp/Token;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->tokenList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/Word;->rawText:Ljava/lang/String;

    return-object p0
.end method
