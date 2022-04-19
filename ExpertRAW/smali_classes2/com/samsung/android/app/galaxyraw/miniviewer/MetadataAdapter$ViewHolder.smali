.class public Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MetadataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    return-object p0
.end method
