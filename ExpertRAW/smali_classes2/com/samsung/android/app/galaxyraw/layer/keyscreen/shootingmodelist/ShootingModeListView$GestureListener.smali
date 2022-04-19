.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ShootingModeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field private mScrollEnable:Z

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->mScrollEnable:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$302(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;Z)Z

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->getAdapter()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    const/16 p2, 0x11

    if-lez p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/16 p1, 0x42

    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    add-int/lit8 p3, p3, -0x2

    if-gez p3, :cond_2

    move p3, v0

    :cond_2
    if-ne p1, p2, :cond_3

    mul-int/lit8 p3, p3, -0x1

    :cond_3
    const/4 p4, 0x1

    if-nez p3, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->mScrollEnable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p4, :cond_5

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    move p1, p4

    :goto_1
    add-int/2addr p3, p1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, p4, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)I

    move-result p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;)I

    move-result p1

    :goto_2
    add-int/2addr p1, p3

    if-gez p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->getAdapter()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;->getItemCount()I

    move-result p2

    if-lt p1, p2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->getAdapter()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    goto :goto_3

    :cond_8
    move v0, p1

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->getAdapter()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$600(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;->access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;I)V

    return p4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView$GestureListener;->mScrollEnable:Z

    const/4 p0, 0x0

    return p0
.end method
