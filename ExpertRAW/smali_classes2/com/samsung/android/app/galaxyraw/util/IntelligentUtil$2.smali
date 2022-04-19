.class Lcom/samsung/android/app/galaxyraw/util/IntelligentUtil$2;
.super Ljava/util/HashMap;
.source "IntelligentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/IntelligentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_SHAKE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_SHAKE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_DIRTY_LENS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_CLOSED_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_BLURRED_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_BACK_LIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/IntelligentUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
