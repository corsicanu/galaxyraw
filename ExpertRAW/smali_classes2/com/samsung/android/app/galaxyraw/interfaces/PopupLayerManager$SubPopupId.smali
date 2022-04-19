.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;
.super Ljava/lang/Enum;
.source "PopupLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubPopupId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

.field public static final enum INTELLIGENT_TIPS_EVENT_BACK_LIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

.field public static final enum INTELLIGENT_TIPS_EVENT_BLURRED_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

.field public static final enum INTELLIGENT_TIPS_EVENT_CLOSED_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

.field public static final enum INTELLIGENT_TIPS_EVENT_DIRTY_LENS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

.field public static final enum INTELLIGENT_TIPS_EVENT_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

.field public static final enum INTELLIGENT_TIPS_EVENT_SHAKE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

.field public static final enum SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const-string v1, "SUB_ID_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const-string v3, "INTELLIGENT_TIPS_EVENT_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const-string v5, "INTELLIGENT_TIPS_EVENT_DIRTY_LENS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_DIRTY_LENS:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const-string v7, "INTELLIGENT_TIPS_EVENT_SHAKE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_SHAKE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const-string v9, "INTELLIGENT_TIPS_EVENT_BLURRED_FACE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_BLURRED_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const-string v11, "INTELLIGENT_TIPS_EVENT_CLOSED_EYES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_CLOSED_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const-string v13, "INTELLIGENT_TIPS_EVENT_BACK_LIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->INTELLIGENT_TIPS_EVENT_BACK_LIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    return-object v0
.end method
