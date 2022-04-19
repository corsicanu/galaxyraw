.class Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;
.super Ljava/lang/Object;
.source "ShootingModeMap.java"


# static fields
.field private static final ACTIVITY_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BACK_CAMERA_ID_LIST_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final COMMAND_ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRONT_CAMERA_ID_LIST_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SHOOTING_MODE_FEATURE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOOTING_MODE_ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->ACTIVITY_NAME_MAP:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->BACK_CAMERA_ID_LIST_MAP:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->COMMAND_ID_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->initializeFrontCameraIdListMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->FRONT_CAMERA_ID_LIST_MAP:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->SHOOTING_MODE_FEATURE_MAP:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$5;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->SHOOTING_MODE_ID_MAP:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getActivityNameMap(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->ACTIVITY_NAME_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getBackCameraIdList(I)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->BACK_CAMERA_ID_LIST_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method static getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->COMMAND_ID_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method static getFrontCameraIdList(I)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->FRONT_CAMERA_ID_LIST_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method static getShootingModeFeature(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->SHOOTING_MODE_FEATURE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method static getShootingModeIdByName(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeName"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->SHOOTING_MODE_ID_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static final initializeFrontCameraIdListMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$6;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$6;-><init>(I)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap$7;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
