.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;
.super Ljava/lang/Enum;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomSupportUi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

.field public static final enum LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

.field public static final enum NONE:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

.field public static final enum SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

.field public static final enum SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

.field public static final enum TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    const-string v3, "LENS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    const-string v5, "SLIDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    const-string v7, "SHORTCUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    const-string v9, "TEXT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    return-object v0
.end method
