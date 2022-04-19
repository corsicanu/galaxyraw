.class public Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;
.super Lcom/samsung/android/bixby/service/sdk/common/Result;
.source "ImageBoundaryDetectorResult.java"


# instance fields
.field private mBoundaries:Landroid/graphics/Rect;

.field private mChildBoundariesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRectType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundaries()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;->mBoundaries:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getChildBoundariesList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;->mChildBoundariesList:Ljava/util/List;

    return-object p0
.end method

.method public getRectType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;->mRectType:I

    return p0
.end method

.method public setBoundaries(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;->mBoundaries:Landroid/graphics/Rect;

    return-void
.end method

.method public setChildBoundariesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;->mChildBoundariesList:Ljava/util/List;

    return-void
.end method

.method public setRectType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;->mRectType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
