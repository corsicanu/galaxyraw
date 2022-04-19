.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
.super Ljava/lang/Enum;
.source "KeyScreenLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuickTakeButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

.field public static final enum IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

.field public static final enum PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

.field public static final enum STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

.field public static final enum STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    const-string v3, "PREPARING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    const-string v5, "STARTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    const-string v7, "STOPPING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    return-object v0
.end method
