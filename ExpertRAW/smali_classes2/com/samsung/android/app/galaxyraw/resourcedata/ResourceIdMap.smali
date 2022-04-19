.class public Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;
.super Ljava/lang/Object;
.source "ResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;,
        Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;
    }
.end annotation


# static fields
.field private static final mResourceIdMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->initializeMap()Ljava/util/EnumMap;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->mResourceIdMap:Ljava/util/EnumMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->mResourceIdMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

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

.method public static get(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->mResourceIdMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    const-string v0, "Cannot find resource IDs"

    invoke-direct {p0, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initializeMap()Ljava/util/EnumMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v3, 0x7f080649

    const v4, 0x7f120370

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SWITCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080629

    const v7, 0x7f12045b

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120105

    invoke-direct {v2, v5, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_CHEEK:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v7, 0x7f0805ec

    const v8, 0x7f1201d1

    invoke-direct {v2, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_CHIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f0805ed

    const v10, 0x7f1201ce

    invoke-direct {v2, v9, v10, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f0805ee

    const v10, 0x7f1201cf

    invoke-direct {v2, v9, v10, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_NOSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f0805f0

    const v10, 0x7f1201d4

    invoke-direct {v2, v9, v10, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f0805ef

    const v10, 0x7f1201d2

    invoke-direct {v2, v9, v10, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SLIM_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f0805f1

    const v10, 0x7f1201d9

    invoke-direct {v2, v9, v10, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f0805f2

    const v10, 0x7f1201cd

    invoke-direct {v2, v9, v10, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f12046f

    invoke-direct {v2, v5, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f0805fe

    const v10, 0x7f1201d6

    const v11, 0x7f1201d5

    invoke-direct {v2, v9, v10, v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_SMART:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f0805f3

    const v12, 0x7f1201cc

    const v13, 0x7f1201cb

    invoke-direct {v2, v11, v12, v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f0805ff

    const v12, 0x7f1201d8

    const v13, 0x7f1201d7

    invoke-direct {v2, v11, v12, v13}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    const v2, 0x7f1201e3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v13, v5, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f1201e8

    invoke-direct {v13, v9, v10, v14}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f1201e9

    invoke-direct {v13, v11, v12, v14}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v13, v5, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805eb

    const v15, 0x7f1201ec

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HEAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e5

    const v15, 0x7f1201e4

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e9

    const v15, 0x7f1201ea

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WAIST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805ea

    const v15, 0x7f1201eb

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e6

    const v15, 0x7f1201e5

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e7

    const v15, 0x7f1201e7

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e8

    const v15, 0x7f1201e6

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v13, v5, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f1201e8

    invoke-direct {v13, v9, v10, v14}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f1201e9

    invoke-direct {v13, v11, v12, v14}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v13, v5, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805eb

    const v15, 0x7f1201ec

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HEAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e5

    const v15, 0x7f1201e4

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e9

    const v15, 0x7f1201ea

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WAIST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805ea

    const v15, 0x7f1201eb

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e6

    const v15, 0x7f1201e5

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e7

    const v15, 0x7f1201e7

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f0805e8

    const v15, 0x7f1201e6

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v13, v5, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v14, 0x7f080811

    const v15, 0x7f120291

    invoke-direct {v13, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1201d0

    invoke-direct {v13, v14, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v13, 0x7f1201d3

    invoke-direct {v4, v14, v13, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v4, v14, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v4, v5, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v4, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v13, 0x7f1201d0

    invoke-direct {v4, v14, v13, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v13, 0x7f1201d3

    invoke-direct {v4, v14, v13, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v4, v14, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v5, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1201d0

    invoke-direct {v2, v14, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1201d3

    invoke-direct {v2, v14, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v5, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v14, v15, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1201d0

    invoke-direct {v2, v14, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1201d3

    invoke-direct {v2, v14, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v5, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHEEK:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f0805ed

    const v6, 0x7f1201ce

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f0805ee

    const v6, 0x7f1201cf

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_NOSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f0805f0

    const v6, 0x7f1201d4

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f0805ef

    const v6, 0x7f1201d2

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SLIM_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f0805f1

    const v6, 0x7f1201d9

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f0805f2

    const v6, 0x7f1201cd

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12046f

    invoke-direct {v2, v5, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1201d5

    invoke-direct {v2, v9, v10, v4}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_SMART:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f0805f3

    const v6, 0x7f1201cc

    const v7, 0x7f1201cb

    invoke-direct {v2, v4, v6, v7}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1201d7

    invoke-direct {v2, v11, v12, v4}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08097c

    const v6, 0x7f1201f1

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v7, 0x7f08097b

    const v8, 0x7f1201f0

    invoke-direct {v2, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v9, 0x7f08097a

    const v10, 0x7f1201ef

    invoke-direct {v2, v9, v10, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    const v2, 0x7f08097e

    const v9, 0x7f1201f2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f08097d

    invoke-direct {v10, v11, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v2, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080980

    const v12, 0x7f1201f4

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080981

    const v12, 0x7f1201f5

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080983

    const v12, 0x7f1201f7

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080982

    const v12, 0x7f1201f6

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080984

    const v12, 0x7f1201f8

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f08097a

    const v12, 0x7f1201ef

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f08097d

    invoke-direct {v10, v11, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v2, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080980

    const v12, 0x7f1201f4

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080981

    const v12, 0x7f1201f5

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080983

    const v12, 0x7f1201f7

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080982

    const v12, 0x7f1201f6

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080984

    const v12, 0x7f1201f8

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f08097a

    const v12, 0x7f1201ef

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f08097d

    invoke-direct {v10, v11, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v2, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080980

    const v12, 0x7f1201f4

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080981

    const v12, 0x7f1201f5

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080983

    const v12, 0x7f1201f7

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080982

    const v12, 0x7f1201f6

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080984

    const v12, 0x7f1201f8

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_ARTIFY_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080979

    const v12, 0x7f1201ee

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v2, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f08097f

    const v12, 0x7f1201f3

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_ARTIFY_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v11, 0x7f080979

    const v12, 0x7f1201ee

    invoke-direct {v10, v11, v12, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v10, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v7, v2, v9, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v7, 0x7f08097f

    const v8, 0x7f1201f3

    invoke-direct {v2, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v8, 0x0

    const v9, 0x7f1200da

    const v10, 0x7f1200cb

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(Ljava/util/Map;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f1200d5

    goto :goto_3

    :cond_4
    const v1, 0x7f1200e1

    :goto_3
    move v10, v1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807a2

    const v9, 0x7f1200db

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807b1

    const v9, 0x7f1200d8

    const v10, 0x7f1200d9

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807b0

    const v9, 0x7f1200d6

    const v10, 0x7f1200d7

    const v11, 0x7f0807fa

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807b7

    const v9, 0x7f1200d1

    const v10, 0x7f1200df

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807c2

    const v9, 0x7f1200e4

    const v10, 0x7f1200e5

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f080794

    const v9, 0x7f1200cf

    const v10, 0x7f1200d0

    const v11, 0x7f0807f7

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f08079a

    const v9, 0x7f1200d2

    const v10, 0x7f1200d3

    const v11, 0x7f0807f8

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807a2

    const v9, 0x7f1200db

    const v10, 0x7f1200d5

    const v11, 0x7f0807f9

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807c3

    const v9, 0x7f1200e8

    const v10, 0x7f1200e7

    const v11, 0x7f0807fc

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v8, 0x0

    const v9, 0x7f1200e9

    const v10, 0x7f1200ea

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807a3

    const v9, 0x7f1200dc

    const v10, 0x7f1200d4

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v8, 0x0

    const v9, 0x7f120332

    const v10, 0x7f120332

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f080790

    const v9, 0x7f1200cc

    const v10, 0x7f1200cd

    const v11, 0x7f0807f6

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807c1

    const v9, 0x7f1200e2

    const v10, 0x7f1200e3

    const v11, 0x7f0807fb

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f0807b8

    const v9, 0x7f1200dd

    const v10, 0x7f1200de

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f080791

    const v9, 0x7f1200ca

    const v10, 0x7f1200ca

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const v8, 0x7f080790

    const v9, 0x7f1200ce

    const/4 v10, 0x0

    const v11, 0x7f0807f6

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v8, 0x0

    const v9, 0x7f1200e0

    const v10, 0x7f1200e0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESET_PRO_SETTINGS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f0806d4

    const v6, 0x7f120126

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1202c6

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120439

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1202a6

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1204e8

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12028e

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12013f

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const/high16 v4, 0x7f120000

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120015

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_64:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120017

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_80:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120019

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12000c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12000d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_160:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12000e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120010

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120011

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_320:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120012

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_400:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120014

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120016

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_640:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120018

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_800:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_1600:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12000f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_3200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120013

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120001

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a5

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b0

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200bb

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c4

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c5

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c6

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c7

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c8

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c9

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a6

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a7

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a8

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a9

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200aa

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ab

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ac

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ad

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ae

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200af

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b1

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b2

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_50000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b3

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_66667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b4

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_100000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b5

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b6

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_166667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b7

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b8

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_300000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b9

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ba

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200bc

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200bd

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200be

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200bf

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_10000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c0

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_15000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c1

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c2

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_30000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c3

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120020

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806ed

    const v7, 0x7f120021

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120022

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120023

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120024

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120025

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120026

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120027

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120028

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120029

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806ec

    const v7, 0x7f12002d

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120030

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120031

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120032

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120033

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120034

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120035

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120036

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120037

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120038

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120039

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806eb

    const v7, 0x7f12003c

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120040

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120041

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120042

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120043

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120044

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120045

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806ea

    const v7, 0x7f120046

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120047

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120048

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120049

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120050

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120051

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120052

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120053

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120054

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120055

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120056

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120057

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120058

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120059

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120060

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120061

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120062

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120063

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120064

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120065

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120066

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120067

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120068

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_10000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120003

    const v7, 0x7f120007

    invoke-direct {v2, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COLOR_TUNE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120002

    const v7, 0x7f120006

    invoke-direct {v2, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080869

    invoke-direct {v2, v6, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_CLOSE_UP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806b4

    const v7, 0x7f120074

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MANUAL_FOCUS_FAR_DISTANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806b2

    const v7, 0x7f120075

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080623

    invoke-direct {v2, v6, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_INCANDESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080627

    const v7, 0x7f12015a

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_FLUORESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080626

    const v7, 0x7f120159

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_DAYLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080625

    const v7, 0x7f120158

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_CLOUDY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080624

    const v7, 0x7f120157

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->WHITE_BALANCE_KELVIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080628

    const v7, 0x7f12015b

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120276

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120275

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120274

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120273

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120272

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120271

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120270

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12026f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12026e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12026d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12026c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12026b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12026a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120269

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120268

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120267

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120266

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120265

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120264

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120263

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120262

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120277

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120278

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120279

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12027a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12027b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12027c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12027d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12027e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12027f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120280

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120281

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120282

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120283

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120284

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120285

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120286

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120287

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120288

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120289

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12028a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_HIGHLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080860

    const v7, 0x7f1202bf

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_SHADOW:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080862

    const v7, 0x7f120436

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_CONTRAST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08085f

    const v7, 0x7f12023b

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_SATURATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080861

    const v7, 0x7f1203f3

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_TINT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080864

    const v7, 0x7f12046e

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_COLOR_TUNE_TEMPERATURE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080863

    const v7, 0x7f12046b

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_DEFAULT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08085a

    const v7, 0x7f1200f6

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_FRONT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08085b

    const v7, 0x7f1200f7

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_REAR_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08085c

    const v7, 0x7f1200f8

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_3_5_PI_HEADSET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_WIRED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08085e

    const v7, 0x7f1200fa

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_WIRED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08085d

    const v7, 0x7f1200f9

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_BLUETOOTH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080859

    const v7, 0x7f1200f4

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_INPUT_LEVEL_BLUETOOTH_MIX_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080858

    const v7, 0x7f1200f5

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SETTING_RESET:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806d4

    const v7, 0x7f120126

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08086d

    const v7, 0x7f120111

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08086f

    const v7, 0x7f12012f

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08086b

    const v7, 0x7f120101

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08086e

    const v7, 0x7f120117

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080870

    const v7, 0x7f12013f

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f08086c

    const v7, 0x7f120106

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080870

    const v7, 0x7f12013f

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_VIDEO_AUDIO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806d5

    const v7, 0x7f120119

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ZOOM_ROCKER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080871

    const v7, 0x7f1204f0

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120015

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_64:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120017

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_80:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120019

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12000c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12000d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_160:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12000e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120010

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120011

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_320:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120012

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_400:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120014

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120016

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_640:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120018

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_800:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_1600:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12000f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_3200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120013

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120001

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a5

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b0

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200bb

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c4

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c5

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c6

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c7

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c8

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200c9

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a6

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a7

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a8

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200a9

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200aa

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ab

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ac

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ad

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200ae

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200af

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b1

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f1200b2

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120020

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806ed

    const v7, 0x7f120021

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120022

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120023

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120024

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120025

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120026

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120027

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120028

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120029

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806ec

    const v7, 0x7f12002d

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12002f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120030

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120031

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120032

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120033

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120034

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120035

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120036

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120037

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120038

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120039

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806eb

    const v7, 0x7f12003c

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12003f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120040

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120041

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120042

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120043

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120044

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120045

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806ea

    const v7, 0x7f120046

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120047

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120048

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120049

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12004f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120050

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120051

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120052

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120053

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120054

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120055

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120056

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120057

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120058

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120059

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005a

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005c

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005d

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005e

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12005f

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120060

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120061

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120062

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120063

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120064

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120065

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120066

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120067

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120068

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_10000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f12001b

    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120003

    const v7, 0x7f120007

    invoke-direct {v2, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_COLOR_TUNE_CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f120002

    const v7, 0x7f120006

    invoke-direct {v2, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080869

    invoke-direct {v2, v6, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_CLOSE_UP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806b4

    const v7, 0x7f120074

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_FAR_DISTANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f0806b2

    const v7, 0x7f120075

    invoke-direct {v2, v6, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v6, 0x7f080623

    invoke-direct {v2, v6, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_INCANDESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080627

    const v6, 0x7f12015a

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_FLUORESCENT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080626

    const v6, 0x7f120159

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_DAYLIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080625

    const v6, 0x7f120158

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_CLOUDY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080624

    const v6, 0x7f120157

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_WHITE_BALANCE_KELVIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080628

    const v6, 0x7f12015b

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120276

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120275

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120274

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120273

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120272

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120271

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120270

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12026f

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12026e

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12026d

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12026c

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12026b

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12026a

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120269

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120268

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120267

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120266

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120265

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120264

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120263

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120262

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120277

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120278

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120279

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12027a

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12027b

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12027c

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12027d

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12027e

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12027f

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120280

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120281

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120282

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120283

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120284

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120285

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120286

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120287

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120288

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120289

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f12028a

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v5, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120375

    invoke-direct {v2, v5, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FILTER_DOWNLOAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080664

    const v6, 0x7f120256

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v5, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MY_FILTER_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120375

    invoke-direct {v2, v5, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->CREATE_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080846

    const v6, 0x7f12023d

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080829

    const v6, 0x7f120370

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08099b

    const v6, 0x7f1204c0

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080996

    const v6, 0x7f1204e9

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08099a

    const v7, 0x7f12046a

    invoke-direct {v2, v4, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080998

    const v8, 0x7f1203fb

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080671

    const v8, 0x7f12015c

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080672

    const v8, 0x7f12015d

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080670

    const v8, 0x7f12015e

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080676

    const v8, 0x7f120162

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080679

    const v8, 0x7f120164

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08067b

    const v8, 0x7f120166

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08067d

    const v8, 0x7f120168

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08067e

    const v8, 0x7f120169

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080673

    const v8, 0x7f12015f

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080675

    const v8, 0x7f120161

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X20:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080677

    const v8, 0x7f120163

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08067a

    const v8, 0x7f120165

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08067c

    const v8, 0x7f120167

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM_SHORTCUT_X100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080674

    const v8, 0x7f120160

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080996

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f080997

    const v2, 0x7f12044d

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    if-nez v4, :cond_7

    const v1, 0x7f08099a

    move v2, v7

    :cond_7
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_NORMAL_X2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-direct {v8, v1, v2, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v4, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08099a

    invoke-direct {v2, v4, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08099b

    const v8, 0x7f1204c0

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080996

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080829

    const v8, 0x7f120370

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08099b

    const v8, 0x7f1204c0

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080996

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08099a

    invoke-direct {v2, v4, v7, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080998

    const v8, 0x7f1203fb

    invoke-direct {v2, v4, v8, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f08080c

    const v8, 0x7f1204c0

    const v9, 0x7f12045f

    invoke-direct {v2, v4, v8, v9}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080803

    const v8, 0x7f12045d

    invoke-direct {v2, v4, v6, v8}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080809

    const v8, 0x7f12045e

    invoke-direct {v2, v4, v7, v8}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080806

    const v7, 0x7f1203fb

    const v8, 0x7f12045c

    invoke-direct {v2, v4, v7, v8}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080992

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f080991

    const v6, 0x7f120368

    invoke-direct {v2, v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ACTION_BAR_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ACTION_BAR_BIXBY_VISION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1201db

    const v6, 0x7f1201da

    invoke-direct {v2, v3, v4, v6}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ACTION_BAR_AR_EMOJI_EXTERNAL_PACKAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f1200e6

    const v6, 0x7f1201a2

    invoke-direct {v2, v3, v4, v6}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v4, 0x7f120370

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v3, 0x7f0806ac

    const v4, 0x7f120252

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v3, 0x7f0806ad

    const v4, 0x7f120253

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v3, 0x7f0806ab

    const v4, 0x7f120250

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v3, 0x7f12024d

    invoke-direct {v2, v5, v3, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v3, 0x7f12024f

    invoke-direct {v2, v5, v3, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    const v3, 0x7f12024e

    invoke-direct {v2, v5, v3, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
