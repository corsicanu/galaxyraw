.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewOverlayLayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->moveQrRectView(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

.field final synthetic val$newRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/RectF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$newRect"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$2;->val$newRect:Landroid/graphics/RectF;

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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$2;->val$newRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method
