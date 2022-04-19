.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DofMultiInfo"
.end annotation


# static fields
.field public static final DOF_MULTI_DATA_INDEX_FOCUSED:I = 0x3

.field public static final DOF_MULTI_DATA_INDEX_GOAL_POS:I = 0x1

.field public static final DOF_MULTI_DATA_INDEX_MODE:I = 0x0

.field public static final DOF_MULTI_DATA_INDEX_RELIABILITY:I = 0x2

.field public static final DOF_MULTI_INFO_INDEX_COLUMN:I = 0x0

.field public static final DOF_MULTI_INFO_INDEX_ROW:I = 0x1

.field public static final DOF_MULTI_INFO_INDEX_USAGE:I = 0x2


# instance fields
.field private mAfState:Ljava/lang/Integer;

.field private mDofMultiData:[I

.field private mDofMultiInfo:[I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "afState",
            "dofMultiInfo",
            "dofMultiData"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->mAfState:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->mDofMultiInfo:[I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->mDofMultiData:[I

    return-void
.end method

.method public static isDofMultiInfoCallbackRequired(Ljava/lang/Integer;[I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "afMode",
            "dofMultiInfo"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x2

    aget p0, p1, p0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAfState()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->mAfState:Ljava/lang/Integer;

    return-object p0
.end method

.method public getDofMultiData()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->mDofMultiData:[I

    return-object p0
.end method

.method public getDofMultiInfo()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->mDofMultiInfo:[I

    return-object p0
.end method
