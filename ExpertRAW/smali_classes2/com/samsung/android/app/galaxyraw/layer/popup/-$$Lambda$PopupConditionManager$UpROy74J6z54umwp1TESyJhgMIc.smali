.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$UpROy74J6z54umwp1TESyJhgMIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$UpROy74J6z54umwp1TESyJhgMIc;->f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    return-void
.end method


# virtual methods
.method public final isEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$UpROy74J6z54umwp1TESyJhgMIc;->f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;->lambda$makePropertyMap$3$PopupConditionManager(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z

    move-result p0

    return p0
.end method
