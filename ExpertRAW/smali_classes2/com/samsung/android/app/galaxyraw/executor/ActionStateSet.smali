.class public Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.super Ljava/lang/Object;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;,
        Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;,
        Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;,
        Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionStateSetMaker;,
        Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;,
        Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;
    }
.end annotation


# static fields
.field private static final INFO_NONE:Ljava/lang/String; = "None"

.field private static final INFO_SUPPORTED:Ljava/lang/String; = "Supported"

.field private static final RESULT_DESCRIPTION:Ljava/lang/String; = "resultDescription"

.field private static final RESULT_FALSE:Ljava/lang/String; = "false"

.field private static final RESULT_NLG_PARAM:Ljava/lang/String; = "resultNlgParam"

.field private static final RESULT_STATUS:Ljava/lang/String; = "resultStatus"

.field private static final RESULT_TRUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "ActionStateSet"

.field private static mActionResult:Lorg/json/JSONArray;

.field private static final mActionStateSetMakerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionStateSetMaker;",
            ">;"
        }
    .end annotation
.end field

.field private static mBixbyActionHandler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentActivity:Ljava/lang/String;

.field private static mIsPopupWindowEnabled:Z

.field private static mIsWaitForActivityStart:Z

.field private static mParamList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final mRatioStringDepot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mResolutionBackPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

.field private static mResolutionBackProVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

.field private static mResolutionBackVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

.field private static mResolutionFrontPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

.field private static mResolutionFrontVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

.field private static mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

.field private static final mResponseCallbackLock:Ljava/lang/Object;

.field private static mStateIDSet:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideoResolutionStringDepot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mRatioStringDepot:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallbackLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mVideoResolutionStringDepot:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mActionResult:Lorg/json/JSONArray;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mCurrentActivity:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mIsWaitForActivityStart:Z

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackProVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    sput-boolean v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mIsPopupWindowEnabled:Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mActionStateSetMakerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$4;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mBixbyActionHandler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionSingleTakeCaptureTime(Z)V

    return-void
.end method

