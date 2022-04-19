.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZoomLensListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "view"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListAdapter$ViewHolder$UG-Y0iIOHbMG0uG-ybb58vlJSKw;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListAdapter$ViewHolder$UG-Y0iIOHbMG0uG-ybb58vlJSKw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListAdapter$ViewHolder$o9detCUTPY83orXe8xE1dC8_p1k;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListAdapter$ViewHolder$o9detCUTPY83orXe8xE1dC8_p1k;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$1$ZoomLensListAdapter$ViewHolder(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListAdapter$ViewHolder$g7f_14Re8Xe_Q4rePmYr3swya3U;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListAdapter$ViewHolder$g7f_14Re8Xe_Q4rePmYr3swya3U;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$new$2$ZoomLensListAdapter$ViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;)Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
