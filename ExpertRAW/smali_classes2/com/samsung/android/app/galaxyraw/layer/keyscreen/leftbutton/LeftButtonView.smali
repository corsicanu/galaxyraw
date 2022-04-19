.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;
.super Landroid/widget/FrameLayout;
.source "LeftButtonView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;


# static fields
.field private static TAG:Ljava/lang/String; = "LeftButtonView"

.field private static final THUMBNAIL_IMAGE_BUFFER:I = 0xa


# instance fields
.field private mAttachMode:Z

.field private mIndexNewThumbnail:I

.field private mIsCurrentRecordingMode:Z

.field private mIsPause:Z

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

.field private mQuickViewThumbnailAnimator:Landroid/animation/ValueAnimator;

.field private mQuickViewThumbnailLoader:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

.field private mThumbnailImage:[Landroid/widget/ImageView;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mAttachMode:Z

    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIndexNewThumbnail:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIsPause:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mAttachMode:Z

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIndexNewThumbnail:I

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIsPause:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private enableButtonMoveAnimation()V
    .locals 2

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private getTranslationBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "bitmap"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->getRotation()F

    move-result v2

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v4

    const/4 v4, 0x0

    if-nez v2, :cond_0

    neg-float p0, p1

    invoke-virtual {v1, p2, v4, p0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->getRotation()F

    move-result p0

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpl-float p0, p0, v2

    if-nez p0, :cond_1

    invoke-virtual {v1, p2, v4, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2, p1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-object v0
.end method

.method private handlePauseButtonClick()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIsPause:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;->onResumeButtonClick()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->button:Landroid/widget/ImageButton;

    const v1, 0x7f0806a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIsPause:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;->onPauseButtonClick()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->button:Landroid/widget/ImageButton;

    const v1, 0x7f08061a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIsPause:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    return-void
.end method

.method static synthetic lambda$startQuickViewThumbnailAnimation$7(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private startQuickViewThumbnailAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "nextImageView",
            "bitmap",
            "isScaleAnimationRequired"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    new-array p4, v0, [F

    fill-array-data p4, :array_1

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0044

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p4, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;

    invoke-direct {v0, p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$TRHM4XqyIk5Q2k-52BMgtY8f39o;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$t4MecQ_ARXiq3aKP92lQxDmifIo;

    invoke-direct {p4, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$t4MecQ_ARXiq3aKP92lQxDmifIo;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public cancelAllAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->setQuickViewThumbnailLoadListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->release()V

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->leftButtonLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;->getQuickViewThumbnailLoader()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->setQuickViewThumbnailLoadListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader$QuickViewThumbnailLoadListener;)V

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIndexNewThumbnail:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->quickViewButtonLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->setRecordSnapshotSupported(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->getRecordSnapshotSupported()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->button:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$MZiAxvfsX3smJSIlCaw9Ha-aoOU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$MZiAxvfsX3smJSIlCaw9Ha-aoOU;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->button:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$ontcKrL7mk0TWZoXKazysdeu-QI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$ontcKrL7mk0TWZoXKazysdeu-QI;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->enableButtonMoveAnimation()V

    return-void
.end method

.method public isRecordingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIsCurrentRecordingMode:Z

    return p0
.end method

.method public synthetic lambda$initialize$0$LeftButtonView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;->onSnapShotButtonClick()V

    return-void
.end method

.method public synthetic lambda$initialize$1$LeftButtonView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->handlePauseButtonClick()V

    return-void
.end method

.method public synthetic lambda$startQuickViewThumbnailAnimation$6$LeftButtonView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->getTranslationBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$updateButton$2$LeftButtonView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->button:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$updateButton$3$LeftButtonView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->quickViewButtonLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$updateQuickViewThumbnail$4$LeftButtonView(Landroid/graphics/Bitmap;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->loadQuickViewThumbnail(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method public synthetic lambda$updateQuickViewThumbnail$5$LeftButtonView()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;->loadQuickViewThumbnail()V

    return-void
.end method

.method public onQuickViewThumbnailEmpty()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIndexNewThumbnail:I

    aget-object v1, v1, v2

    const v2, 0x7f0806a2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIndexNewThumbnail:I

    aget-object p0, v1, p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->bringToFront()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update - QuickViewThumbnail : End["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "UpdateQuickViewThumbnail"

    invoke-static {p0, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    return-void
.end method

.method public onQuickViewThumbnailLoaded(Landroid/graphics/Bitmap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "isScaleAnimationRequired"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIndexNewThumbnail:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mThumbnailImage:[Landroid/widget/ImageView;

    array-length v3, v2

    rem-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIndexNewThumbnail:I

    aget-object v0, v2, v0

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->startQuickViewThumbnailAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public registerAssistantMenu()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;->onRegisterAssistantMenu()V

    return-void
.end method

.method public setAttachMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachMode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mAttachMode:Z

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    return-void
.end method

.method public setRecordingMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecordingMode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIsCurrentRecordingMode:Z

    return-void
.end method

.method public updateButton(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mIsCurrentRecordingMode:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f0b0045

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->button:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->quickViewButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut80;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$Qt-PKQYzH1Ie7KV0n7_K-02I7Mw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$Qt-PKQYzH1Ie7KV0n7_K-02I7Mw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->quickViewButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->quickViewButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut80;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$f5F7Ycxj0fIsLTMuv4wcjnGUl7k;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$f5F7Ycxj0fIsLTMuv4wcjnGUl7k;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateQuickViewThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$XQ78No8lvr3onpchpnhl_4hVZIA;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$XQ78No8lvr3onpchpnhl_4hVZIA;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateQuickViewThumbnail(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "orientation",
            "isScaleAnimationRequired"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->mQuickViewThumbnailLoader:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;Landroid/graphics/Bitmap;IZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
