.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ZoomShortcutView.java"


# instance fields
.field private mDarkMode:Z


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

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

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

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic lambda$setDarkMode$0(ZLcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->setDarkMode(Z)V

    return-void
.end method


# virtual methods
.method public isDarkMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->mDarkMode:Z

    return p0
.end method

.method public synthetic lambda$updateChildBackground$1$ZoomShortcutView(Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;)V
    .locals 2

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->mDarkMode:Z

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    const v0, 0x7f08066b

    goto :goto_0

    :cond_0
    const v0, 0x7f08066d

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "darkMode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->mDarkMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomShortcutView$D51XvD61VS97cLh7MhqW5x7IcQk;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomShortcutView$D51XvD61VS97cLh7MhqW5x7IcQk;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateChildBackground()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomShortcutView$YjJ7aYhrhcWsVFD5ZAM__MBNCwc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomShortcutView$YjJ7aYhrhcWsVFD5ZAM__MBNCwc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
