.class public Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;
.super Ljava/lang/Object;
.source "FaceFeatureInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeadPose"
.end annotation


# instance fields
.field private pitch:D

.field private roll:D

.field private yaw:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->yaw:D

    iput-wide p3, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->pitch:D

    iput-wide p5, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->roll:D

    return-void
.end method


# virtual methods
.method public getPitch()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->pitch:D

    return-wide v0
.end method

.method public getRoll()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->roll:D

    return-wide v0
.end method

.method public getYaw()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->yaw:D

    return-wide v0
.end method

.method public setPitch(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->pitch:D

    return-void
.end method

.method public setRoll(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->roll:D

    return-void
.end method

.method public setYaw(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->yaw:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Yaw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->yaw:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Pitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->pitch:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Roll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->roll:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
