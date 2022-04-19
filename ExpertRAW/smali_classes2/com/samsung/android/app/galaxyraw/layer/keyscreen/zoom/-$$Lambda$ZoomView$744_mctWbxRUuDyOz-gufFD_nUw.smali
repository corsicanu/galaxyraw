.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$744_mctWbxRUuDyOz-gufFD_nUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$744_mctWbxRUuDyOz-gufFD_nUw;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$744_mctWbxRUuDyOz-gufFD_nUw;->f$0:Z

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->lambda$cancelValueAnimator$8(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
