.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;->f$1:F

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;->f$1:F

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;->f$2:F

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->lambda$startBaseLineAnimation$15$ZoomView(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
