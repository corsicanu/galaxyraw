.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "ProControlPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrevTouchX:I

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->mPrevTouchX:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rv",
            "e"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->COLLAPSE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->mPrevTouchX:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0

    :cond_4
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->mPrevTouchX:I

    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rv",
            "e"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;->COLLAPSE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$ControlPanelState;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result p1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    neg-float p1, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->getItemSpace()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    goto :goto_2

    :cond_2
    iget p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->mPrevTouchX:I

    sub-int p2, p1, p2

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;

    move-result-object v1

    sub-int/2addr v0, p2

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$ContentsItemDecoration;->setItemSpace(I)V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->mPrevTouchX:I

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->mPrevTouchX:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result p2

    add-int/2addr p1, p2

    div-int/2addr p1, v2

    if-gt v0, p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result p1

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;II)V

    :cond_5
    :goto_2
    return-void
.end method
