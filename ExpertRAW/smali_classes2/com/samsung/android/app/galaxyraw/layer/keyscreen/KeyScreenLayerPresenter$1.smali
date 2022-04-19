.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;
.super Ljava/util/HashMap;
.source "KeyScreenLayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/16 v1, 0x26

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_CREATE_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/16 v2, 0x7e

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_LIVE_FOCUS_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/16 v2, 0x66

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_BOKEH_EFFECT_LIST:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_NIGHT_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v3, -0x2

    invoke-static {p1, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_MORE_HELP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/16 v2, 0x50

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QR_CODE_HELP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->MENU_LENS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v1, 0x7

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter;I)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
