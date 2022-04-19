.class public Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;
.super Ljava/lang/Object;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;,
        Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;
    }
.end annotation


# static fields
.field public static final COMMAND_ID:I = 0x0

.field public static final ENABLE:I = 0x3

.field public static final INFO_ORDER:I = 0x6

.field public static final MORE_MODE:I = 0x4

.field public static final ORDER:I = 0x5

.field public static final PAIR_MODE_NOT_FOUND:I = -0x1

.field public static final SUPPORT_BACK:I = 0x2

.field public static final SUPPORT_FRONT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraShootingMode"

.field private static final mShootingModeMapLock:Ljava/lang/Object;

.field private static final mShortcutInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->initializeShortcutInfoMap()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Ljava/util/Map;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeId(Ljava/util/Map;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static addShootingModeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentModeStr",
            "defaultModeStr",
            "referenceStr"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v7, v3

    invoke-static {p0, v8}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    aget-object v8, v7, v3

    invoke-static {p2, v8}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0, v7}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->orderCountUp(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stringBuilder",
            "modeFeature",
            "commandId",
            "checkEnable",
            "isMore"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "front"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "back"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v3, "enable"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "more"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz p3, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v6, :cond_5

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v1, "order"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v1, "info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v7, p0

    move-object/from16 v8, p2

    invoke-static/range {v7 .. v14}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->strAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static checkArdoodlePackage(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/16 v0, 0x26

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const-string v2, "com.samsung.android.ardrawing"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->setEnable(Landroid/content/Context;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V

    return v1

    :cond_1
    return v3
.end method

.method private static getBackCameraId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "backLensType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCameraIdList()Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCameraIdList()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no camera id correspoding to arguments : commandId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", backLensType="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getCameraId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "facing",
            "lensType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getBackCameraId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not supported camera facing : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getFrontCameraId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result p0

    return p0
.end method

.method public static getCaptureSize(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeFeature"
        }
    .end annotation

    const-string v0, "capture-size"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "CameraShootingMode"

    const-string v0, "getCaptureSize : There is no a predefined capture size in shooting mode feature."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isBackFacingSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result v3

    if-ne v3, p0, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isFrontFacingSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no command id corresponding to the shooting mode id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getDefaultOrder(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkEnable"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "checkEnable",
            "isMore"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultShootingModeCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object v0
.end method

.method private static getFrontCameraId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCameraIdList()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no camera id correspoding to commandId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "isFront"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isFrontFacingSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isBackFacingSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isFrontFacingSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_3

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isBackFacingSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no shooting mode id correspoding to arguments : commandId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", isFront="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "more_shooting_mode_order_list_support_1000149"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shooting_mode_order_list_support_1000149"

    invoke-static {p0, v5, v4}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addShootingModeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->removeShootingModeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getOrderString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "shooting_mode_order_list_support_1000149"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "more_shooting_mode_order_list_support_1000149"

    invoke-static {p0, v5, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addShootingModeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->removeShootingModeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->setOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultOrder(ZLjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->setOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPairMode(IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "isFront"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isFrontFacingSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isBackFacingSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_2
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPreviewSize(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeFeature"
        }
    .end annotation

    const-string v0, "preview-size"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "CameraShootingMode"

    const-string v0, "getCaptureSize : There is no a predefined preview size in shooting mode feature."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShootingModeCommandIdByActivityName(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityName"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultShootingModeCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getShootingModeCommandIdByModeName(Ljava/lang/String;Z)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeName",
            "isFront"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$300(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v2

    if-eqz p1, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultShootingModeCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getShootingModeId(Ljava/util/Map;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeFeature",
            "facing"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "front"

    goto :goto_0

    :cond_0
    const-string p1, "back"

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->getShootingModeIdByName(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method public static getShootingModeNameByModeId(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result v3

    if-ne v3, p0, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$300(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->access$100(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;)I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$300(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Photo"

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getShortcutInfo(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getSimpleOrderString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->addString(Ljava/lang/StringBuilder;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLjava/lang/Boolean;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static initializeShortcutInfoMap()V
    .locals 10

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Photo"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Selfie focus"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Pro"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Panorama"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Slow motion"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Super slow motion"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Hyperlapse"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Night"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Food"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Live focus"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Video"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Pro video"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Live focus video"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Multi recording"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Single take photo"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Single take video"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Ar doodle"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const-string v5, "Dual view recording"

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v5, 0x28

    const/16 v6, 0x28

    const-string v7, "Qr"

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IILjava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/16 v5, 0x23

    const/16 v6, 0x23

    const-string v7, "More"

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IILjava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isEnable(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-eqz v4, :cond_2

    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, v3, v1

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x3

    aget-object p0, v3, p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static isMoreMode(Landroid/content/Context;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "shootingModeId"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method

.method public static isMoreMode(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$400(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$400(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isSupported(IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "isFront"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupported(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "isFront"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isFrontFacingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isBackFacingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne v3, p0, :cond_0

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isFrontFacingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->isBackFacingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_4
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isSupported(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modeString",
            "commandId"
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-eqz v4, :cond_3

    aget-object v4, v3, v1

    if-eqz v4, :cond_3

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    return v5

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static isSupported(Ljava/util/Map;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeFeature",
            "isFront"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "front"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_0
    const-string p1, "back"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string p1, "enable"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "find"
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static orderCountUp(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "order"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->orderCountUp(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeShootingModeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentModeStr",
            "defaultModeStr"
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {p1, v5}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    if-eq v6, v7, :cond_0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static resetShortcutInfo()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShootingModeMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->mShortcutInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->initializeShortcutInfoMap()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setEnable(Landroid/content/Context;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "modeFeature",
            "commandId",
            "enable"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v3

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v14, 0x0

    if-nez v2, :cond_1

    const-string v2, "front"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v2, "back"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v2, "more"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v2, "order"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v2, "info"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v3, v11

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->strAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v1, v13

    :goto_1
    if-ge v14, v1, :cond_3

    aget-object v2, v13, v14

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    array-length v1, v13

    :goto_2
    if-ge v14, v1, :cond_3

    aget-object v2, v13, v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->modeStrContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v1, p2

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->setOrder(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_5
    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable : Not supported command id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraShootingMode"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "orderString"
        }
    .end annotation

    const-string v0, "more_shooting_mode_order_list_support_1000149"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOrder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "orderString"
        }
    .end annotation

    const-string v0, "shooting_mode_order_list_support_1000149"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static strAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stringBuilder",
            "commandId",
            "front",
            "back",
            "enable",
            "more",
            "order",
            "info"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
