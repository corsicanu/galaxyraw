.class public Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;
.super Landroid/widget/RelativeLayout;
.source "FaceRectView.java"


# static fields
.field private static final DELAY_TIME_TO_HIDE_FACE_RECT:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "FaceRectView"


# instance fields
.field private mDetectedFaceCount:I

.field private mFacePositionGuideIndex:I

.field private mFaceRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideFaceRectRunnable:Ljava/lang/Runnable;

.field private mIsFaceRectAutoHideEnabled:Z

.field private mIsFaceRectVisible:Z

.field private mOldDetectedFaceCount:I

.field private mOrientation:I


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

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$dajMphuK2m-JZuYZi8UqxNKiHGs;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$dajMphuK2m-JZuYZi8UqxNKiHGs;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->init()V

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

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$dajMphuK2m-JZuYZi8UqxNKiHGs;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$dajMphuK2m-JZuYZi8UqxNKiHGs;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->init()V

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

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$dajMphuK2m-JZuYZi8UqxNKiHGs;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$dajMphuK2m-JZuYZi8UqxNKiHGs;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->init()V

    return-void
.end method

.method private handleFacePositionGuide([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faces",
            "translateMatrix"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mOrientation:I

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/util/FaceAreaManager;->getFacePositionIndex(Landroid/content/Context;[Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;II)I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->isFaceCountChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    if-eq v0, p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length p1, p1

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/FaceAreaManager;->speak(Landroid/content/Context;II)V

    :cond_2
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    return-void
.end method

.method private hideFaceRect(Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faceRect"
        }
    .end annotation

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private init()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080985

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    return-void
.end method

.method private startHideFaceRectTimer()V
    .locals 3

    const-string v0, "FaceRectView"

    const-string v1, "startHideFaceRectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mHideFaceRectRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateRectLayout(IFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "left",
            "top",
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p4

    float-to-int p4, p5

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method enableFaceRectView(Z)V
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

    const-string v1, "enableFaceRectView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRectView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method getFaceCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    return p0
.end method

.method hideFaceRect(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withAnimation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$1aEob8HeS89d8UdFCEfXDxTqUu8;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/-$$Lambda$FaceRectView$1aEob8HeS89d8UdFCEfXDxTqUu8;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->hideFaceRect(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method isFaceCountChanged()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isFaceRectVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    return p0
.end method

.method public synthetic lambda$hideFaceRect$1$FaceRectView(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->hideFaceRect(Landroid/widget/ImageView;)V

    return-void
.end method

.method public synthetic lambda$new$0$FaceRectView()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->hideFaceRect(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mOrientation:I

    return-void
.end method

.method resetFaceRect()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->hideFaceRect(Z)V

    :cond_1
    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFacePositionGuideIndex:I

    :cond_2
    :goto_0
    return-void
.end method

.method setFaceRectAutoHideEnabled(Z)V
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

    const-string v1, "setFaceRectAutoHideEnabled : enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRectView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    return-void
.end method

.method setFaceRectColor(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateFaceRect([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faces",
            "translateMatrix"
        }
    .end annotation

    array-length v0, p1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->handleFacePositionGuide([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->resetFaceRect()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->isFaceCountChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectAutoHideEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->startHideFaceRectTimer()V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mIsFaceRectVisible:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    if-ge v8, v2, :cond_3

    new-instance v2, Landroid/graphics/RectF;

    aget-object v3, p1, v8

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    iget v4, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v3

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v3

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    invoke-virtual {v2, v4, v5, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v2, p0

    move v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->updateRectLayout(IFFFF)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mFaceRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->handleFacePositionGuide([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mDetectedFaceCount:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->mOldDetectedFaceCount:I

    return-void
.end method

.method updateFaceRectDrawingArea(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewLayoutRect"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
