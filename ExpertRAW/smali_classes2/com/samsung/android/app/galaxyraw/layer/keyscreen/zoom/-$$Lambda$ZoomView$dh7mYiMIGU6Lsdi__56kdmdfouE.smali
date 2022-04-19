.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$dh7mYiMIGU6Lsdi__56kdmdfouE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$dh7mYiMIGU6Lsdi__56kdmdfouE;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$dh7mYiMIGU6Lsdi__56kdmdfouE;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->lambda$refreshLensButton$5$ZoomView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
