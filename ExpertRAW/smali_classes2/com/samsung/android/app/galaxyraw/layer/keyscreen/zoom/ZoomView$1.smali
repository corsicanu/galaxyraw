.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;
.super Ljava/lang/Object;
.source "ZoomView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->initializeLensButtonBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

.field final synthetic val$blackAreaBottomPosition:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$blackAreaBottomPosition"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;->val$blackAreaBottomPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;->val$blackAreaBottomPosition:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setLensButtonBackground(I)V

    return-void
.end method
