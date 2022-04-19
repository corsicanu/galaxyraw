.class public Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;
.super Landroid/widget/FrameLayout;
.source "PreviewAnimationLayerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;
.implements Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewLayerView"


# instance fields
.field private mBlurImageAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

.field private mLastVerticalDirection:I

.field private mNormalImageAnimator:Landroid/animation/ValueAnimator;

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;

.field private mSnapShotTaken:Z

.field private mStartShutterAnimator:Landroid/animation/ValueAnimator;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;


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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mLastVerticalDirection:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->initView(Landroid/content/Context;)V

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mLastVerticalDirection:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->resetVariable()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    return-object p0
.end method

.method private addBlurImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "previewRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private addNormalImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "previewRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

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

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "previewRect"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v1, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private hidePreviewChangeBlurAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$hbA--GJPUOnZ4TPdJZ0nI1M5ddM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$hbA--GJPUOnZ4TPdJZ0nI1M5ddM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hideSwitchFacingBlurAnimation(Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mNormalImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$BgOH_r4gYlNbMXXHLcKDooYxIyM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$BgOH_r4gYlNbMXXHLcKDooYxIyM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$3;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewLayerView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetVariable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mSnapShotTaken:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    return-void
.end method

.method private setInitialProperty(Landroid/view/View;FFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "distance",
            "scaleX",
            "scaleY",
            "alpha",
            "rotationX"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p6}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

.method private startPreviewChangeAnimation()V
    .locals 8

    const-string v0, "PreviewLayerView"

    const-string v1, "startPreviewChangeAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->setInitialProperty(Landroid/view/View;FFFFF)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->setInitialProperty(Landroid/view/View;FFFFF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$0cDdY6nGK7-PY-nJ7gSGgi-4q4c;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$0cDdY6nGK7-PY-nJ7gSGgi-4q4c;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startSwitchFacingAnimation()V
    .locals 11

    const-string v0, "PreviewLayerView"

    const-string v1, "startSwitchFacingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mLastVerticalDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackBg:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mNormalImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v5, v3, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->setInitialProperty(Landroid/view/View;FFFFF)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v5, v3, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    const v7, 0x3f333333    # 0.7f

    const v8, 0x3f333333    # 0.7f

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->setInitialProperty(Landroid/view/View;FFFFF)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mNormalImageAnimator:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mNormalImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineEaseOut;

    invoke-direct {v3}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mNormalImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$niDSHbLaaJH4GfEQjFcB9hDYhgA;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$niDSHbLaaJH4GfEQjFcB9hDYhgA;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mNormalImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$5;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$drBivoq59CQ-V-E3wM6U57s7q8s;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$drBivoq59CQ-V-E3wM6U57s7q8s;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mNormalImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateViewProperty(Landroid/view/View;FFFF)V
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
            "view",
            "scaleX",
            "scaleY",
            "alpha",
            "rotationX"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method


# virtual methods
.method public cancelAllAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mBlurImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mNormalImageAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public cancelPreviewAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->resetVariable()V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public hidePreviewAnimation(Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mSnapShotTaken:Z

    const-string v1, "PreviewLayerView"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Return, don\'t have a snapshot. Current animation type is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation - HidePreviewAnimation : Start["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GalaxyRaw/CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePreviewAnimation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$PreviewAnimationLayerManager$PreviewAnimationType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->resetVariable()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->hidePreviewChangeBlurAnimation()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->startPendingAreaAnimation(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->hideSwitchFacingBlurAnimation(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public isPreviewAnimationRequested()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$hidePreviewChangeBlurAnimation$1$PreviewAnimationLayerView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$hideSwitchFacingBlurAnimation$2$PreviewAnimationLayerView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startPreviewChangeAnimation$3$PreviewAnimationLayerView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startShutterAnimation$0$PreviewAnimationLayerView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->shutterBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$startSwitchFacingAnimation$4$PreviewAnimationLayerView(ILandroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v0

    sub-float v5, v1, p2

    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float v6, p2, p1

    move-object v1, p0

    move v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->updateViewProperty(Landroid/view/View;FFFF)V

    return-void
.end method

.method public synthetic lambda$startSwitchFacingAnimation$5$PreviewAnimationLayerView(ILandroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v1, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v4

    const v0, 0x3f333333    # 0.7f

    add-float v3, p2, v0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, v4

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float v5, p2, p1

    move-object v0, p0

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->updateViewProperty(Landroid/view/View;FFFF)V

    return-void
.end method

.method public onPreviewSnapShotError()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mSnapShotTaken:Z

    return-void
.end method

.method public onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    const-string v0, "PreviewLayerView"

    const-string v1, "onPreviewSnapShotTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mSnapShotTaken:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V

    return-void
.end method

.method public preparePausedPreviewSnapshot()V
    .locals 2

    const-string v0, "PreviewLayerView"

    const-string v1, "onPreparePausedPreviewSnapshotRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;->onPreparePausedPreviewSnapshotRequested()V

    return-void
.end method

.method public requestPreviewAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestPreviewAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;->onPreviewAnimationRequested(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V

    return-void
.end method

.method public setPendingArea(Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->isPendingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->setPendingSize(Landroid/graphics/Rect;)V

    :cond_0
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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;

    return-void
.end method

.method public setVerticalDirection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mLastVerticalDirection:I

    return-void
.end method

.method public showResumeCameraAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;->onShowResumeCameraAnimationRequested()V

    return-void
.end method

.method public startAreaAnimation(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewLayoutRect"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startAreaAnimation(Landroid/graphics/Rect;)V

    return-void
.end method

.method public startAreaAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previousPreviewRect",
            "previewLayoutRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->setPendingAnimation()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startVerticalAreaAnimation(Landroid/graphics/Rect;)V

    :cond_3
    :goto_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_6

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_7

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->setPendingAnimation()V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startHorizontalAreaAnimation(Landroid/graphics/Rect;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public startPendingAreaAnimation(Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->isPendingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;->startAreaAnimation(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public startPreviewAnimation(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "facing",
            "previewRect"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPreviewAnimation: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PreviewLayerView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->addNormalImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->addBlurImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$PreviewAnimationLayerManager$PreviewAnimationType:[I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mCurrentAnimationType:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->startPreviewChangeAnimation()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->startSwitchFacingAnimation()V

    :goto_0
    return-void
.end method

.method public startShutterAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$eR1AUum5NwbAOWiAdNhdDRbLHmE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerView$eR1AUum5NwbAOWiAdNhdDRbLHmE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->mStartShutterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method
