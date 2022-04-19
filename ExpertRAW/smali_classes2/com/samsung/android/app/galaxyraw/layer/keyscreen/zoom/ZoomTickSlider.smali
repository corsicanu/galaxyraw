.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;
.super Landroid/widget/LinearLayout;
.source "ZoomTickSlider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomTickSlider"

.field private static final UNSET_VALUE:I = -0x1


# instance fields
.field private final mBarRangeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentHapticIndex:I

.field private mInsideMargin:I

.field private mNormalBarResource:I

.field private mShortcutBarResource:I


# direct methods
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

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mCurrentHapticIndex:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    const/4 p3, -0x1

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mCurrentHapticIndex:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addBarImageView(II)Landroid/widget/ImageView;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "margin"
        }
    .end annotation

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private addShortcutBarImageView(Landroid/util/SparseIntArray;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "centerPosArray",
            "resourceId",
            "margin",
            "zoomLevel"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->addBarImageView(II)Landroid/widget/ImageView;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;

    invoke-direct {p3, p0, p1, p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;Landroid/util/SparseIntArray;I)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    if-eqz p2, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/R$styleable;->ZoomTickSlider:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mNormalBarResource:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mShortcutBarResource:I

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mInsideMargin:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method addBarRangeData()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070213

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Range;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->clearBarRangeArray()V

    return-void
.end method

.method public clearBarRangeArray()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$wi8ip0QCYRrVsLskCJe319WywbE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$wi8ip0QCYRrVsLskCJe319WywbE;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getHapticPattern(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollX"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mCurrentHapticIndex:I

    if-eq v1, p1, :cond_1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mCurrentHapticIndex:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070214

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->ZOOM_SLIDER_LARGE_TICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mCurrentHapticIndex:I

    return-object v0
.end method

.method public initialize(Ljava/util/List;Ljava/util/Map;)Landroid/util/SparseIntArray;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shortcutData",
            "barCountMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseIntArray;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mNormalBarResource:I

    const/4 v1, 0x0

    const-string v2, "ZoomTickSlider"

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mShortcutBarResource:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Map of zoom bar is empty."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->removeAllViews()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mShortcutBarResource:I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->addShortcutBarImageView(Landroid/util/SparseIntArray;III)V

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$NmIYISD6QG_A_y1z9dYpVwK9dAI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$NmIYISD6QG_A_y1z9dYpVwK9dAI;

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$SB-djCi28AJ3KU-8_FvwFjnme_Y;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$SB-djCi28AJ3KU-8_FvwFjnme_Y;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/util/SparseIntArray;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_2
    :goto_0
    const-string p0, "Resource id is wrong."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public synthetic lambda$addShortcutBarImageView$3$ZoomTickSlider(Landroid/util/SparseIntArray;ILandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getPaddingLeft()I

    move-result p3

    sub-int p3, p4, p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getPaddingLeft()I

    move-result p0

    sub-int/2addr p4, p0

    invoke-virtual {p1, p2, p4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p4, p3

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mInsideMargin:I

    add-int/2addr p4, p0

    invoke-virtual {p1, p2, p4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initialize$0$ZoomTickSlider(I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mNormalBarResource:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mInsideMargin:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->addBarImageView(II)Landroid/widget/ImageView;

    return-void
.end method

.method public synthetic lambda$initialize$1$ZoomTickSlider(Landroid/util/SparseIntArray;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$nVGad7beKzJHCcv8wb-fV9fXYrU;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$nVGad7beKzJHCcv8wb-fV9fXYrU;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;)V

    invoke-interface {p3, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    iget p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mShortcutBarResource:I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->mInsideMargin:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->addShortcutBarImageView(Landroid/util/SparseIntArray;III)V

    return-void
.end method

.method public synthetic lambda$initialize$2$ZoomTickSlider(Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/util/SparseIntArray;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Landroid/util/Range;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p2, p4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$vRV8KNNU7lyx8zR2AVKK8EuIkXM;

    invoke-direct {p2, p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$vRV8KNNU7lyx8zR2AVKK8EuIkXM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;Landroid/util/SparseIntArray;Ljava/lang/Integer;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
