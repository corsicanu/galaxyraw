.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ZoomLensListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentsItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0701f5

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method
