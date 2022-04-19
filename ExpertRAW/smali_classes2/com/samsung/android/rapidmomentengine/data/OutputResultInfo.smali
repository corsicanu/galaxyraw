.class public Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;
.super Ljava/lang/Object;
.source "OutputResultInfo.java"


# instance fields
.field private mIsAccepted:Z

.field private mRejectedEngineName:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRejectedEngineName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->mRejectedEngineName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->mTimestamp:J

    return-wide v0
.end method

.method public isAccepted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->mIsAccepted:Z

    return p0
.end method

.method setIsAccepted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->mIsAccepted:Z

    return-void
.end method

.method setRejectedEngineName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->mRejectedEngineName:Ljava/lang/String;

    return-void
.end method

.method setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/rapidmomentengine/data/OutputResultInfo;->mTimestamp:J

    return-void
.end method
