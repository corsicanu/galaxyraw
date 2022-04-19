.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ZoomHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ZoomScrollViewAccessibilityDelegate;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ScrollEventListener;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;
    }
.end annotation


# static fields
.field private static final FLING_STRENGTH:F = 0.28f

.field private static final TIME_TO_WAIT:I = 0x32


# instance fields
.field private mAccessibilityScrollActionListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;

.field private mCurrentScrollX:I

.field private mIsIgnoreScrollEvent:Z

.field private mScrollEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ScrollEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mIsIgnoreScrollEvent:Z

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mCurrentScrollX:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mIsIgnoreScrollEvent:Z

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mCurrentScrollX:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mAccessibilityScrollActionListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;

    return-object p0
.end method

.method private checkScrollEnd()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mCurrentScrollX:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomHorizontalScrollView$iydGlJQmIqfSAOao7Mf3br09C-U;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomHorizontalScrollView$iydGlJQmIqfSAOao7Mf3br09C-U;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ZoomScrollViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ZoomScrollViewAccessibilityDelegate;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocityX"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mScrollEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ScrollEventListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$kJgyWUR3GRZu3pzDdnBoojqu6MI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$kJgyWUR3GRZu3pzDdnBoojqu6MI;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    int-to-float p1, p1

    const v0, 0x3e8f5c29    # 0.28f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->checkScrollEnd()V

    return-void
.end method

.method public getMaxScrollAmount()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1

    :cond_1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result p0

    return p0
.end method

.method public isIgnoreScrollEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mIsIgnoreScrollEvent:Z

    return p0
.end method

.method public isScrollLeftEnd()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrollRightEnd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getMaxScrollAmount()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$checkScrollEnd$0$ZoomHorizontalScrollView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mCurrentScrollX:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mScrollEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ScrollEventListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ScrollEventListener;->onScrollEnd()V

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mCurrentScrollX:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->checkScrollEnd()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAccessibilityScrollActionListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mAccessibilityScrollActionListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;

    return-void
.end method

.method public setIgnoreScrollEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isIgnoreScrollEvent"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mIsIgnoreScrollEvent:Z

    return-void
.end method

.method public setScrollEventListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ScrollEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mScrollEventListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ScrollEventListener;

    return-void
.end method

.method public stopFling()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->mCurrentScrollX:I

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->fling(I)V

    return-void
.end method
