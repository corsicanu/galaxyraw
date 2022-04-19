.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;
.super Ljava/lang/Object;
.source "AeAfView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private mIsTouchDownInDeadZone:Z

.field private final mSwipeIgnoreArea:I

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07048d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mSwipeIgnoreArea:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mIsTouchDownInDeadZone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;-><init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V

    return-void
.end method

.method private checkDeadZone(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getWidth()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mSwipeIgnoreArea:I

    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mIsTouchDownInDeadZone:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$502(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$602(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$702(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Z)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->checkDeadZone(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
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

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->mIsTouchDownInDeadZone:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$900(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_5

    cmpl-float p1, p4, p2

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onFlingVertical(I)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onFlingVertical(I)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$900(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p4, v0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_5

    cmpl-float p1, p3, p2

    if-lez p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onFlingHorizontal(I)Z

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onFlingHorizontal(I)Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$600(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onLongPressEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$702(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Z)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$602(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Z)Z

    return-void
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

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
