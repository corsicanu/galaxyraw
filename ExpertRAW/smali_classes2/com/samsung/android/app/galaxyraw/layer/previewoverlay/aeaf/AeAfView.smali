.class public Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;
.super Landroid/widget/RelativeLayout;
.source "AeAfView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;
    }
.end annotation


# static fields
.field private static final AE_AF_ALPHA:F = 0.4f

.field private static final AE_AF_MOVE_THRESHOLD:I = 0x6

.field private static final TAG:Ljava/lang/String; = "AeAfView"


# instance fields
.field private final FLING_THRESHOLD:I

.field private mAeAfTouchBoundary:Landroid/graphics/Rect;

.field private mDisableLongPress:Z

.field private mDivideAeAnimation:Landroid/view/animation/Animation;

.field private mDivideAfAnimation:Landroid/view/animation/Animation;

.field private mFocusGuideAnimView:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsLongPress:Z

.field private mIsScaleActive:Z

.field private mOldAeAfPosX:F

.field private mOldAeAfPosY:F

.field private mOrientation:I

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTranslateMatrix:Landroid/graphics/Matrix;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;


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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07022e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->FLING_THRESHOLD:I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mTranslateMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mAeAfTouchBoundary:Landroid/graphics/Rect;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->initView()V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07022e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->FLING_THRESHOLD:I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mTranslateMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mAeAfTouchBoundary:Landroid/graphics/Rect;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsScaleActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDisableLongPress:Z

    return p0
.end method

