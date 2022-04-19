.class Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2$1;
.super Ljava/lang/Object;
.source "ViewerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2$1;->this$1:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    const-string v0, "ViewerFragment"

    const-string v1, "onGlobalLayout: Delete is complete."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2$1;->this$1:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->releaseClickBlock()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2$1;->this$1:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
