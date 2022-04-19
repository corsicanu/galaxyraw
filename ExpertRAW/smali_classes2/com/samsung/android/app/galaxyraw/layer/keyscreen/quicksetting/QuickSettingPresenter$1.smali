.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$1;
.super Ljava/util/HashMap;
.source "QuickSettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$ResolutionListGetter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$1l2z6m1Pwk7CApq4syoITVJBdhA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$1l2z6m1Pwk7CApq4syoITVJBdhA;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$q0bqu-UQeTqAj3kNfu3ssDQYIbg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$q0bqu-UQeTqAj3kNfu3ssDQYIbg;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$pf9OqgHZhQZu6n2G3vp0RMSXBMY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$pf9OqgHZhQZu6n2G3vp0RMSXBMY;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$4mVPLA6MuBUls9oKaPKeXOt5lxo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$4mVPLA6MuBUls9oKaPKeXOt5lxo;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
