.class public Lcom/samsung/android/view/animation/Elastic50;
.super Ljava/lang/Object;
.source "Elastic50.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private amplitude:F

.field private period:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/view/animation/Elastic50;->amplitude:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/samsung/android/view/animation/Elastic50;->period:F

    return-void
.end method

.method private out(FFF)F
    .locals 9

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    cmpl-float v1, p3, p0

    if-nez v1, :cond_2

    const p3, 0x3e99999a    # 0.3f

    :cond_2
    cmpl-float p0, p2, p0

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz p0, :cond_4

    cmpg-float p0, p2, v0

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v3, p3

    div-double/2addr v3, v1

    div-float/2addr v0, p2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float p0, v3

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 p0, 0x40800000    # 4.0f

    div-float p0, p3, p0

    move p2, v0

    :goto_1
    float-to-double v3, p2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/high16 p2, -0x3ee00000    # -10.0f

    mul-float/2addr p2, p1

    float-to-double v7, p2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-float/2addr p1, p0

    float-to-double p0, p1

    mul-double/2addr p0, v1

    float-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, p0

    double-to-float p0, v3

    return p0
.end method


# virtual methods
.method public getAmplitude()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/view/animation/Elastic50;->amplitude:F

    return p0
.end method

.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/samsung/android/view/animation/Elastic50;->amplitude:F

    iget v1, p0, Lcom/samsung/android/view/animation/Elastic50;->period:F

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/view/animation/Elastic50;->out(FFF)F

    move-result p0

    return p0
.end method

.method public getPeriod()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/view/animation/Elastic50;->period:F

    return p0
.end method
