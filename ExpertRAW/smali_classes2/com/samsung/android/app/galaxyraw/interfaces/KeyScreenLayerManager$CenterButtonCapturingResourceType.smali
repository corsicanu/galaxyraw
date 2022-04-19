.class public final enum Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;
.super Ljava/lang/Enum;
.source "KeyScreenLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CenterButtonCapturingResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

.field public static final enum CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

.field public static final enum NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

.field public static final enum PAUSE_STOP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

.field public static final enum QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

.field public static final enum STOP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const-string v5, "PAUSE_STOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->PAUSE_STOP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const-string v7, "STOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->STOP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const-string v9, "QUICK_TAKE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->$VALUES:[Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    return-object v0
.end method
