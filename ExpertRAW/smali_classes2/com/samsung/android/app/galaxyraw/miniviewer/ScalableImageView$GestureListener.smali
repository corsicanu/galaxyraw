.class Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScalableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$202(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->fitToScreen()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onImageZoomStateChanged(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$200(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onUpdateViewVisibilityRequested(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$302(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$702(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onImageZoomStateChanged(Z)V

    :goto_0
    return v2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$200(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$202(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$200(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onUpdateViewVisibilityRequested(Z)V

    return v1
.end method
