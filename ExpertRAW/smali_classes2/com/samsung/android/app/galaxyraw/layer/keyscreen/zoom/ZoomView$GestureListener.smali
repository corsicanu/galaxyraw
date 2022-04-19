.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;
.super Ljava/lang/Object;
.source "ZoomView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# static fields
.field private static final FLING_PERCENT:F = 0.7f


# instance fields
.field private mEnableScrollList:Z

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->mEnableScrollList:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$900(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    neg-float p1, p3

    const p2, 0x3f333333    # 0.7f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->fling(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSliderShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_LONG_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onSALogStartToZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->cancelZoomLevelAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->extendArea()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$1000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getWidth()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->initialize(Landroid/view/MotionEvent;II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onScrollStart()V

    :cond_3
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->mEnableScrollList:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$1100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSliderShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->SCREEN_TOUCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onSALogStartToZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isAnimationFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->cancelZoomLevelAnimation()V

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->mEnableScrollList:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->extendArea()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$1000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getWidth()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->initialize(Landroid/view/MotionEvent;II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onScrollStart()V

    :cond_5
    :goto_0
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$1200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method
