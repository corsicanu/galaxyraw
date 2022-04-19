.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;
.super Ljava/util/HashMap;
.source "CenterButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Landroid/util/Pair<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805de

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805da

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805dd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805dc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805db

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805c9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805ca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805c8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805c7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805c6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805ce

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805cf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805cb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805cd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805cc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805d8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805d9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805d5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805d7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805d6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805e3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805df

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805e1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f0805e0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
