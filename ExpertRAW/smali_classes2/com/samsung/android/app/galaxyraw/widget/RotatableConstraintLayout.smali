.class public Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RotatableConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RotatableConstraintLayout"


# instance fields
.field private mExpectedOrientation:Ljava/lang/Integer;

.field private mHeight:I

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRotateAction:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

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

    new-instance p1, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

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

    new-instance p1, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;-><init>(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mRotateAction:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    return-object p1
.end method

.method private checkLandscapeRotation(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, -0x5a

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkPortraitRotation(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.CONFIGURATION_ORIENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mRotateAction:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mWidth:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mHeight:I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_5

    if-eq p1, p2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    :cond_2
    move p1, v1

    move v2, p1

    goto :goto_1

    :cond_3
    const/16 p1, -0x5a

    goto :goto_0

    :cond_4
    const/16 p1, 0xb4

    move v2, v1

    goto :goto_1

    :cond_5
    const/16 p1, 0x5a

    :goto_0
    move v2, v0

    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mWidth:I

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mHeight:I

    sub-int v5, v2, v4

    div-int/2addr v5, p2

    sub-int v2, v4, v2

    div-int/2addr v2, p2

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mWidth:I

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v2, v1

    move v5, v2

    :goto_2
    invoke-super {p0, v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    int-to-float v3, v5

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->setTranslationX(F)V

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->setTranslationY(F)V

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getRotation()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mRotateAction:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;->prepareRotation()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->removeAllViews()V

    :cond_7
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->setRotation(F)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->checkLandscapeRotation(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    goto :goto_4

    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->checkPortraitRotation(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mExpectedOrientation:Ljava/lang/Integer;

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mRotateAction:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getRotation()F

    move-result p0

    const/high16 p2, -0x3d4c0000    # -90.0f

    cmpl-float p0, p0, p2

    if-nez p0, :cond_a

    goto :goto_3

    :cond_a
    move v0, v1

    :goto_3
    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;->refreshLayout(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public setRotateAction(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    const-string v0, "RotatableConstraintLayout"

    const-string v1, "setRotateAction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->mRotateAction:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;

    return-void
.end method
