.class public Lcom/samsung/android/app/galaxyraw/util/interpolator/QuintOut80;
.super Landroid/view/animation/BaseInterpolator;
.source "QuintOut80.java"


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/QuintOut80;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f37ced9    # 0.718f
        0x3f5851ec    # 0.845f
    .end array-data

    :array_1
    .array-data 4
        0x3f5851ec    # 0.845f
        0x3f7f7cee    # 0.998f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/util/interpolator/QuintOut80;->segments:[[F

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result p0

    return p0
.end method
