.class public Lcom/samsung/android/sdk/scs/ai/text/category/DocumentSimilarity;
.super Ljava/lang/Object;
.source "DocumentSimilarity.java"


# instance fields
.field private isSimilar:Z

.field private similarityScore:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lcom/samsung/android/sdk/scs/ai/text/category/DocumentSimilarity;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentSimilarity;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentSimilarity;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getScore()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentSimilarity;->similarityScore:D

    return-wide v0
.end method

.method public isSimilar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentSimilarity;->isSimilar:Z

    return p0
.end method

.method public setScore(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentSimilarity;->similarityScore:D

    return-void
.end method

.method public setSimilarity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentSimilarity;->isSimilar:Z

    return-void
.end method
