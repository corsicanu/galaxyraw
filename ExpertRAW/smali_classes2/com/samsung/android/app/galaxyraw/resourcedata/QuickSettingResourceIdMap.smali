.class public Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;
.super Ljava/lang/Object;
.source "QuickSettingResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;,
        Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$OrientationType;
    }
.end annotation


# static fields
.field private static final mAvdResourceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLevelListDrawableResourceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mResourceIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->initializeMap()Ljava/util/EnumMap;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->mResourceIdMap:Ljava/util/EnumMap;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->mAvdResourceIdMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->mLevelListDrawableResourceIdMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->mResourceIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

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

.method public static getAvdResourceId(IIIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldDrawableId",
            "oldImageLevel",
            "newDrawableId",
            "newImageLevel",
            "orientation",
            "isLandscapeDrawableSupported"
        }
    .end annotation

    rem-int/lit16 p4, p4, 0xb4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    return v0

    :cond_0
    sget-object p4, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->mLevelListDrawableResourceIdMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->mAvdResourceIdMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getQuickSettingSubToastString(Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceIdSet",
            "context",
            "commandId",
            "orientation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getLandscapeToastSubStringId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    rem-int/lit16 p3, p3, 0xb4

    if-eqz p3, :cond_2

    sget-object p3, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const p3, 0x7f120498

    if-eq p2, v3, :cond_1

    if-eq p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getLandscapeToastSubStringId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    new-array p0, v3, [Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getMegaPixelSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-array p0, v3, [Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getMegaPixelSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const p3, 0x7f120494

    if-eq p2, v3, :cond_4

    if-eq p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getToastSubStringId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-array p0, v3, [Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getMegaPixelSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-array p0, v3, [Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getMegaPixelSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getSuperResolutionResourceIdSet(Z)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFront"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    move v4, v1

    move v9, v4

    move v10, v9

    move v11, v10

    goto :goto_2

    :cond_1
    const v1, 0x7f08081d

    const/16 p0, 0x28

    const v0, 0x7f120492

    const v2, 0x7f120496

    goto :goto_1

    :cond_2
    const v1, 0x7f08081c

    const/16 p0, 0x6c

    const v0, 0x7f120494

    const v2, 0x7f120498

    goto :goto_1

    :cond_3
    const v1, 0x7f08081e

    const/16 p0, 0x40

    const v0, 0x7f120493

    const v2, 0x7f120497

    :goto_1
    move v11, p0

    move v9, v0

    move v4, v1

    move v10, v2

    :goto_2
    new-instance p0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v5, 0x7f1200a4

    const v6, 0x7f1200a0

    const/4 v7, 0x0

    const v8, 0x7f12048d

    const/4 v12, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    return-object p0
.end method

.method public static getToastString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "commandId",
            "orientation"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getToastStringId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getToastSubStringId()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getToastStringId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getToastStringId()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->getQuickSettingSubToastString(Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static initializeMap()Ljava/util/EnumMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080812

    const v4, 0x7f120107

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f08080d

    const v8, 0x7f120107

    const v9, 0x7f12000a

    const/4 v10, 0x0

    const v11, 0x7f120483

    const v12, 0x7f12046f

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007e

    const v12, 0x7f12048b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007f

    const v12, 0x7f12048c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12000a

    const v12, 0x7f12046f

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007e

    const v12, 0x7f12048b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007f

    const v12, 0x7f12048c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12000a

    const v12, 0x7f12046f

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007e

    const v12, 0x7f12048b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007f

    const v12, 0x7f12048c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080826

    const v4, 0x7f120136

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080826

    const v8, 0x7f120136

    const v9, 0x7f12007e

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200ef

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200ed

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200ee

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007e

    const v11, 0x7f1204b0

    const v12, 0x7f12048b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200ef

    const v12, 0x7f1200ef

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200ed

    const v12, 0x7f1200ed

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200ee

    const v12, 0x7f1200ee

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080821

    const v4, 0x7f120118

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_CENTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080821

    const v8, 0x7f120118

    const v9, 0x7f12007b

    const v11, 0x7f120486

    const v12, 0x7f12007b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MATRIX:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007c

    const v12, 0x7f12007c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_SPOT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007d

    const v12, 0x7f12007d

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080815

    const v4, 0x7f120125

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080815

    const v8, 0x7f120125

    const/high16 v9, 0x7f120000

    const v11, 0x7f12049d

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120092

    const v11, 0x7f1204a5

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_8X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120096

    const v11, 0x7f1204a9

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_16X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12008f

    const v11, 0x7f1204a2

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_32X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120091

    const v11, 0x7f1204a4

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_64X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120095

    const v11, 0x7f1204a8

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080816

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080816

    const/high16 v9, 0x7f120000

    const v11, 0x7f12049d

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120093

    const v11, 0x7f1204a6

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12008d

    const v11, 0x7f1204a0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12008e

    const v11, 0x7f1204a1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120090

    const v11, 0x7f1204a3

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120094

    const v11, 0x7f1204a7

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_WITH_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12008b

    const v11, 0x7f12049e

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_45X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12008c

    const v11, 0x7f12049f

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const/high16 v9, 0x7f120000

    const v11, 0x7f12049d

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120093

    const v11, 0x7f1204a6

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12008d

    const v11, 0x7f1204a0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12008e

    const v11, 0x7f1204a1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120090

    const v11, 0x7f1204a3

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120094

    const v11, 0x7f1204a7

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080823

    const v4, 0x7f120370

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080823

    const v8, 0x7f120456

    const/4 v9, 0x0

    const v11, 0x7f1204ab

    const v12, 0x7f12048b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f120455

    const v12, 0x7f12048c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v1

    const v2, 0x7f120132

    const/16 v3, 0x190

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v4, 0x7f080824

    invoke-direct {v3, v4, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080824

    const v8, 0x7f120132

    const v9, 0x7f1204ac

    const/4 v10, 0x0

    const v11, 0x7f1204aa

    const v12, 0x7f1204ac

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1204ad

    const v12, 0x7f1204ad

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v1

    const/16 v3, 0x320

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v4, 0x7f080825

    invoke-direct {v3, v4, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080825

    const v8, 0x7f120132

    const v9, 0x7f1204ad

    const/4 v10, 0x0

    const v11, 0x7f1204aa

    const v12, 0x7f1204ad

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1204ae

    const v12, 0x7f1204ae

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080813

    const v4, 0x7f1202ab

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080813

    const v8, 0x7f1202ab

    const v9, 0x7f12007e

    const/4 v10, 0x0

    const v11, 0x7f120484

    const v12, 0x7f12048b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007f

    const v12, 0x7f12048c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f0806ee

    const v4, 0x7f120101

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f08081f

    const v8, 0x7f1200a4

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200a1

    const v11, 0x7f12048d

    const v12, 0x7f120491

    const v13, 0x7f120495

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120097

    const v12, 0x7f120499

    const v13, 0x7f12048e

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12009c

    const v12, 0x7f12048f

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200a3

    const v12, 0x7f12049c

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->getSuperResolutionResourceIdSet(Z)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getImageResourceId()I

    move-result v7

    const v8, 0x7f1200a4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f08081f

    const v8, 0x7f1200a4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200a1

    const v11, 0x7f12048d

    const v12, 0x7f120491

    const v13, 0x7f120495

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120097

    const v12, 0x7f120499

    const v13, 0x7f12048e

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12009c

    const v12, 0x7f12048f

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200a3

    const v12, 0x7f12049c

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->getSuperResolutionResourceIdSet(Z)Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WITH_SUPER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;->getImageResourceId()I

    move-result v7

    const v8, 0x7f1200a4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f08080e

    const v8, 0x7f1200a4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120097

    const v11, 0x7f12048d

    const v12, 0x7f120499

    const v13, 0x7f12048e

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12009c

    const v12, 0x7f12048f

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200a3

    const v12, 0x7f12049c

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120097

    const v11, 0x7f12048d

    const v12, 0x7f120499

    const v13, 0x7f12048e

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12009c

    const v12, 0x7f12048f

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200a3

    const v12, 0x7f12049c

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12009f

    const v12, 0x7f12049a

    const v13, 0x7f120490

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120097

    const v11, 0x7f12048d

    const v12, 0x7f120499

    const v13, 0x7f12048e

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12009c

    const v12, 0x7f12048f

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1200a3

    const v12, 0x7f12049c

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12009f

    const v12, 0x7f12049a

    const v13, 0x7f120490

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f08080f

    const v4, 0x7f120124

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f08080f

    const v8, 0x7f120124

    const v9, 0x7f120473

    const v11, 0x7f12047a

    const v12, 0x7f120473

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120472

    const v12, 0x7f120472

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12047d

    const v12, 0x7f12047d

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12047c

    const v12, 0x7f12047c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12047b

    const v12, 0x7f12047b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120478

    const v12, 0x7f120478

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120474

    const v12, 0x7f120474

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120477

    const v12, 0x7f120477

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120476

    const v12, 0x7f120476

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120475

    const v12, 0x7f120475

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120479

    const v12, 0x7f120479

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v6, 0x7f120109

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f08080f

    const v9, 0x7f120109

    const v10, 0x7f120473

    const/4 v11, 0x0

    const v12, 0x7f12047a

    const v13, 0x7f120473

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120472

    const v13, 0x7f120472

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047d

    const v13, 0x7f12047d

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047c

    const v13, 0x7f12047c

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047b

    const v13, 0x7f12047b

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120478

    const v13, 0x7f120478

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120474

    const v13, 0x7f120474

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120477

    const v13, 0x7f120477

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120476

    const v13, 0x7f120476

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120475

    const v13, 0x7f120475

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120479

    const v13, 0x7f120479

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120124

    const v10, 0x7f120473

    const v13, 0x7f120473

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120472

    const v13, 0x7f120472

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047d

    const v13, 0x7f12047d

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047c

    const v13, 0x7f12047c

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047b

    const v13, 0x7f12047b

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120478

    const v13, 0x7f120478

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120474

    const v13, 0x7f120474

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120477

    const v13, 0x7f120477

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120476

    const v13, 0x7f120476

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120475

    const v13, 0x7f120475

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120479

    const v13, 0x7f120479

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f120123

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120123

    const v10, 0x7f120473

    const v13, 0x7f120473

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120472

    const v13, 0x7f120472

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047d

    const v13, 0x7f12047d

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047c

    const v13, 0x7f12047c

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12047b

    const v13, 0x7f12047b

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120478

    const v13, 0x7f120478

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120474

    const v13, 0x7f120474

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120477

    const v13, 0x7f120477

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120476

    const v13, 0x7f120476

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120475

    const v13, 0x7f120475

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120479

    const v13, 0x7f120479

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f08080e

    const v9, 0x7f1200a4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f120097

    const v12, 0x7f12048d

    const v13, 0x7f120499

    const v14, 0x7f12048e

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12009c

    const v13, 0x7f12048f

    const/4 v14, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f1200a3

    const v13, 0x7f12049c

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12009f

    const v13, 0x7f12049a

    const v14, 0x7f120490

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIIIIIZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080818

    const v7, 0x7f120104

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f080818

    const v9, 0x7f120104

    const v10, 0x7f12007e

    const v12, 0x7f12047f

    const v13, 0x7f12048b

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12007f

    const v13, 0x7f12048c

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080811

    const v7, 0x7f120105

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_LIVE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_LIVE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080827

    const v7, 0x7f120133

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f080827

    const v9, 0x7f120133

    const v10, 0x7f12007e

    const v12, 0x7f1204af

    const v13, 0x7f12048b

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f12007f

    const v13, 0x7f12048c

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080814

    const v7, 0x7f120145

    invoke-direct {v2, v3, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f080814

    const v9, 0x7f120145

    const v10, 0x7f12007e

    const v12, 0x7f120145

    const v13, 0x7f12048b

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120146

    const v10, 0x7f12007f

    const v12, 0x7f120146

    const v13, 0x7f12007f

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080817

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f080817

    const v9, 0x7f120124

    const v10, 0x7f1204d7

    const v12, 0x7f120147

    const v13, 0x7f1204d7

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v10, 0x7f1204dc

    const v13, 0x7f1204dc

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080817

    const v8, 0x7f120109

    const v9, 0x7f1204d7

    const/4 v10, 0x0

    const v11, 0x7f120147

    const v12, 0x7f1204d7

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f1204dc

    const v12, 0x7f1204dc

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f120124

    const v9, 0x7f1204d7

    const v12, 0x7f1204d7

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SLOW_MOTION_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080817

    const v8, 0x7f120124

    const v9, 0x7f1204dc

    const/4 v10, 0x0

    const v11, 0x7f120147

    const v12, 0x7f1204dc

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v4, 0x7f120004

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_FHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v6, 0x7f1204d7

    invoke-direct {v2, v3, v4, v6}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_SLOW_MOTION_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_UHD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v6, 0x7f1204dc

    invoke-direct {v2, v3, v4, v6}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080768

    const v4, 0x7f12011a

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f12011b

    const v4, 0x7f080819

    invoke-direct {v2, v4, v3, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080819

    const v8, 0x7f12011b

    const v9, 0x7f12007e

    const/4 v10, 0x0

    const v11, 0x7f120487

    const v12, 0x7f12048b

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007f

    const v12, 0x7f12048c

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f120122

    invoke-direct {v2, v4, v3, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_RAW:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v8, 0x7f120122

    const v11, 0x7f12038f

    const v12, 0x7f120391

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007e

    const v12, 0x7f120390

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f08070b

    const v4, 0x7f1201ca

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080822

    const v4, 0x7f12011c

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080822

    const v8, 0x7f12011c

    const v9, 0x7f12021e

    const v11, 0x7f120488

    const v12, 0x7f12021e

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12035a

    const v12, 0x7f12035a

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080820

    const v4, 0x7f120110

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f080820

    const v8, 0x7f120110

    const v9, 0x7f12007e

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007f

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f08081a

    const v4, 0x7f12014d

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_SINGLE_FILE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f08081a

    const v8, 0x7f12014d

    const v9, 0x7f120077

    const v11, 0x7f120489

    const v12, 0x7f120077

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MULTI_FILE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120076

    const v12, 0x7f120076

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f08081b

    const v4, 0x7f12011d

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_PIP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v7, 0x7f08081b

    const v8, 0x7f12011d

    const v9, 0x7f120078

    const v11, 0x7f12048a

    const v12, 0x7f120078

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SPLIT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f12007a

    const v12, 0x7f12007a

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SINGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v9, 0x7f120079

    const v12, 0x7f120079

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v3, 0x7f080810

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_PIP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v5, 0x7f120078

    const/4 v6, 0x0

    const v7, 0x7f12048a

    const v8, 0x7f120078

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_SPLIT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;

    const v5, 0x7f12007a

    const v8, 0x7f12007a

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$QuickSettingResourceIdSet;-><init>(IIIIII)V

    invoke-virtual {v0, v1, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
