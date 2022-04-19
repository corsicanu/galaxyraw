.class public Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;
.super Ljava/lang/Object;
.source "PopupStyleResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;
    }
.end annotation


# static fields
.field private static final mResourceIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->mResourceIdMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->LAUNCH_ZOOM_BAR_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v2, 0x7f13013a

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->ZOOM_IN_MIC_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v2, 0x7f1303cf

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v3, 0x7f130138

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_DIRTY_LENS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_SHAKE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v3, 0x7f130139

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_BLURRED_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_CLOSED_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v3, 0x7f130137

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->INTELLIGENT_TIPS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_BACK_LIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v3, 0x7f130136

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v2, 0x7f1302c1

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v2, 0x7f130132

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->SHUTTER_SPEED_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    const v2, 0x7f1301bf

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;-><init>(I)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "popupId",
            "subPopupId",
            "set"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->mResourceIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static add(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "set"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->mResourceIdMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "subPopupId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap;->mResourceIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/resourcedata/PopupStyleResourceIdMap$PopupStyleResourceIdSet;

    return-object p0
.end method
