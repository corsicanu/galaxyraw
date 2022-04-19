.class public Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;
.super Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;
.source "MetadataDetailsPage.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;


# instance fields
.field private mAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;


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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->initView()V

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

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->initView()V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->initView()V

    return-void
.end method

.method private inflateLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;->metadataList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;->backButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataDetailsPage$1Xg4SaSbQbYzToVfCi71I_M7BAE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataDetailsPage$1Xg4SaSbQbYzToVfCi71I_M7BAE;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->setRotateAction(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->inflateLayout()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataDetailsPage$0Day8o8gRtQPD4JwxSyekxOItJI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataDetailsPage$0Day8o8gRtQPD4JwxSyekxOItJI;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public synthetic lambda$hide$0$MetadataDetailsPage()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$inflateLayout$1$MetadataDetailsPage(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->hide()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;->metadataList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public prepareRotation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public refreshLayout(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReverse"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->inflateLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->setAdapter(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07002c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;->metadataDetailsLayout:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;->metadataDetailsLayout:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MetadataDetailsPageBinding;->metadataList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
