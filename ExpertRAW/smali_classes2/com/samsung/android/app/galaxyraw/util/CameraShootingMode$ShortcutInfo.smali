.class public Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;
.super Ljava/lang/Object;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutInfo"
.end annotation


# instance fields
.field private final mBackInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private final mFrontInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

.field private final mModeName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "backShootingModeId",
            "frontShootingModeId",
            "modeName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->getShootingModeInfo(II)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mBackInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->getShootingModeInfo(II)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mFrontInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mModeName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IILjava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "modeName"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->getShootingModeFeature(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->access$700(Ljava/util/Map;I)I

    move-result v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->getShootingModeInfo(II)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mBackInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->access$700(Ljava/util/Map;I)I

    move-result p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->getShootingModeInfo(II)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mFrontInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mModeName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mBackInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mFrontInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method private static getShootingModeInfo(II)Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "facing"
        }
    .end annotation

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x1c

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;-><init>(II)V

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->access$800()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInformationOrder()Ljava/lang/Integer;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->getShootingModeFeature(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "info"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public isBackFacingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mBackInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBigInformationSupported()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/ShootingModeMap;->getShootingModeFeature(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "big-info"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFrontFacingSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->access$800()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShortcutInfo;->mFrontInfo:Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode$ShootingModeInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
