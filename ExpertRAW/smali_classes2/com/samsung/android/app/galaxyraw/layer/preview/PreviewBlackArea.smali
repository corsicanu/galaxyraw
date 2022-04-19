.class public Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;
.super Landroid/widget/RelativeLayout;
.source "PreviewBlackArea.java"


# static fields
.field private static final COMPENSATION_MARGIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreviewBlackArea"


# instance fields
.field private mIsFirstEntry:Z

.field private mIsPendingAnimation:Z

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;


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

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mIsFirstEntry:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->initView()V

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mIsFirstEntry:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    return-void
.end method

.method static synthetic lambda$startAreaAnimation$0(ZLandroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setHeight(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "size"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private setWidth(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "size"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private startAreaAnimation(Landroid/view/View;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "start",
            "end",
            "isVertical"
        }
    .end annotation

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    const-string v0, "PreviewBlackArea"

    const-string v1, "startAreaAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ge p2, p3, :cond_1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b000a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewBlackArea$MiD6qwMlQwKqUtENVL-ueJuS6vU;

    invoke-direct {p2, p4, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewBlackArea$MiD6qwMlQwKqUtENVL-ueJuS6vU;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public isPendingAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mIsPendingAnimation:Z

    return p0
.end method

.method public setPendingAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mIsPendingAnimation:Z

    return-void
.end method

.method public setPendingSize(Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewLayoutRect"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mIsPendingAnimation:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->leftArea:Landroid/view/View;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->setWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->rightArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->getMeasuredWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->setWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->topArea:Landroid/view/View;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->setHeight(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->bottomArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->getMeasuredHeight()I

    move-result v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method public startAreaAnimation(Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPreviewRect"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mIsPendingAnimation:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startHorizontalAreaAnimation(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startVerticalAreaAnimation(Landroid/graphics/Rect;)V

    return-void
.end method

.method public startHorizontalAreaAnimation(Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPreviewRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->leftArea:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->leftArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startAreaAnimation(Landroid/view/View;IIZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->rightArea:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->rightArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->getMeasuredWidth()I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startAreaAnimation(Landroid/view/View;IIZ)V

    return-void
.end method

.method public startVerticalAreaAnimation(Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPreviewRect"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mIsFirstEntry:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->topArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->bottomArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->getMeasuredHeight()I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->topArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->bottomArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mIsFirstEntry:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->topArea:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->topArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startAreaAnimation(Landroid/view/View;IIZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->bottomArea:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/PreviewAnimationBlackAreaBinding;->bottomArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->getMeasuredHeight()I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    add-int/2addr v3, v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startAreaAnimation(Landroid/view/View;IIZ)V

    :goto_0
    return-void
.end method
