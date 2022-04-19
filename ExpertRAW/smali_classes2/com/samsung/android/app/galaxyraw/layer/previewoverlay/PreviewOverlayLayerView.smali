.class public Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PreviewOverlayLayerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;


# static fields
.field private static final GUIDE_LINE_LINE_DIVIDE_FACTOR:I = 0x3

.field private static final MULTI_AF_ALPHA:F = 0.65f

.field private static final TAG:Ljava/lang/String; = "PreviewOverlayLayerView"


# instance fields
.field private mIsInclinometerEnable:Z

.field private mIsLevelMeterEnable:Z

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

.field private mPrevQrRect:Landroid/graphics/RectF;

.field private mTranslateMatrix:Landroid/graphics/Matrix;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;


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

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mIsInclinometerEnable:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mIsLevelMeterEnable:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewOverlayLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mIsInclinometerEnable:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mIsLevelMeterEnable:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewOverlayLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->updateAeAfTouchBoundary(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private moveQrRectView(Landroid/graphics/RectF;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v8, v0, v7

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v10, v0, v9

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$PreviewOverlayLayerView$iSWJSRsEfyRvFjpPNTjl9tYZJIQ;

    move-object v1, v11

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$PreviewOverlayLayerView$iSWJSRsEfyRvFjpPNTjl9tYZJIQ;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;FFFFFFFF)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setQrRectView(Landroid/graphics/RectF;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showQrRectView()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/ElasticCustom;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/ElasticCustom;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$PreviewOverlayLayerView$jh1C5fjJdPtyhjNVVm4yhzrNmBY;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$PreviewOverlayLayerView$jh1C5fjJdPtyhjNVVm4yhzrNmBY;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$PreviewOverlayLayerView$_iqhIyqaefkzucXxNrk7gFSfQ_c;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$PreviewOverlayLayerView$_iqhIyqaefkzucXxNrk7gFSfQ_c;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$PreviewOverlayLayerView$3HZTF-qmQu7eAjvaeH8-hJVUlNY;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$PreviewOverlayLayerView$3HZTF-qmQu7eAjvaeH8-hJVUlNY;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startBottomBackgroundAnimation(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "translationY",
            "duration"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateAeAfTouchBoundary(Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/Guideline;->getBottom()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->updateTouchBoundary(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Guideline;->getTop()I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Guideline;->getBottom()I

    move-result p0

    invoke-direct {v1, v2, v3, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->updateTouchBoundary(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public enableBottomBackground(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public enableFaceRectView(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->resetFaceRectView()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->enableFaceRectView(Z)V

    return-void
.end method

.method public enableInclinometerView(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mIsInclinometerEnable:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->inclinometer:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;->hide()V

    :cond_0
    return-void
.end method

.method public enableLevelMeterView(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mIsLevelMeterEnable:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->levelMeter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->hideLevelMeter()V

    :cond_0
    return-void
.end method

.method public enableMultiAfView(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMultiAfView enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewOverlayLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->reset()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->inclinometer:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->setVisibility(I)V

    return-void
.end method

.method public getFaceCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getFaceCount()I

    move-result p0

    return p0
.end method

.method public hideAeAfView()V
    .locals 2

    const-string v0, "PreviewOverlayLayerView"

    const-string v1, "hideAeAfView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->hideAeAfGroup(Z)V

    return-void
.end method

.method public hideFaceRectView()V
    .locals 2

    const-string v0, "PreviewOverlayLayerView"

    const-string v1, "hideFaceRectView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->hideFaceRect(Z)V

    return-void
.end method

.method public hideMultiAfView()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->hide()V

    return-void
.end method

.method public hidePalmRect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->palmRectangle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->palmRectangle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->palmRectangle:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public hideQrRectView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    return-void
.end method

.method public hideRecordingAfLockedIndicator()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;->createAeAfPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->initialize()V

    return-void
.end method

.method public synthetic lambda$moveQrRectView$0$PreviewOverlayLayerView(FFFFFFFFLandroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p4, p2

    add-float/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p6, p2

    add-float/2addr p5, p6

    float-to-int p2, p5

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p8, p2

    add-float/2addr p7, p8

    float-to-int p2, p7

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic lambda$showQrRectView$1$PreviewOverlayLayerView(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public synthetic lambda$showQrRectView$2$PreviewOverlayLayerView(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public synthetic lambda$showQrRectView$3$PreviewOverlayLayerView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->qrcodeRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->onOrientationChanged(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->inclinometer:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;->onOrientationChanged(I)V

    return-void
.end method

.method public refreshAeAfProperty(Ljava/util/EnumSet;)V
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->setSupportUiSet(Ljava/util/EnumSet;)V

    return-void
.end method

.method public requestAeAfTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public resetBottomBackground(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600d7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/16 v0, 0x96

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->startBottomBackgroundAnimation(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public resetFaceRectView()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->resetFaceRect()V

    return-void
.end method

.method public setBottomBackgroundPosition(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "top",
            "duration"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->startBottomBackgroundAnimation(II)V

    return-void
.end method

.method public setFaceRectAutoHideEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->setFaceRectAutoHideEnabled(Z)V

    return-void
.end method

.method public setFaceRectColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->setFaceRectColor(I)V

    return-void
.end method

.method public setFaceRectThickness(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thickness"
        }
    .end annotation

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->setTranslateMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : End["

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

    const-string v1, "PreviewOverlayLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    return-void
.end method

.method public showAeAfLockedIndicator()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->aeAf:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->showAeAfLockedIndicator()V

    return-void
.end method

.method public showMultiAfView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->setVisibility(I)V

    return-void
.end method

.method public updateAccelerationValue(FFFLandroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curAccelerationX",
            "curAccelerationY",
            "curAccelerationZ",
            "previewLayoutRect"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mIsInclinometerEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->inclinometer:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;->updateAccelerationValue(FFF)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->inclinometer:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;->isVisibleCondition(FFF)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->setAlpha(F)V

    :cond_1
    iget-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mIsLevelMeterEnable:Z

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->levelMeter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->updateAccelerationValue(FFLandroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public updateFaceRect([Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faces"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->updateFaceRect([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public updateGuideLineSize(Landroid/graphics/Rect;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewRect",
            "isVisible"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->guideLineView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->guideLineView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->guideLineView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->guideLineView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->levelMeter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->levelMeter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->levelMeter:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;->reset()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->inclinometer:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->inclinometer:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->inclinometer:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;->reset()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateLayoutBounds(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->updateFaceRectDrawingArea(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->resetFaceRectView()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->updateLayout(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->updateAeAfTouchBoundary(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->hideMultiAfView()V

    return-void
.end method

.method public updateMultiAfView([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->faceRectView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->isFaceRectVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->hideMultiAfView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->multiAfView:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;->update([B)V

    :goto_0
    return-void
.end method

.method public updatePalmRect(Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "palm"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->resetFaceRectView()V

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr p1, v3

    iput p1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->palmRectangle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->palmRectangle:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->palmRectangle:Landroid/widget/ImageView;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->palmRectangle:Landroid/widget/ImageView;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;->palmRectangle:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateQrRectView(Landroid/graphics/RectF;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newRect"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->mPrevQrRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->setQrRectView(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->showQrRectView()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->moveQrRectView(Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method
