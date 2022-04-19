.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$5;
.super Ljava/lang/Object;
.source "ZoomView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->lambda$updateZoomText$7(I)V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$5;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$5;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    sub-int/2addr p4, p2

    int-to-float p2, p4

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$5;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->updatePosition(FF)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$5;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
