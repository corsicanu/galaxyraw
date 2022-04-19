.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$1;
.super Ljava/lang/Object;
.source "PreviewOverlayLayerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->updateLayoutBounds(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

.field final synthetic val$previewRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$previewRect"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$1;->val$previewRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$1;->val$previewRect:Landroid/graphics/Rect;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/Rect;)V

    return-void
.end method
