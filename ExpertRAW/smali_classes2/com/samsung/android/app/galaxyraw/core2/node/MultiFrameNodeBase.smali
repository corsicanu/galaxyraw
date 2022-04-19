.class public abstract Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;
.super Lcom/samsung/android/app/galaxyraw/core2/node/Node2;
.source "MultiFrameNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$EffectType;
    }
.end annotation


# instance fields
.field private mCurrentCount:I

.field private mCurrentYuvCount:I

.field private mMaxInputCount:I

.field private mMaxYuvInputCount:I


# direct methods
.method protected constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "nodeTag",
            "maxCount"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;ZI)V

    return-void
.end method

.method protected constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "nodeTag",
            "hasNativeNode"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentYuvCount:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->INPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->setCoreInterface(Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;)V

    return-void
.end method

.method protected constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "nodeTag",
            "hasNativeNode",
            "maxCount"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentYuvCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentYuvCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentYuvCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentYuvCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxYuvInputCount:I

    return p0
.end method


# virtual methods
.method public getCurrentCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    return p0
.end method

.method public getCurrentYuvCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentYuvCount:I

    return p0
.end method

.method public getMaxInputCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    return p0
.end method

.method public getMaxYuvInputCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxYuvInputCount:I

    return p0
.end method

.method public isMaxInputCount()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMaxYuvInputCount()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentYuvCount:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxYuvInputCount:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reconfigure(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initParam"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentYuvCount:I

    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node2;->release()V

    return-void
.end method

.method protected resetCurrentCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mCurrentCount:I

    return-void
.end method

.method public setMaxInputCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCount"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxInputCount:I

    return-void
.end method

.method public setMaxYuvInputCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxYuvCount"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->mMaxYuvInputCount:I

    return-void
.end method
