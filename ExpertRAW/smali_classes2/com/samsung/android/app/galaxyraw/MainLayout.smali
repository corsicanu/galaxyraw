.class public Lcom/samsung/android/app/galaxyraw/MainLayout;
.super Landroid/widget/FrameLayout;
.source "MainLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/MainLayout$OrientationEventListener;
    }
.end annotation


# instance fields
.field private mFrameDelay:I

.field private mIsResizable:Z

.field private mOrientationEventListener:Lcom/samsung/android/app/galaxyraw/MainLayout$OrientationEventListener;

.field private mRotation:I


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

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mIsResizable:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mFrameDelay:I

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

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mIsResizable:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mFrameDelay:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/MainLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mFrameDelay:I

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/MainLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mFrameDelay:I

    return p1
.end method

.method private isPortrait(II)Z
    .locals 0
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

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
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

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mIsResizable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x5a

    const/16 v3, -0x5a

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/MainLayout;->isPortrait(II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/MainLayout;->isPortrait(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    move v0, v5

    move v5, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    iput v4, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/MainLayout;->isPortrait(II)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v4

    move v5, v0

    :goto_2
    if-eqz v5, :cond_8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    sub-int v6, v4, v5

    div-int/2addr v6, v1

    sub-int/2addr v5, v4

    div-int/lit8 v4, v5, 0x2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v6, v6, -0x1

    :cond_7
    move v1, v4

    move v4, v6

    move v7, p2

    move p2, p1

    move p1, v7

    goto :goto_3

    :cond_8
    move v1, v4

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    int-to-float p1, v4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setTranslationX(F)V

    int-to-float p1, v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getRotation()F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    if-eq p2, p1, :cond_e

    if-nez v0, :cond_e

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setRotation(F)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mOrientationEventListener:Lcom/samsung/android/app/galaxyraw/MainLayout$OrientationEventListener;

    if-eqz p2, :cond_b

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    if-eq v0, v3, :cond_a

    if-ne v0, v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/MainLayout$OrientationEventListener;->onOrientationChanged(I)V

    goto :goto_5

    :cond_a
    :goto_4
    mul-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/MainLayout$OrientationEventListener;->onOrientationChanged(I)V

    :cond_b
    :goto_5
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mRotation:I

    if-ne p2, v2, :cond_c

    if-eq p1, v3, :cond_d

    :cond_c
    if-ne p2, v3, :cond_e

    if-ne p1, v2, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/MainLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/MainLayout$1;-><init>(Lcom/samsung/android/app/galaxyraw/MainLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_e
    return-void
.end method

.method public setOrientationEventListener(Lcom/samsung/android/app/galaxyraw/MainLayout$OrientationEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mOrientationEventListener:Lcom/samsung/android/app/galaxyraw/MainLayout$OrientationEventListener;

    return-void
.end method

.method public setResizable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isResizable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/MainLayout;->mIsResizable:Z

    return-void
.end method
