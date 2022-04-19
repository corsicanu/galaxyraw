.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZoomShortcutAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;->onZoomShortcutClick(Landroid/view/View;)V

    return-void
.end method
