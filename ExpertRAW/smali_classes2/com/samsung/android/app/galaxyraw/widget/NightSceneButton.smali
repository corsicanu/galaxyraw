.class public Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;
.super Landroid/widget/RelativeLayout;
.source "NightSceneButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton$NightSceneButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NightSceneButton"


# instance fields
.field private mNightSceneButtonClickListener:Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton$NightSceneButtonClickListener;

.field private mTtsNight:Ljava/lang/String;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120364

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mTtsNight:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

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

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120364

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mTtsNight:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->initView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/R$styleable;->NightSceneButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mTtsNight:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setNightSceneButtonContentsDescription(Z)V

    return-void
.end method

.method private setNightSceneButtonContentsDescription(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    if-eqz p1, :cond_0

    const p1, 0x7f12007f

    goto :goto_0

    :cond_0
    const p1, 0x7f12007e

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mTtsNight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNeedAnimation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f4a3d71    # 0.79f

    const v3, 0x3ea3d70a    # 0.32f

    const v4, 0x3f933333    # 1.15f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$NightSceneButton$GJdG2cF1Edq6okYA_MATPOdfK-c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$NightSceneButton$GJdG2cF1Edq6okYA_MATPOdfK-c;-><init>(Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$hide$0$NightSceneButton()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NightSceneButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mNightSceneButtonClickListener:Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton$NightSceneButtonClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setNightSceneButtonContentsDescription(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mNightSceneButtonClickListener:Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton$NightSceneButtonClickListener;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->isSelected()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton$NightSceneButtonClickListener;->onNightSceneButtonClicked(Z)V

    :cond_0
    return-void
.end method

.method public setButtonSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/WidgetNightSceneButtonBinding;->nightSceneButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method

.method public setNightSceneButtonClickListener(Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton$NightSceneButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->mNightSceneButtonClickListener:Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton$NightSceneButtonClickListener;

    return-void
.end method

.method public show(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNeedAnimation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setScaleX(F)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f4a3d71    # 0.79f

    const v3, 0x3ea3d70a    # 0.32f

    const v4, 0x3f933333    # 1.15f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setScaleX(F)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setScaleY(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/widget/NightSceneButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
