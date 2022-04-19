.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "QuickSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSettingButtonDecoration"
.end annotation


# instance fields
.field private final mIsMainMenu:Z

.field private mItemAlign:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

.field private final mItemWidth:I

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "itemWidth",
            "isMainMenu"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->START:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemAlign:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemWidth:I

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mIsMainMenu:Z

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->setItemAlign(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->getQuickSettingItemInterval(II)I

    move-result p0

    return p0
.end method

.method private getQuickSettingItemInitialPosX(IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "quickSettingWidth",
            "numOfItems",
            "itemSize",
            "interval"
        }
    .end annotation

    mul-int/2addr p3, p2

    sub-int/2addr p1, p3

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, p4

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemAlign:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->END:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    if-ne p2, p3, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemAlign:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->CENTER:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    if-ne p0, p2, :cond_1

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getQuickSettingItemInterval(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "quickSettingWidth",
            "numOfItems"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemAlign:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->END:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0702a3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mIsMainMenu:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0702a0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemWidth:I

    mul-int/2addr p0, p2

    sub-int/2addr p1, p0

    int-to-float p0, p1

    sub-int/2addr p2, v0

    int-to-float p1, p2

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private setItemAlign(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->START:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemAlign:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->getQuickSettingItemInterval(II)I

    move-result v2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p3

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->mItemWidth:I

    invoke-direct {p0, p3, v0, v4, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->getQuickSettingItemInitialPosX(IIII)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    move v2, v3

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iget p3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v2

    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    invoke-virtual {p1, p2, p0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
