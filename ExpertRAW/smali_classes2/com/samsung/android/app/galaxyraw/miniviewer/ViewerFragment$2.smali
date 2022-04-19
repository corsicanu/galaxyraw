.class Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;
.super Ljava/lang/Object;
.source "ViewerFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->initializeViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$200(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->isMarkedForDelete()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->isMarkedForDelete()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2$1;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "f",
            "j"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$402(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;I)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$700(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;IZ)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$800(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;I)V

    return-void
.end method
