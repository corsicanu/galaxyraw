.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ProControlPanelView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelScrollListener;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelSmoothScroller;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProControlPanelView"


# instance fields
.field private final MAX_ITEM_SPACE:I

.field private final MIN_ITEM_SPACE:I

.field private mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

.field private mControlPanelEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;

.field private mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

.field private mHandler:Landroid/os/Handler;

.field private mIsListScrollingByScroller:Z

.field private mItemDecoration:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

.field private mOrientation:I

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

.field private mPreviousCollapseItemSpace:I

.field private mPreviousItemPosition:I

.field private mProItemIdsPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemPosition:I

.field private mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

.field private mSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

.field private final mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070261

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->MIN_ITEM_SPACE:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->MAX_ITEM_SPACE:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSelectedItemPosition:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPreviousItemPosition:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->COLLAPSE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPreviousCollapseItemSpace:I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070261

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->MIN_ITEM_SPACE:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07025c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->MAX_ITEM_SPACE:I

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSelectedItemPosition:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPreviousItemPosition:I

    sget-object p2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->COLLAPSE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPreviousCollapseItemSpace:I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsListScrollingByScroller:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsListScrollingByScroller:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSelectedItemPosition:I

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPreviousItemPosition:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->MIN_ITEM_SPACE:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->MAX_ITEM_SPACE:I

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->startMarginAdjustAnimator(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Landroidx/recyclerview/widget/LinearSnapHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    return-object p0
.end method

.method private cancelMarginAdjustAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private enableViewHolder(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method private scrollList(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "isNeedToScroll"
        }
    .end annotation

    if-nez p2, :cond_0

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSelectedItemPosition:I

    if-eq p2, p1, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsListScrollingByScroller:Z

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollList(I)V

    :cond_1
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSelectedItemPosition:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPreviousItemPosition:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSelectedItemPosition:I

    return-void
.end method

.method private startMarginAdjustAnimator(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->cancelMarginAdjustAnimator()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$Uuw4n7W01JAhrz5K3LArToCgCeo;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$Uuw4n7W01JAhrz5K3LArToCgCeo;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0025

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mMarginAdjustAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updatePadding()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->EXPAND:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070260

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07025c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07026c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    const/16 v4, -0x5a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    add-int/2addr v1, v0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setPadding(IIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setItemClickListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V

    return-void
.end method

.method public disableButton(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setEnabled(IZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->enableViewHolder(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12039e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enableButton(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setEnabled(IZ)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->enableViewHolder(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12039e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public initialize()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setHasFixedSize(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setClipToPadding(Z)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelScrollListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelScrollListener;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setOverScrollMode(I)V

    new-instance v0, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelSmoothScroller;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$2;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onInitialize()V

    return-void
.end method

.method public isSelected(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->isSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onItemClick$0$ProControlPanelView(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;->onControlPanelItemSelected(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic lambda$onItemClick$1$ProControlPanelView(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public synthetic lambda$scrollToHideResetButton$2$ProControlPanelView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->getItemSpace()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->MAX_ITEM_SPACE:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->startMarginAdjustAnimator(II)V

    return-void
.end method

.method public synthetic lambda$startMarginAdjustAnimator$3$ProControlPanelView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->setItemSpace(I)V

    return-void
.end method

.method public onItemClick(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mIsListScrollingByScroller:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->COLLAPSE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->EXPAND:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->updateControlPanelState(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$imNqb7vmRGnNs2b6jMtaQUORO-E;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$imNqb7vmRGnNs2b6jMtaQUORO-E;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;->onControlPanelItemSelected(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V

    :goto_0
    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$d8zBALPDaait26bkaqYU9kpO_yA;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$d8zBALPDaait26bkaqYU9kpO_yA;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mOrientation:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->EXPAND:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->updatePadding()V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mSelectedItemPosition:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->scrollList(I)V

    :cond_2
    return-void
.end method

.method public scrollToHideResetButton(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$X5KCi0alk5J8ZGqWQs2dP0U9cDY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelView$X5KCi0alk5J8ZGqWQs2dP0U9cDY;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    const-string v0, "ProControlPanelView"

    const-string v1, "adapter set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setItemClickListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setButtonText(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "text"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setText(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(ILjava/lang/String;)V

    return-void
.end method

.method public setButtonText(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "text",
            "subText"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setText(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSubText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(ILjava/lang/String;)V

    return-void
.end method

.method public setButtonValueState(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "isDefaultValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setButtonValueState(IZ)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(IZ)V

    return-void
.end method

.method public setControlPanelEventListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;

    return-void
.end method

.method public setItemChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setItemChanged(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "text"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proItemId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProControlPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public setItemChanged(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "isDefaultValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public setItemData(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proItemId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProControlPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getFocusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setButtonText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setItemProperty(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "isSubTextSupported",
            "isSlideAnimationSupported"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setSubTextSupported(IZ)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setSlideAnimationSupported(IZ)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "presenter"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    return-void
.end method

.method public setProItemColor(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "titleColor",
            "textColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setTextColor(II)V

    :cond_0
    return-void
.end method

.method public setProItemIdsPositionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemIdsPositionList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    return-void
.end method

.method public setSubTextColor(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setSubTextColor(I)V

    :cond_0
    return-void
.end method

.method public slideItemButtonText()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->EXPAND:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getTextSlideDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mAdapter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->setTextSlideDirection(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mProItemIdsPositionList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->slideTextAnimation(I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->setItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateControlPanelState(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlPanelState"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->EXPAND:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->getItemSpace()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPreviousCollapseItemSpace:I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mItemDecoration:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelState:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->COLLAPSE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mPreviousCollapseItemSpace:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->MAX_ITEM_SPACE:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->setItemSpace(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->updatePadding()V

    return-void
.end method

.method public updateResetButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->mControlPanelEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ControlPanelEventListener;->onResetButtonEnabled(Z)V

    return-void
.end method
