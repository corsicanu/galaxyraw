.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ShootingModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShootingModeScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onScrolled$0$ShootingModeListView$ShootingModeScrollListener(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$1300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/LastViewScrollChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$1300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/LastViewScrollChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/LastViewScrollChangeListener;->onLastViewScrollChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onScrolled$1$ShootingModeListView$ShootingModeScrollListener(Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;->shootingModeItemButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListButton;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListButton;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$1200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$302(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;Z)Z

    const/4 p2, -0x1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$900(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Landroidx/recyclerview/widget/LinearSnapHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)I

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$402(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;I)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$1000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;I)V

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter$ViewHolder;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$1100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter$ViewHolder;)V

    :cond_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->getAlpha()F

    move-result p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$ShootingModeScrollListener$LYf_pA4vgH6vpfBdI8lsDpp6Ui8;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$ShootingModeScrollListener$LYf_pA4vgH6vpfBdI8lsDpp6Ui8;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p2, -0x1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$900(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Landroidx/recyclerview/widget/LinearSnapHelper;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter$ViewHolder;

    if-nez p3, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v0, p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$1100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter$ViewHolder;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)I

    move-result p1

    if-eq p2, p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$502(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;I)I

    iget-object p1, p3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$ShootingModeScrollListener$91URfrVsfCPK3oagUqFDxBXGS1Q;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeListView$ShootingModeScrollListener$91URfrVsfCPK3oagUqFDxBXGS1Q;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$ShootingModeScrollListener;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method
