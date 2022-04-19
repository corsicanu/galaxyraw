.class public Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ShootingModeOverlayLayerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;
.implements Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeOverlayLayerView"


# instance fields
.field private mIsBackButtonEnabled:Z

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;


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

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mIsBackButtonEnabled:Z

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

    const-string p1, "ShootingModeOverlayLayerView"

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

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mIsBackButtonEnabled:Z

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

    const-string p1, "ShootingModeOverlayLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    return-object p0
.end method

.method private refreshBackButtonPosition(Landroid/widget/Button;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isLocaleRTL()Z

    move-result v2

    const v3, 0x7f070444

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_0
    float-to-int v2, v2

    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v2, v0

    add-int/2addr v0, v1

    invoke-direct {v3, v2, v1, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->timer:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->displayCutout:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->clear()V

    return-void
.end method

.method public hideBackButton()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mIsBackButtonEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->backButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public hideFloatingShutterButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFloatingButtonEnable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->hide(Z)V

    return-void
.end method

.method public hideScreenFlashAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->onHideScreenFlashRequested()V

    return-void
.end method

.method public hideTimer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->onTimerHideRequested()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->timer:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->setVisibility(I)V

    return-void
.end method

.method public hideVoiceRecognitionNotice()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->voiceControl:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->voiceControl:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->backButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/-$$Lambda$ShootingModeOverlayLayerView$rmtECxLTkwVFHmPK2vs3al6g_N4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/-$$Lambda$ShootingModeOverlayLayerView$rmtECxLTkwVFHmPK2vs3al6g_N4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->backButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->refreshBackButtonPosition(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->timer:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->createTimerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->timer:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->displayCutout:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->createDisplayCutoutPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->displayCutout:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->createFloatShutterButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonContract$View;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/-$$Lambda$ShootingModeOverlayLayerView$91UceSUhbO5R1FpsNYj8Bc4rSSo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/-$$Lambda$ShootingModeOverlayLayerView$91UceSUhbO5R1FpsNYj8Bc4rSSo;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_AMOLED_DISPLAY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->whiteOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0600ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public isScreenFlashAnimationRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->screenFlash:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$initialize$0$ShootingModeOverlayLayerView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->onBackButtonClick()V

    return-void
.end method

.method public synthetic lambda$initialize$1$ShootingModeOverlayLayerView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->onFloatingShutterButtonClick()Z

    return-void
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->timer:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->backButton:Landroid/widget/Button;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->screenFlashIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public performHideScreenFlash()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->screenFlash:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public performStartScreenFlash()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->screenFlash:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->screenFlash:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->screenFlash:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public setBackButtonEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mIsBackButtonEnabled:Z

    return-void
.end method

.method public setFloatingShutterButtonEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->setEnabled(Z)V

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShootingModeOverlayLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showBackButton()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mIsBackButtonEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->backButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public showFloatingShutterButton()V
    .locals 2

    const-string v0, "ShootingModeOverlayLayerView"

    const-string v1, "showFloatingShutterButton"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->show()V

    return-void
.end method

.method public showTimer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->onTimerShowRequested()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->timer:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;->setVisibility(I)V

    return-void
.end method

.method public showVoiceRecognitionNotice()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->voiceControl:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->voiceControl:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->voiceControl:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public startDisplayCutoutAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->onStartDisplayCutoutAnimationRequested()V

    return-void
.end method

.method public startScreenFlashAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;->onStartScreenFlashRequested()V

    return-void
.end method

.method public updateFloatingButtonPosition(II)V
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->updateFloatingButtonPosition(II)V

    return-void
.end method
