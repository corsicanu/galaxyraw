.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZoomShortcutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDarkMode:Z

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOrientation:I

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

.field private mZoomShortcutButtonClickListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mData:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mZoomShortcutButtonClickListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long p0, p1

    return-wide p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewHolder",
            "position"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->onBindViewHolder(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "position"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mData:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result p1

    int-to-float p1, p1

    const v1, 0x461c4000    # 10000.0f

    cmpg-float v1, p1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "%.1f"

    invoke-static {v1, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "%1.0f"

    invoke-static {v1, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060254

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setTextColor(I)V

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setValue(I)V

    iget-object p1, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mDarkMode:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p2, :cond_1

    const p2, 0x7f08066b

    goto :goto_1

    :cond_1
    const p2, 0x7f08066d

    :goto_1
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "position"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "position"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0030

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDarkMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "darkMode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mDarkMode:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mOrientation:I

    return-void
.end method

.method public setZoomShortcutButtonClickListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomShortcutButtonClickListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->mZoomShortcutButtonClickListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;

    return-void
.end method