.method static synthetic access$602(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDisableLongPress:Z

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsLongPress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mOrientation:I

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->FLING_THRESHOLD:I

    return p0
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$us2QCF3y3mMVQ1Eb5rB5oJn1Cac;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$us2QCF3y3mMVQ1Eb5rB5oJn1Cac;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isDivideAeAfAnimationRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private makeDivideAnimation()V
    .locals 9

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mOrientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x7f07001f

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    invoke-direct {v0, v3, v4, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    invoke-direct {v0, v3, v3, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mOrientation:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v1

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v1

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setDividedAeAfLockPosition(Landroid/widget/RelativeLayout;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "posX",
            "posY"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getAeAfFocusWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getAeAfFocusHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070023

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p3, p0

    int-to-float p0, p3

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void
.end method

.method private showTouchAeAfAnimation()V
    .locals 8

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a000b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010066

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3ea3d70a    # 0.32f

    const/high16 v7, 0x3fa00000    # 1.25f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$3;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startFocusGuideAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->focusGuide:Landroid/widget/ImageView;

    const v1, 0x7f080597

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->focusGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mFocusGuideAnimView:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mFocusGuideAnimView:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mFocusGuideAnimView:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mTranslateMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public hideAeAfGroup(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTransparent"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideDivideAeAfLock()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideDivideAeLock()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideDivideAfLock()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideFocusGuideView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mFocusGuideAnimView:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mFocusGuideAnimView:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mFocusGuideAnimView:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->focusGuide:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideObjectTrackingView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public initialize()V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$9ektYRaq7hhw6D8kGfPNPVzwbZs;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$9ektYRaq7hhw6D8kGfPNPVzwbZs;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$HDeUtZgqQbQJfHLeS7W4FLo6_cw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$HDeUtZgqQbQJfHLeS7W4FLo6_cw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAfAeLockBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$yVYddxQC6CwzCSbH88EJjqvM9Tg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$yVYddxQC6CwzCSbH88EJjqvM9Tg;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$8MBwptAw1leLdDc_F7gkE4PCB3o;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$8MBwptAw1leLdDc_F7gkE4PCB3o;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$W8AasMG5I7q911tX_j7DvFTNCgU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/-$$Lambda$AeAfView$W8AasMG5I7q911tX_j7DvFTNCgU;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isFocusGuidVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->focusGuide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$initView$5$AeAfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsScaleActive:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mAeAfTouchBoundary:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mAeAfTouchBoundary:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getVisibility()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onAeAfTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsScaleActive:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDisableLongPress:Z

    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsLongPress:Z

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsLongPress:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsScaleActive:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->onTouchSlider(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onStartEvSliderTouch()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onStopEvSliderTouch()V

    :cond_6
    :goto_0
    return v1

    :cond_7
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_8
    :goto_1
    return v1

    :cond_9
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsScaleActive:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onAeAfTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_b

    :cond_a
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mIsScaleActive:Z

    :cond_b
    return v1

    :cond_c
    :goto_2
    return v0
.end method

.method public synthetic lambda$initialize$0$AeAfView(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onAeAfUnlockButtonClick()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onAeAfLockButtonClick()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initialize$1$AeAfView(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onAeUnlockButtonClick()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->hideDivideAeLock()V

    return-void
.end method

.method public synthetic lambda$initialize$2$AeAfView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onAeAfUnlockButtonClick()V

    return-void
.end method

.method public synthetic lambda$initialize$3$AeAfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onDivideAeAfTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$initialize$4$AeAfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onDivideAeTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mAeAfTouchBoundary:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mAeAfTouchBoundary:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    return-void
.end method

.method public setSupportUiSet(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportUiSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onAeAfRefreshRequested(Ljava/util/EnumSet;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setSupportUi(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setTouchAeAfText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTranslateMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mTranslateMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public showAeAfGroup(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evStep",
            "isAeAfLocked"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setEvSliderStep(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setSelected(Z)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->showAeAfLockAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->showTouchAeAfAnimation()V

    :goto_0
    return-void
.end method

.method public showAeAfLockedIndicator()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onShowAeAfLocked()V

    return-void
.end method

.method public showDivideAeAfAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->isDivideAeAfAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->makeDivideAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAfAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mDivideAeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showDivideAeLock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showDivideAfLock()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showEvSlider()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->hideLockButton()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->hideCircle()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->showEvSlider()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setVisibility(I)V

    return-void
.end method

.method public showFocusGuideView(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->focusGuide:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, v0

    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->focusGuide:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->focusGuide:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->startFocusGuideAnimation()V

    return-void
.end method

.method public translateEvSliderPosition(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boundary"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->translateEvPosition(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateAeAfPosition(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAeAfPosition : x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float p1, p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getAeAfFocusWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    int-to-float p2, p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getAeAfFocusHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mOldAeAfPosX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mOldAeAfPosY:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mOldAeAfPosX:F

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mOldAeAfPosY:F

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, p2

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mAeAfTouchBoundary:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getAeAfFocusWidth()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public updateDivideAeAfLockPosition(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDivideAeAfLockPosition : x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->setDividedAeAfLockPosition(Landroid/widget/RelativeLayout;II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->setDividedAeAfLockPosition(Landroid/widget/RelativeLayout;II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public updateDivideAeLockPosition(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDivideAeLockPosition : x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->setDividedAeAfLockPosition(Landroid/widget/RelativeLayout;II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120192

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public updateDivideAfLockPosition(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDivideAfLockPosition : x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->setDividedAeAfLockPosition(Landroid/widget/RelativeLayout;II)V

    return-void
.end method

.method public updateObjectTrackingRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackingRect",
            "cropRegion",
            "sensorRegion",
            "previewLayoutRect"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateObjectTrackingRect : trackingRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cropRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/util/Util;->getNormalizedMatrix(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object p2

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getWidth()I

    move-result p4

    if-ge p1, p4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getHeight()I

    move-result p4

    if-ge p2, p4, :cond_2

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p4, p4, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    if-ge p1, p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    :cond_0
    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p4, p4, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    if-ge p2, p4, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    :cond_1
    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p4, p4, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, p4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, p4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    iget p2, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    iget p2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateTouchBoundary(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boundary"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTouchBoundary :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mAeAfTouchBoundary:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onBoundaryChanged(Landroid/graphics/Rect;)V

    return-void
.end method
