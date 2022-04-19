.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;
.super Ljava/lang/Enum;
.source "PreviewOverlayLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AeAfSupportUi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

.field public static final enum CIRCLE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

.field public static final enum EV_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

.field public static final enum LOCK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

.field public static final enum NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

.field public static final enum TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    const-string v3, "CIRCLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->CIRCLE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    const-string v5, "LOCK_BUTTON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->LOCK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    const-string v7, "EV_SLIDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->EV_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    const-string v9, "TEXT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    return-object v0
.end method
