.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;
.super Landroid/widget/RelativeLayout;
.source "ShootingModeEditButton.java"


# instance fields
.field private mExpand:Z

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;


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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    return-void
.end method

.method public static synthetic lambda$cr9Hm_R-kkks_ra2XC63WC8_5yc(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->shrinkAnimation()V

    return-void
.end method

.method private shrinkAnimation()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeEditButton$oJEbuNTwTwIvFzOUF_D4A5saIEM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeEditButton$oJEbuNTwTwIvFzOUF_D4A5saIEM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonBackground:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonBackground:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;->getBackgroundWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070449

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "BackgroundWidth"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v1, v5}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b0034

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b0035

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070448

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    invoke-direct {v2, v3, v1, v1, v5}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeEditButton$ezEWKGV38QHu5w0EX48OZwtUkyw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeEditButton$ezEWKGV38QHu5w0EX48OZwtUkyw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startShowAnimation(Landroid/view/View;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "delay"
        }
    .end annotation

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const/4 v3, 0x0

    const v4, 0x3ea3d70a    # 0.32f

    const v5, 0x3f9c28f6    # 1.22f

    invoke-direct {v2, v3, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b0038

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v7, p2

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object p2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {p1, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    invoke-direct {v2, v3, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_2

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0033

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    aput-object p2, v2, v1

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public synthetic lambda$shrinkAnimation$0$ShootingModeEditButton()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$shrinkAnimation$1$ShootingModeEditButton()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f947ae1    # 1.16f

    const v3, 0x3ea3d70a    # 0.32f

    const v4, 0x3fd47ae1    # 1.66f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public show()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mExpand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mExpand:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonBackground:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonBackground:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;->requestLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonBackground:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;->setBackgroundWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonBackground:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;->setBackgroundHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonBackground:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonBackground:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditBackground;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->startShowAnimation(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->startShowAnimation(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenShootingModeShortcutEditButtonBinding;->editButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->startShowAnimation(Landroid/view/View;I)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeEditButton$cr9Hm_R-kkks_ra2XC63WC8_5yc;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/-$$Lambda$ShootingModeEditButton$cr9Hm_R-kkks_ra2XC63WC8_5yc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
