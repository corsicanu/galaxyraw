.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->reduceArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$4;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$4;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$4;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$4;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomShortcutHide()V

    :cond_0
    return-void
.end method