.method static synthetic access$100(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionMultiRecordingType(Z)V

    return-void
.end method

.method static synthetic access$1000(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionMotionPhoto(Z)V

    return-void
.end method

.method static synthetic access$1100(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionSuperSteady(Z)V

    return-void
.end method

.method static synthetic access$1200(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionTimer(Z)V

    return-void
.end method

.method static synthetic access$1300(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionFlash(Z)V

    return-void
.end method

.method static synthetic access$1400(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionShowSetting(Z)V

    return-void
.end method

.method static synthetic access$1500(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionCamera(Z)V

    return-void
.end method

.method static synthetic access$1600(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionMode(Z)V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
    .locals 0

    sput-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    return-object p0
.end method

.method static synthetic access$1902(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionCheckInfo(Z)V

    return-void
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mCurrentActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->isQrScannerMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionCheckMode(Z)V

    return-void
.end method

.method static synthetic access$400(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionSetLocationTag(Z)V

    return-void
.end method

.method static synthetic access$500(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionGetLocationTag(Z)V

    return-void
.end method

.method static synthetic access$600(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionMyFilter(Z)V

    return-void
.end method

.method static synthetic access$700(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionAngle(Z)V

    return-void
.end method

.method static synthetic access$800(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionZoom(Z)V

    return-void
.end method

.method static synthetic access$900(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->actionResolution(Z)V

    return-void
.end method

.method private static actionAngle(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xce

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x9

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "ultrawide"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xda

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "wide"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_4
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionCamera(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    if-eqz p0, :cond_1

    const/16 v1, 0xce

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionCheckInfo(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_FLASH:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_TIMER:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "Supported"

    goto/16 :goto_0

    :cond_1
    const-string p0, "None"

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionList(ZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionList(ZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",16by9"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",9by16"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1, v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionList(ZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1, v1, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionList(ZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionList(ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",21by9"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",9by21"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hyperlapse:FHD,UHD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->sendResponse(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static actionCheckMode(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->checkArdoodlePackage(Landroid/content/Context;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getShootingModeList(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getShootingModeList(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getShootingModeList(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getMoreOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getShootingModeList(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "."

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "+Ver:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ActionStateSet"

    const-string v2, "Unable to get the camera version"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "+PERMISSION_DENIED:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHECK_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Live_focus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Portrait"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/4 v0, 0x0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->sendResponse(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static actionFlash(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xce

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "auto"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-array v0, v1, [Ljava/lang/Integer;

    aput-object v2, v0, v7

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "off"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v1, [Ljava/lang/Integer;

    aput-object v2, v0, v7

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_4
    new-array v0, v1, [Ljava/lang/Integer;

    aput-object v2, v0, v7

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionGetLocationTag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    const/16 p0, 0xfa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    const/16 p0, 0xce

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionMotionPhoto(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xce

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "off"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_2
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionMultiRecordingType(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xce

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0xa

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "pip"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xde

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "split"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xdf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_4
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionMyFilter(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "creatable"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    const/16 p0, 0xdb

    goto :goto_0

    :cond_0
    const/16 p0, 0xdc

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionResolution(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xce

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "max"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_2
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionSetLocationTag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    const/16 p0, 0xfb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionShowSetting(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    const/16 p0, 0x65

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionSingleTakeCaptureTime(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xce

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "max"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xe1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "min"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xe2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_4
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xe0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionSuperSteady(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xce

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "off"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xcf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_2
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionTimer(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xce

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "off"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0x12d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_2
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method private static actionZoom(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturable"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xce

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "max"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "min"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_4
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    const/16 v5, 0xd5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->makeActionStateSet(Ljava/util/List;)V

    return-void
.end method

.method static declared-synchronized clear()V
    .locals 4

    const-class v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized completeState()V
    .locals 3

    const-class v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;

    monitor-enter v0

    :try_start_0
    const-string v1, "ActionStateSet"

    const-string v2, "completeState"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    :try_start_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static findParam(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/16 v3, 0xca

    const-string v4, "String"

    const/4 v5, 0x0

    const-string v6, "Integer"

    if-eq p0, v3, :cond_c

    const/16 v3, 0xce

    const/4 v7, 0x1

    if-eq p0, v3, :cond_b

    const/16 v3, 0xe0

    if-eq p0, v3, :cond_9

    const/16 v3, 0x12c

    const-string v8, ""

    if-eq p0, v3, :cond_5

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getType(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v7, :cond_d

    sget-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    new-instance v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v3, v1, p0, v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v8, v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "_"

    const-string v3, " "

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    return-object v2

    :pswitch_0
    const/16 p0, 0xc

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p0, v1, v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0

    :pswitch_1
    const/16 p0, 0xb

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p0, v1, v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0

    :cond_5
    const/4 p0, 0x2

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v7, p0

    goto :goto_1

    :cond_6
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v7, 0x3

    :cond_7
    :goto_1
    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0

    :cond_9
    const/16 p0, 0xf

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_a

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p0, v1, v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0

    :cond_b
    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    const/4 p0, 0x6

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v4, v6

    :cond_d
    sget-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_e

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, v2, p0, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object v0

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static declared-synchronized getFirstActionState()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;
    .locals 3

    const-class v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getPictureResolutionFullString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getPictureResolutionString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionSubString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPictureResolutionString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%dMP"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "%.1fMP"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mRatioStringDepot:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResolutionBackPictureParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    return-object v0
.end method

.method public static getResolutionBackProVideoParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackProVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    return-object v0
.end method

.method public static getResolutionBackVideoParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    return-object v0
.end method

.method public static getResolutionFrontPictureParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    return-object v0
.end method

.method public static getResolutionFrontVideoParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    return-object v0
.end method

.method private static getResolutionList(ZZZ)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isFront",
            "isPicture",
            "isPro"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableFrontPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;-><init>(I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;-><init>(I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;-><init>(I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;-><init>(I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackProVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    array-length v3, v1

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;-><init>(I)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v4, "_"

    if-eqz p1, :cond_6

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getPictureResolutionFullString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v5

    if-eqz p0, :cond_5

    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2300(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[I

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v7

    aput v7, v6, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2400(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v2

    aput-object v4, v6, v3

    goto/16 :goto_2

    :cond_5
    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2300(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[I

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v7

    aput v7, v6, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackPictureParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2400(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v2

    aput-object v4, v6, v3

    goto :goto_2

    :cond_6
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getVideoResolutionFullString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v5

    if-eqz p0, :cond_7

    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2300(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[I

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v7

    aput v7, v6, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionFrontVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2400(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v2

    aput-object v4, v6, v3

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackProVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2300(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[I

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v7

    aput v7, v6, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackProVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2400(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v2

    aput-object v4, v6, v3

    goto :goto_2

    :cond_8
    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2300(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[I

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v7

    aput v7, v6, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResolutionBackVideoParams:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->access$2400(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v2

    aput-object v4, v6, v3

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResolutionParams(IZZ)Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "isFront",
            "isRecordMode"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionFrontVideoParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionFrontPictureParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    const/16 p1, 0x24

    if-ne p1, p0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionBackProVideoParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionBackVideoParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionBackPictureParams()Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getResolutionSubString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%dx%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShootingModeList(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeOrder",
            "isFront"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v2}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v6, p0, v5

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    if-eqz v8, :cond_6

    aget-object v8, v6, v4

    if-eqz v8, :cond_6

    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v8

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mIsPopupWindowEnabled:Z

    if-nez v8, :cond_1

    sget-object v8, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mCurrentActivity:Ljava/lang/String;

    if-nez v8, :cond_2

    sget-object v8, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    aget-object v8, v6, v4

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-eq v8, v9, :cond_2

    aget-object v8, v6, v4

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x3

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "_"

    const-string v9, " "

    const/4 v10, 0x1

    if-eqz p1, :cond_4

    aget-object v11, v6, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/4 v11, 0x2

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVideoResolutionFullString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getVideoResolutionString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->getResolutionSubString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVideoResolutionString(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mVideoResolutionStringDepot:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mRatioStringDepot:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not matching, invalid resolution id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ActionStateSet"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized init(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actionId",
            "paramsBundle"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;

    monitor-enter v0

    :try_start_0
    const-string v1, "ActionStateSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, actionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, "params"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    sput-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string p1, "ActionStateSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParamList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mActionStateSetMakerMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionStateSetMaker;

    if-eqz p1, :cond_6

    const-string v1, ".capture"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, ".create"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionStateSetMaker;->update(Z)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHECK_MODE:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->ACTION_CHECK_INFO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    monitor-exit v0

    return v3

    :cond_4
    :goto_2
    monitor-exit v0

    return v2

    :cond_5
    :try_start_1
    const-string p1, "ActionStateSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown actionId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "ActionStateSet"

    const-string v1, "initialize ActionStateSet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->values()[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mBixbyActionHandler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static isChangeActivityState(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/16 v0, 0x190

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static isLastState()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isQrScannerMode()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mParamList:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static launchCameraActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "previousModeFacing",
            "previousMode"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.galaxyraw.Camera"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "from-bixby"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "camerafacing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "previous_mode"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isSecure"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->isQrScannerMode()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "is_qr_mode"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ActionStateSet"

    const-string p1, "Activity is not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static makeActionStateSet(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mCurrentActivity:Ljava/lang/String;

    const-string v2, " "

    if-eqz v1, :cond_0

    const/16 v3, 0x65

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    const/4 v4, 0x0

    const/16 v5, 0x190

    invoke-direct {v3, v5, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;-><init>(ILjava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mStateIDSet:Ljava/util/Queue;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->findParam(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ActionState;-><init>(ILjava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeActionStateSet : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActionStateSet"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static resetPopupWindowEnable()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->setPopupWindowEnable(Z)V

    return-void
.end method

.method static declared-synchronized sendResponse(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "nlgParam",
            "description"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    if-eqz v2, :cond_3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mActionResult:Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    const-string p0, "resultStatus"

    const-string p1, "true"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    const-string p0, "resultDescription"

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p0, "resultStatus"

    const-string v3, "false"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string p0, "resultNlgParam"

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p0, "resultDescription"

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "ActionStateSet"

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mActionResult:Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mActionResult:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V

    const-string p0, "ActionStateSet"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ActionResult : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mActionResult:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mResponseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setCurrentActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "currentActivity"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentActivity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionStateSet"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mCurrentActivity:Ljava/lang/String;

    sget-boolean p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mIsWaitForActivityStart:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mIsWaitForActivityStart:Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "camera.action.EXECUTE_BIXBY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, "setCurrentActivity send bixby broadcast"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static setIsWaitForActivityStart(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isWaitForActivityStart"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsWaitForActivityStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionStateSet"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mIsWaitForActivityStart:Z

    return-void
.end method

.method public static setPopupWindowEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mIsPopupWindowEnabled:Z

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPopupWindowEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionStateSet"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->mIsPopupWindowEnabled:Z

    :cond_0
    return-void
.end method
