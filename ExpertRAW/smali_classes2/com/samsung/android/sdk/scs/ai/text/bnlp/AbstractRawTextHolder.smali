.class public abstract Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;
.super Ljava/lang/Object;
.source "AbstractRawTextHolder.java"


# instance fields
.field protected position:I

.field protected rawText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->rawText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->rawText:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->position:I

    return-void
.end method


# virtual methods
.method public endPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->position:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->length()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->position:I

    return p0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->rawText:Ljava/lang/String;

    return-object p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->rawText:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->position:I

    return-void
.end method

.method public setRawText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->rawText:Ljava/lang/String;

    return-void
.end method

.method public subRawText(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->rawText:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public subRawText(II)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/AbstractRawTextHolder;->rawText:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
