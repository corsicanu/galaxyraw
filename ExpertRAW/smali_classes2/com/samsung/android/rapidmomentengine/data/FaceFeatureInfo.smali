.class public Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;
.super Ljava/lang/Object;
.source "FaceFeatureInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;,
        Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;,
        Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;
    }
.end annotation


# static fields
.field public static final NO_RESULT:I = -0x1


# instance fields
.field private blinkStatus:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

.field private expression:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

.field private headPose:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;->EXP_DEFAULT:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->expression:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    sget-object v0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;->NO_STATUS:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->blinkStatus:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    new-instance v0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;-><init>(DDD)V

    iput-object v0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->headPose:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    return-void
.end method


# virtual methods
.method public getBlinkStatus()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->blinkStatus:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    return-object p0
.end method

.method public getExpression()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->expression:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    return-object p0
.end method

.method public getHeadpose()Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->headPose:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    return-object p0
.end method

.method public setBlinkStatus(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->blinkStatus:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    return-void
.end method

.method public setExpression(Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->expression:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    return-void
.end method

.method public setHeadpose(DDD)V
    .locals 8

    new-instance v7, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;-><init>(DDD)V

    iput-object v7, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->headPose:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blink : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->blinkStatus:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$BlinkStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Expression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->expression:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$ExpressionType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Headpose: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo;->headPose:Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;

    invoke-virtual {p0}, Lcom/samsung/android/rapidmomentengine/data/FaceFeatureInfo$HeadPose;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
