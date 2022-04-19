.class Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "RotatableConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$7vnygv8KDh_0siXedbjU4N4ok2U(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$RotatableConstraintLayout$1(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->access$000(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->access$100(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    const-string v0, "orientation"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->access$100(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->access$000(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;)Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->getRotation()F

    move-result p2

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;->refreshLayout(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->access$102(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$RotatableConstraintLayout$1$7vnygv8KDh_0siXedbjU4N4ok2U;

    const-string v1, "camera.action.CONFIGURATION_ORIENTATION"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$RotatableConstraintLayout$1$7vnygv8KDh_0siXedbjU4N4ok2U;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$RotatableConstraintLayout$1$5cJYCn0T8h9eSypk5MwLWH6l4iQ;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/widget/-$$Lambda$RotatableConstraintLayout$1$5cJYCn0T8h9eSypk5MwLWH6l4iQ;-><init>(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
