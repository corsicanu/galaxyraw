.class Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;
.super Ljava/lang/Object;
.source "NlgIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;
    }
.end annotation


# static fields
.field static final ALREADY_SET_NO:I = 0xe

.field static final ALREADY_SET_YES:I = 0xd

.field static final AVAILABLE_NO:I = 0xc

.field static final AVAILABLE_YES:I = 0xb

.field static final EXIST_NO:I = 0x8

.field static final EXIST_YES:I = 0x7

.field static final MATCH_NO:I = 0xf

.field static final NLG_ERROR_ALREADY_SET:I = 0x2

.field static final NLG_ERROR_CAMERA_TYPE_MISMATCH:I = 0x4

.field static final NLG_ERROR_CANNOT_EXECUTE_WITH_CURRENT_MODE:I = 0x7

.field static final NLG_ERROR_CANNOT_PROCESS_BY_OTHER_SETTING:I = 0x8

.field static final NLG_ERROR_CANNOT_USE_FLASH:I = 0xb

.field static final NLG_ERROR_INVALID_PARAMETER:I = 0x6

.field static final NLG_ERROR_NEED_TO_SHOW_EDIT_MODE:I = 0x5

.field static final NLG_ERROR_NONE:I = 0x0

.field static final NLG_ERROR_NOT_IN_CURRENT_LIST:I = 0x3

.field static final NLG_ERROR_NOT_SUPPORT_THIS_FEATURE:I = 0xa

.field static final NLG_ERROR_NO_PARAMETER:I = 0x1

.field static final NLG_ERROR_OUT_OF_RANGE_PARAMETER:I = 0x9

.field static final NLG_NORMAL_RESULT:I = 0x64

.field private static final NLG_STRING_ALREADY_SET:Ljava/lang/String; = "AlreadySet"

.field private static final NLG_STRING_AVAILABLE:Ljava/lang/String; = "Available"

.field static final NLG_STRING_CURRENT_MODE:Ljava/lang/String; = "CurrentMode"

.field private static final NLG_STRING_EXIST:Ljava/lang/String; = "Exist"

.field private static final NLG_STRING_FRONT:Ljava/lang/String; = "front"

.field private static final NLG_STRING_MATCH:Ljava/lang/String; = "Match"

.field static final NLG_STRING_MODE:Ljava/lang/String; = "Mode"

.field private static final NLG_STRING_NO:Ljava/lang/String; = "no"

.field private static final NLG_STRING_OUT_OF_RANGE:Ljava/lang/String; = "OutOfRange"

.field private static final NLG_STRING_PICTURE:Ljava/lang/String; = "Picture"

.field private static final NLG_STRING_REAR:Ljava/lang/String; = "rear"

.field static final NLG_STRING_SETTING_VALUE:Ljava/lang/String; = "SettingValue"

.field static final NLG_STRING_SHOOTING_PICTURE:Ljava/lang/String; = "ShootingPicture"

.field static final NLG_STRING_SHOOTING_VIDEO:Ljava/lang/String; = "ShootingVideo"

.field private static final NLG_STRING_SHOW:Ljava/lang/String; = "Show"

.field private static final NLG_STRING_SUPPORT:Ljava/lang/String; = "Support"

.field private static final NLG_STRING_TYPE:Ljava/lang/String; = "Type"

.field private static final NLG_STRING_VALID:Ljava/lang/String; = "Valid"

.field private static final NLG_STRING_VALUE:Ljava/lang/String; = "Value"

.field private static final NLG_STRING_VIDEO:Ljava/lang/String; = "Video"

.field private static final NLG_STRING_YES:Ljava/lang/String; = "yes"

.field static final NLG_TYPE_CHANGE_SHOOTING_MODE:I = 0x1

.field static final NLG_TYPE_COMMON_SCREEN_PARAM_BY_ALREADY_SET_SUCCESS_TYPE:I = 0x2

.field static final NLG_TYPE_COMMON_SCREEN_PARAM_BY_AVAILABLE_SUCCESS_TYPE:I = 0x3

.field static final NLG_TYPE_EXECUTE_WITH_CURRENT_MODE:I = 0x5

.field static final NLG_TYPE_SHOOTING_SELECT:I = 0x6

.field static final NLG_TYPE_SWITCH_CAMERA:I = 0x4

.field static final NLG_TYPE_UNKNOWN:I = 0x0

.field static final OUT_OF_RANGE_NO:I = 0x11

.field static final OUT_OF_RANGE_YES:I = 0x10

.field static final SHOW_NO:I = 0x4

.field static final SHOW_YES:I = 0x3

.field static final SUPPORT_NO:I = 0x12

.field static final TYPE_PICTURE:I = 0x5

.field static final TYPE_VIDEO:I = 0x6

.field static final VALID_NO:I = 0xa

.field static final VALID_YES:I = 0x9

.field static final VALUE_FRONT:I = 0x1

.field static final VALUE_REAR:I = 0x2

.field private static mNlgParamAttrDepot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;",
            ">;"
        }
    .end annotation
.end field

.field static final mNlgTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->mNlgTypeMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->mNlgParamAttrDepot:Landroid/util/SparseArray;

    const/4 v0, 0x1

    const-string v1, "Value"

    const-string v2, "front"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v2, "rear"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "Show"

    const-string v2, "yes"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v3, "no"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const-string v1, "Type"

    const-string v4, "Picture"

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    const-string v4, "Video"

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    const-string v1, "Exist"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    const-string v1, "Valid"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    const-string v1, "Available"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    const-string v1, "AlreadySet"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    const-string v1, "Match"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    const-string v1, "OutOfRange"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    const-string v1, "Support"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->add(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nlgId",
            "attrName",
            "attrValue"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->mNlgParamAttrDepot:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static get(I)Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->mNlgParamAttrDepot:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap$ParamAttr;

    return-object p0
.end method

.method public static getType(I)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/NlgIdMap;->mNlgTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
