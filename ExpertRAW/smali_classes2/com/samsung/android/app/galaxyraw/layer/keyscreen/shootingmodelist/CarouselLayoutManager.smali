.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager$CenterItemReachMaxSizeListener;
    }
.end annotation


# instance fields
.field private mCenterItemReachMaxSizeListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager$CenterItemReachMaxSizeListener;

.field private final mContext:Landroid/content/Context;

.field private mIsScrollEnabled:Z

.field private mPreviousRatio:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mPreviousRatio:F

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private changePositionLeftSide(IF)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "centerPosition",
            "centerPercent"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v3, v1, [I

    add-int/lit8 v4, p1, -0x1

    move v5, v4

    :goto_1
    if-ltz v5, :cond_5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    const v7, 0x7f0a0275

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    if-ne v5, v4, :cond_3

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-direct {p0, v6, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getTranslationLeftSideView(Landroid/view/View;[I[I)F

    move-result v8

    add-int/lit8 v9, p1, -0x2

    if-ne v5, v9, :cond_4

    sub-float/2addr v7, p2

    :cond_4
    mul-float/2addr v8, v7

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private changePositionRightSide(IF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "centerPosition",
            "centerPercent"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    move p2, v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    const v7, 0x7f0a0275

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    if-nez v4, :cond_3

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-direct {p0, v6, v4, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getTranslationRightSideView(Landroid/view/View;Landroid/view/View;[I[I)F

    move-result v4

    add-int/lit8 v8, p1, 0x2

    if-ne v5, v8, :cond_4

    sub-float/2addr v7, p2

    :cond_4
    mul-float/2addr v4, v7

    invoke-virtual {v6, v4}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    add-int/lit8 v5, v5, 0x1

    move-object v4, v6

    goto :goto_0

    :cond_5
    return-void
.end method

.method private getTranslationLeftSideView(Landroid/view/View;[I[I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentView",
            "previousLocation",
            "currentLocation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070453

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aget p2, p2, v0

    aget p3, p3, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    add-int/2addr p3, v0

    sub-int/2addr p2, p3

    int-to-float p2, p2

    :goto_1
    sub-float/2addr p2, p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    aget p3, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    aget p2, p2, v1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    goto :goto_1

    :cond_1
    aget p2, p2, v1

    aget p3, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    add-float/2addr p2, p0

    return p2
.end method

.method private getTranslationRightSideView(Landroid/view/View;Landroid/view/View;[I[I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentView",
            "previousView",
            "previousLocation",
            "currentLocation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070453

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aget p4, p4, v0

    aget p3, p3, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_0
    add-int/2addr p3, p2

    sub-int/2addr p4, p3

    int-to-float p2, p4

    :goto_1
    sub-float/2addr p0, p2

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    aget p3, p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p3, p2

    aget p2, p4, v1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    goto :goto_1

    :cond_1
    aget p4, p4, v1

    aget p3, p3, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mIsScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recycler",
            "state"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "child",
            "rect",
            "immediate",
            "focusedChildVisible"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "recycler",
            "state"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07044d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07044f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    div-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    int-to-float v2, v2

    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;->shootingModeItemLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    new-instance v5, Landroid/util/Range;

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;->shootingModeItemLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLeft()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;->shootingModeItemLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getRight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iget-object v6, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;->shootingModeItemLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 p3, 0x3f000000    # 0.5f

    sub-float/2addr v4, p3

    const/4 p3, 0x0

    invoke-static {p3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr p2, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;->shootingModeItem:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;->shootingModeItem:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object p2, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutListItemBinding;->shootingModeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->changePositionLeftSide(IF)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->changePositionRightSide(IF)V

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mPreviousRatio:F

    invoke-static {p2, v4}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mCenterItemReachMaxSizeListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager$CenterItemReachMaxSizeListener;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object p3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$JyYkSfUVenev5pqVnvBQBlIYfaE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$JyYkSfUVenev5pqVnvBQBlIYfaE;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iput v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mPreviousRatio:F

    return p1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return p1

    :cond_5
    return v1
.end method

.method public setCenterItemReachMaxSizeListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager$CenterItemReachMaxSizeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mCenterItemReachMaxSizeListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager$CenterItemReachMaxSizeListener;

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollEnable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->mIsScrollEnabled:Z

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "state",
            "position"
        }
    .end annotation

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager$1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/CarouselLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
