.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;
.super Ljava/lang/Object;
.source "ZoomSliderMagneticScrollHelper.java"


# instance fields
.field private mAreaStartValueArray:Landroid/util/SparseIntArray;

.field private final mContext:Landroid/content/Context;

.field private mInitialLocation:I

.field private mInitialScrollX:I

.field private mIsScrollBlocked:Z

.field private mOrientation:I

.field private mPreviousScrollValue:I

.field private mScrollBlockScrollValue:I


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mPreviousScrollValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mScrollBlockScrollValue:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkScrollBlock(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollValue"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mPreviousScrollValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mAreaStartValueArray:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mAreaStartValueArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    new-instance v1, Landroid/util/Range;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mAreaStartValueArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mAreaStartValueArray:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mPreviousScrollValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le p1, v3, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mIsScrollBlocked:Z

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mScrollBlockScrollValue:I

    return p1

    :cond_2
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p1, v3, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mIsScrollBlocked:Z

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mScrollBlockScrollValue:I

    :cond_3
    :goto_0
    return p1
.end method

.method private getLocationOnScreen(Landroid/view/MotionEvent;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "width"
        }
    .end annotation

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mOrientation:I

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_0

    int-to-float p0, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr p0, p1

    :goto_0
    float-to-int p0, p0

    return p0

    :cond_0
    const/16 p2, -0x5a

    if-ne p0, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    goto :goto_0
.end method

.method private getNextScrollValue(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollValue"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mIsScrollBlocked:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mScrollBlockScrollValue:I

    add-int v2, v1, v0

    const/4 v3, 0x0

    if-le p1, v2, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mIsScrollBlocked:Z

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mInitialLocation:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mInitialLocation:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mPreviousScrollValue:I

    goto :goto_0

    :cond_1
    sub-int v2, v1, v0

    if-ge p1, v2, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mIsScrollBlocked:Z

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mInitialLocation:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mInitialLocation:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mPreviousScrollValue:I

    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic lambda$lLyRaMCfil66Y_u4ZaM16C9fTnI(Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mAreaStartValueArray:Landroid/util/SparseIntArray;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomSliderMagneticScrollHelper$lLyRaMCfil66Y_u4ZaM16C9fTnI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomSliderMagneticScrollHelper$lLyRaMCfil66Y_u4ZaM16C9fTnI;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method getScrollValue(Landroid/view/MotionEvent;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "width"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mInitialLocation:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->getLocationOnScreen(Landroid/view/MotionEvent;I)I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mInitialScrollX:I

    add-int/2addr p1, v0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mAreaStartValueArray:Landroid/util/SparseIntArray;

    if-nez p2, :cond_0

    return p1

    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mIsScrollBlocked:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->getNextScrollValue(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->checkScrollBlock(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mPreviousScrollValue:I

    return p1
.end method

.method initialize(Landroid/view/MotionEvent;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "scrollX",
            "width"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mIsScrollBlocked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mPreviousScrollValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mScrollBlockScrollValue:I

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->getLocationOnScreen(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mInitialLocation:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mInitialScrollX:I

    return-void
.end method

.method onOrientationChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mOrientation:I

    return-void
.end method

.method setAreaStartValueArray(Landroid/util/SparseIntArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "areaStartValueArray"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->mAreaStartValueArray:Landroid/util/SparseIntArray;

    return-void
.end method
