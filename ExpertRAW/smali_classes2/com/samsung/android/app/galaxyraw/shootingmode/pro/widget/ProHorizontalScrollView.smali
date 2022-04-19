.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ProHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_STEP:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ProHorizontalScrollView"

.field private static final TEXT_HIDE_ANIMATION_DURATION:I = 0x190

.field private static final TEXT_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TIME_TO_WAIT:I = 0x64


# instance fields
.field private final FADING_EDGE_LENGTH:F

.field private final MAX_FLING_VELOCITY:I

.field private final SIDE_MARGIN:I

.field private mAllLabels:[Ljava/lang/CharSequence;

.field private mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

.field private mClosestImageViewIndex:I

.field private mCurrentX:I

.field private mDisplayedStepCount:I

.field private mHideDisplayedStepInterval:I

.field private mHideOffset:F

.field private mHideStepInterval:I

.field private mImageViewList:[Landroid/widget/ImageView;

.field private mIsAutoMode:Z

.field private mIsFingerOnScreen:Z

.field private mIsScrolling:Z

.field private mItemWidth:I

.field private mLabels:[Ljava/lang/CharSequence;

.field private mMinDisplayedStepDistance:I

.field private mMinDistanceFromCenter:F

.field private mPreviousStep:I

.field private mProScrollerChangeListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;

.field private mRangeBasedDisplayedStepCount:Z

.field private mScrollEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

.field private mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

.field private mScrollToNearestTickRunnable:Ljava/lang/Runnable;

.field private mScrollTop:I

.field private mSliderRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSkipInterval:I

.field private mTextViewIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->TEXT_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

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

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->MAX_FLING_VELOCITY:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->FADING_EDGE_LENGTH:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsFingerOnScreen:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$2;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->MAX_FLING_VELOCITY:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->FADING_EDGE_LENGTH:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsFingerOnScreen:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$2;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsFingerOnScreen:Z

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDistanceFromCenter:F

    return p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->updateLayoutChildViews()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setTextLabelAlpha(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mClosestImageViewIndex:I

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollTop:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    return p0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentX:I

    return p0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentX:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private addItem()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v1

    :goto_0
    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    int-to-float v4, v2

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextSkipInterval:I

    add-int/2addr v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    move v2, v0

    :goto_3
    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v3, v3

    :goto_4
    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    iget-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_5

    :cond_5
    move v5, v0

    :goto_5
    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070273

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->textLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    :cond_6
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0806af

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->imageLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private getAlphaAnimator(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "currentAlpha"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p0, v0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/-$$Lambda$ProHorizontalScrollView$44STAc-AJoaefcG2P2pvzog7zW4;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/-$$Lambda$ProHorizontalScrollView$44STAc-AJoaefcG2P2pvzog7zW4;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/R$styleable;->ProHorizontalScrollView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextSkipInterval:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mHideStepInterval:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mAllLabels:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mHideDisplayedStepInterval:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    const/4 v2, 0x3

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDisplayedStepDistance:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->addItem()V

    return-void
.end method

.method private initScrollViewProperties()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDisplayedStepDistance:I

    if-lez v1, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mHideStepInterval:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mHideOffset:F

    return-void
.end method

.method static synthetic lambda$getAlphaAnimator$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setTextLabelAlpha(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollOrigin"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    int-to-float v7, p1

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mHideOffset:F

    cmpg-float v8, v6, v7

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-gtz v8, :cond_0

    sget-object v8, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->TEXT_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    div-float/2addr v6, v7

    sub-float v6, v10, v6

    invoke-interface {v8, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v10, v6

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0, v5, v10}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getAlphaAnimator(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->FADING_EDGE_LENGTH:F

    cmpl-float v8, v6, v7

    if-lez v8, :cond_1

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_1
    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v9

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    :goto_2
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v4

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private setTickAlpha(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollOrigin"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDistanceFromCenter:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDistanceFromCenter:F

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mClosestImageViewIndex:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->FADING_EDGE_LENGTH:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_1
    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private translateTo(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slotNumber",
            "isSmooth"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    mul-int/2addr v0, p1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method private updateHorizontalView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->imageLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->textLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->addItem()V

    return-void
.end method

.method private updateLayoutChildViews()V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v1, v0, :cond_8

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v6, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-nez v6, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v0, -0x1

    if-ne v1, v7, :cond_3

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_2
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_2
    int-to-float v6, v3

    iget v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mHideOffset:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v6, v0, -0x1

    if-ne v1, v6, :cond_6

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    neg-int v7, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_6
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mHideDisplayedStepInterval:I

    if-eqz v5, :cond_7

    rem-int v5, v1, v5

    if-eqz v5, :cond_7

    if-eq v1, v6, :cond_7

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

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

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->MAX_FLING_VELOCITY:I

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int v1, v1

    :goto_0
    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    :goto_1
    return-void
.end method

.method public isAutoMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    return p0
.end method

.method public synthetic lambda$showAutoModeLayout$1$ProHorizontalScrollView()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->translateTo(IZ)V

    return-void
.end method

.method public synthetic lambda$showManualModeLayout$0$ProHorizontalScrollView(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->translateTo(IZ)V

    return-void
.end method

.method protected onLayout(ZIIII)V
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
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->initScrollViewProperties()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->updateLayoutChildViews()V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    iget-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    const-wide/16 v0, 0x64

    if-nez p3, :cond_0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentX:I

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollTop:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDistanceFromCenter:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mClosestImageViewIndex:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerChangeListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    if-nez p2, :cond_2

    int-to-float p2, p1

    iget p4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean p4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length p4, p4

    :goto_0
    sub-int/2addr p4, p3

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    if-eq p3, p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerChangeListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    invoke-virtual {p4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    add-int/2addr p4, p2

    invoke-interface {p3, p4}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;->onScrollChanged(I)V

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setTextLabelAlpha(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setTickAlpha(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->smoothScrollBy(II)V

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsFingerOnScreen:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsFingerOnScreen:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;->onScrollStart()V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resetSlider()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->translateTo(IZ)V

    return-void
.end method

.method public setProScrollerChangeListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerChangeListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;

    return-void
.end method

.method public setScrollEventListener(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollEventListener:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    return-void
.end method

.method public showAutoModeLayout()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->textLinearLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/-$$Lambda$ProHorizontalScrollView$gBEpyM97DJbxRAJVCOWYj7KYbDY;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/-$$Lambda$ProHorizontalScrollView$gBEpyM97DJbxRAJVCOWYj7KYbDY;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showManualModeLayout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->textLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/-$$Lambda$ProHorizontalScrollView$_r-w1xlBUfAwYhw_EubCClXsHE0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/-$$Lambda$ProHorizontalScrollView$_r-w1xlBUfAwYhw_EubCClXsHE0;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLabelViews(Landroid/util/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    invoke-virtual {v0, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mAllLabels:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->updateHorizontalView()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->initScrollViewProperties()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->updateLayoutChildViews()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProHorizontalScrollViewBinding;->textLinearLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView$3;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
