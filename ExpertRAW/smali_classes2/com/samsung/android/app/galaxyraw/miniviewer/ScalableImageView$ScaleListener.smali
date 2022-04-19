.class Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ScalableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$332(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$302(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v0, v4}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$302(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F

    div-float v0, v4, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$800(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v5

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$802(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$700(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$900(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1, v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$902(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$1002(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onImageZoomStateChanged(Z)V

    const-string v1, "0191"

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$700(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$1000(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1, v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$1002(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$902(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onImageZoomStateChanged(Z)V

    const-string v1, "0192"

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$702(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;F)F

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$1100(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result p1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1, v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$802(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->fitToScreen()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onImageZoomStateChanged(Z)V

    :cond_6
    return v5
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$1200(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$1302(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;I)I

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->fitToScreen()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;)Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;->onImageZoomStateChanged(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$802(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$902(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ScaleListener;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->access$1002(Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;Z)Z

    return-void
.end method
