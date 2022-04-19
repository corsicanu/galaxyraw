.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$niDSHbLaaJH4GfEQjFcB9hDYhgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$niDSHbLaaJH4GfEQjFcB9hDYhgA;->f$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$niDSHbLaaJH4GfEQjFcB9hDYhgA;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$niDSHbLaaJH4GfEQjFcB9hDYhgA;->f$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$niDSHbLaaJH4GfEQjFcB9hDYhgA;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->lambda$startSwitchFacingAnimation$4$PreviewAnimationLayerView(ILandroid/animation/ValueAnimator;)V

    return-void
.end method
